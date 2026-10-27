.class public final Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;
.super Ljava/lang/Object;
.source "IRadioIndication.java"

# interfaces
.implements Landroid/hardware/radio/V1_1/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_1/IRadioIndication;
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

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 234
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public blacklist callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 552
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 553
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 555
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 556
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->writeToParcel(Landroid/os/HwParcel;)V

    .line 558
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 560
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x12

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 561
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 563
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 564
    nop

    .line 565
    return-void

    .line 563
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 564
    throw p2
.end method

.method public blacklist callStateChanged(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 283
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 286
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 288
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 289
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_21

    .line 291
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 292
    nop

    .line 293
    return-void

    .line 291
    :catchall_21
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 292
    throw v0
.end method

.method public blacklist carrierInfoForImsiEncryption(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1023
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1024
    const-string v1, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1027
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1029
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2e

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1030
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1032
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1033
    nop

    .line 1034
    return-void

    .line 1032
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1033
    throw v0
.end method

.method public blacklist cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V
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
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 672
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->writeToParcel(Landroid/os/HwParcel;)V

    .line 674
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 676
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 677
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 679
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 680
    nop

    .line 681
    return-void

    .line 679
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 680
    throw p2
.end method

.method public blacklist cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 703
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 704
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 706
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->writeToParcel(Landroid/os/HwParcel;)V

    .line 708
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 710
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 711
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 713
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 714
    nop

    .line 715
    return-void

    .line 713
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 714
    throw p2
.end method

.method public blacklist cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 586
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 587
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 589
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 591
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 593
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x14

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 594
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 596
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 597
    nop

    .line 598
    return-void

    .line 596
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 597
    throw p2
.end method

.method public blacklist cdmaOtaProvisionStatus(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 686
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 687
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 689
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 691
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 693
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 694
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 696
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 697
    nop

    .line 698
    return-void

    .line 696
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 697
    throw p2
.end method

.method public blacklist cdmaPrlChanged(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 771
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 773
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 775
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 777
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1f

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 778
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 780
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 781
    nop

    .line 782
    return-void

    .line 780
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 781
    throw p2
.end method

.method public blacklist cdmaRuimSmsStorageFull(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 620
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 621
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 624
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 626
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x16

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 627
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 629
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 630
    nop

    .line 631
    return-void

    .line 629
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 630
    throw v0
.end method

.method public blacklist cdmaSubscriptionSourceChanged(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 753
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 754
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 756
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 758
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 760
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 761
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 763
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 764
    nop

    .line 765
    return-void

    .line 763
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 764
    throw p2
.end method

.method public blacklist cellInfoList(ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 836
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 837
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 838
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 839
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/CellInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 841
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 843
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x23

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 844
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 846
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 847
    nop

    .line 848
    return-void

    .line 846
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 847
    throw p2
.end method

.method public blacklist currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 402
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 404
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SignalStrength;->writeToParcel(Landroid/os/HwParcel;)V

    .line 406
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 408
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 409
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 411
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 412
    nop

    .line 413
    return-void

    .line 411
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 412
    throw p2
.end method

.method public blacklist dataCallListChanged(ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 418
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 419
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 421
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 423
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 425
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 426
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 428
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 429
    nop

    .line 430
    return-void

    .line 428
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 429
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

    .line 1093
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1094
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 1096
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1098
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1100
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v1, 0xf444247

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1101
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1102
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 1104
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1105
    nop

    .line 1106
    return-void

    .line 1104
    :catchall_29
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1105
    throw p2
.end method

.method public blacklist enterEmergencyCallbackMode(I)V
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
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 657
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 659
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x18

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

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 253
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

    .line 787
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 788
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 789
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 791
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 793
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x20

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 794
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 796
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 797
    nop

    .line 798
    return-void

    .line 796
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 797
    throw v0
.end method

.method public blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
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
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1208
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1210
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1211
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1212
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1214
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1215
    invoke-virtual {v0, v1}, Landroid/internal/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 1216
    nop

    .line 1218
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1216
    return-object v0

    .line 1218
    :catchall_2b
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1219
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

    .line 1130
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1131
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1133
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 1135
    :try_start_f
    iget-object v1, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v1, v3, v0, v2, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1136
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1137
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    const-wide/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 1143
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 1144
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 1145
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    .line 1144
    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 1148
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1149
    nop

    :goto_41
    if-ge v10, v11, :cond_54

    .line 1150
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 1152
    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    .line 1153
    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1154
    nop

    .line 1156
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_59

    .line 1149
    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 1160
    :cond_54
    nop

    .line 1162
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 1160
    return-object v0

    .line 1162
    :catchall_59
    move-exception v0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 1163
    throw v0
.end method

.method public blacklist hardwareConfigChanged(ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 903
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 904
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 906
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 908
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 910
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x27

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 911
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 913
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 914
    nop

    .line 915
    return-void

    .line 913
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 914
    throw p2
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 258
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IHwBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist imsNetworkStateChanged(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 853
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 854
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 857
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 859
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x24

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 860
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 862
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 863
    nop

    .line 864
    return-void

    .line 862
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 863
    throw v0
.end method

.method public blacklist indicateRingbackTone(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 720
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 721
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 723
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 725
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 727
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 728
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 730
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 731
    nop

    .line 732
    return-void

    .line 730
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 731
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
    iget-object v2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1080
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1081
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1083
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

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

.method public blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1111
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1112
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1114
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1116
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1117
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1118
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1120
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 1121
    nop

    .line 1123
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1121
    return-object v0

    .line 1123
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1124
    throw v0
.end method

.method public blacklist keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V
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
    const-string v1, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1059
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1061
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1063
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x30

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1064
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1066
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1067
    nop

    .line 1068
    return-void

    .line 1066
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1067
    throw p2
.end method

.method public blacklist lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 971
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 972
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 973
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 974
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/LceDataInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 976
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 978
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 979
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 981
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 982
    nop

    .line 983
    return-void

    .line 981
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 982
    throw p2
.end method

.method public blacklist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1184
    iget-object v0, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p1

    return p1
.end method

.method public blacklist modemReset(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1005
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1006
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1008
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1010
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1012
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2d

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1013
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1015
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1016
    nop

    .line 1017
    return-void

    .line 1015
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1016
    throw p2
.end method

.method public blacklist networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1039
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1040
    const-string v1, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1042
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_1/NetworkScanResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1044
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1046
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2f

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1047
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1049
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1050
    nop

    .line 1051
    return-void

    .line 1049
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1050
    throw p2
.end method

.method public blacklist networkStateChanged(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 299
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 302
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 304
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 305
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_21

    .line 307
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 308
    nop

    .line 309
    return-void

    .line 307
    :catchall_21
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 308
    throw v0
.end method

.method public blacklist newBroadcastSms(ILjava/util/ArrayList;)V
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

    .line 603
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 604
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 606
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 608
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 610
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x15

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 611
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 613
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 614
    nop

    .line 615
    return-void

    .line 613
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 614
    throw p2
.end method

.method public blacklist newSms(ILjava/util/ArrayList;)V
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

    .line 314
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 315
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 317
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 319
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 321
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 322
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 324
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 325
    nop

    .line 326
    return-void

    .line 324
    :catchall_24
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 325
    throw p2
.end method

.method public blacklist newSmsOnSim(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 349
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 351
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 353
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 355
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 356
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 358
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 359
    nop

    .line 360
    return-void

    .line 358
    :catchall_24
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 359
    throw p2
.end method

.method public blacklist newSmsStatusReport(ILjava/util/ArrayList;)V
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

    .line 331
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 332
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 334
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 336
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 338
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 339
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 341
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 342
    nop

    .line 343
    return-void

    .line 341
    :catchall_24
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 342
    throw p2
.end method

.method public blacklist nitzTimeReceived(ILjava/lang/String;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 384
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 386
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p3, p4}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 389
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 391
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x8

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 392
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 394
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 395
    nop

    .line 396
    return-void

    .line 394
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 395
    throw p2
.end method

.method public blacklist notifySyspropsChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1225
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1226
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1228
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1230
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1231
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 1233
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1234
    nop

    .line 1235
    return-void

    .line 1233
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1234
    throw v0
.end method

.method public blacklist onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 937
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 938
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 940
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 942
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 944
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x29

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 945
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 947
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 948
    nop

    .line 949
    return-void

    .line 947
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 948
    throw p2
.end method

.method public blacklist onUssd(IILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 366
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 368
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 369
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 371
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 373
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x7

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 374
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_27

    .line 376
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 377
    nop

    .line 378
    return-void

    .line 376
    :catchall_27
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 377
    throw p2
.end method

.method public blacklist pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 988
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 989
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 990
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 991
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/PcoDataInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 993
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 995
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 996
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 998
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 999
    nop

    .line 1000
    return-void

    .line 998
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 999
    throw p2
.end method

.method public blacklist ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1189
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1190
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1192
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1194
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1195
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1196
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 1198
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1199
    nop

    .line 1200
    return-void

    .line 1198
    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1199
    throw v0
.end method

.method public blacklist radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V
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
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 922
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 923
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/RadioCapability;->writeToParcel(Landroid/os/HwParcel;)V

    .line 925
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 927
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x28

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 928
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 930
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 931
    nop

    .line 932
    return-void

    .line 930
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 931
    throw p2
.end method

.method public blacklist radioStateChanged(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 266
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 268
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 270
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 272
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x1

    invoke-interface {p2, v1, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 273
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_23

    .line 275
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 276
    nop

    .line 277
    return-void

    .line 275
    :catchall_23
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 276
    throw p2
.end method

.method public blacklist resendIncallMute(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 737
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 738
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 739
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 741
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 743
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 744
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 746
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 747
    nop

    .line 748
    return-void

    .line 746
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 747
    throw v0
.end method

.method public blacklist restrictedStateChanged(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 637
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 639
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 641
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 643
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x17

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 644
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 646
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 647
    nop

    .line 648
    return-void

    .line 646
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 647
    throw p2
.end method

.method public blacklist rilConnected(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 803
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 804
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 807
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 809
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x21

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 810
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 812
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 813
    nop

    .line 814
    return-void

    .line 812
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 813
    throw v0
.end method

.method public blacklist setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1169
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1170
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1172
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1174
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1175
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 1177
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1178
    nop

    .line 1179
    return-void

    .line 1177
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1178
    throw v0
.end method

.method public blacklist simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 535
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 536
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 538
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SimRefreshResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 540
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 542
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 543
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 545
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 546
    nop

    .line 547
    return-void

    .line 545
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 546
    throw p2
.end method

.method public blacklist simSmsStorageFull(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 519
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 520
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 523
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 525
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 526
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 528
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 529
    nop

    .line 530
    return-void

    .line 528
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 529
    throw v0
.end method

.method public blacklist simStatusChanged(I)V
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
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 574
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 576
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x13

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 577
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 579
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 580
    nop

    .line 581
    return-void

    .line 579
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 580
    throw v0
.end method

.method public blacklist srvccStateNotify(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 886
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 887
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 889
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 891
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 893
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x26

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 894
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 896
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 897
    nop

    .line 898
    return-void

    .line 896
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 897
    throw p2
.end method

.method public blacklist stkCallControlAlphaNotify(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 954
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 955
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 956
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 957
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 959
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 961
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 962
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 964
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 965
    nop

    .line 966
    return-void

    .line 964
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 965
    throw p2
.end method

.method public blacklist stkCallSetup(IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 503
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 505
    invoke-virtual {v0, p2, p3}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 507
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 509
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0xf

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 510
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 512
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 513
    nop

    .line 514
    return-void

    .line 512
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 513
    throw p2
.end method

.method public blacklist stkEventNotify(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 485
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 486
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 488
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 490
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 492
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xe

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 493
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 495
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 496
    nop

    .line 497
    return-void

    .line 495
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 496
    throw p2
.end method

.method public blacklist stkProactiveCommand(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 469
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 471
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 473
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 475
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xd

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 476
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 478
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 479
    nop

    .line 480
    return-void

    .line 478
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 479
    throw p2
.end method

.method public blacklist stkSessionEnd(I)V
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
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 456
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 458
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 459
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 461
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 462
    nop

    .line 463
    return-void

    .line 461
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 462
    throw v0
.end method

.method public blacklist subscriptionStatusChanged(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 869
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 870
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 871
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 872
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 874
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 876
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x25

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 877
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 879
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 880
    nop

    .line 881
    return-void

    .line 879
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 880
    throw p2
.end method

.method public blacklist suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 436
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 438
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->writeToParcel(Landroid/os/HwParcel;)V

    .line 440
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 442
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 443
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 445
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 446
    nop

    .line 447
    return-void

    .line 445
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 446
    throw p2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 244
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->interfaceDescriptor()Ljava/lang/String;

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

    .line 245
    :catch_18
    move-exception v0

    .line 248
    const-string v0, "[class or subclass of android.hardware.radio@1.1::IRadioIndication]@Proxy"

    return-object v0
.end method

.method public blacklist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1240
    iget-object v0, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p1

    return p1
.end method

.method public blacklist voiceRadioTechChanged(II)V
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
    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 822
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 824
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 826
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_1/IRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x22

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 827
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 829
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 830
    nop

    .line 831
    return-void

    .line 829
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 830
    throw p2
.end method
