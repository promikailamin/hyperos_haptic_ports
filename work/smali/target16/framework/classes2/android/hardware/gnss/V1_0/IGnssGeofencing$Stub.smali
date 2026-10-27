.class public abstract Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;
.super Landroid/os/HwBinder;
.source "IGnssGeofencing.java"

# interfaces
.implements Landroid/hardware/gnss/V1_0/IGnssGeofencing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssGeofencing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 562
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 565
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

    .line 578
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 615
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 616
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 617
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 618
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 619
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

    .line 590
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
        -0x7t
        0xet
        0x4dt
        -0x24t
        0x65t
        0x27t
        0x6t
        0x29t
        -0x63t
        -0x72t
        0x3dt
        -0x75t
        -0x5ft
        -0x72t
        0x7t
        0x45t
        -0x3dt
        -0x46t
        -0x17t
        -0x41t
        0x4dt
        0x1bt
        -0x1at
        -0x43t
        0x6t
        -0x27t
        -0x3ft
        -0xbt
        0xet
        -0x38t
        -0x2et
        -0x76t
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

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnssGeofencing"

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

    .line 584
    const-string v0, "android.hardware.gnss@1.0::IGnssGeofencing"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 603
    const/4 p1, 0x1

    return p1
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 625
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 627
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    move-object/from16 v1, p2

    move-object/from16 v12, p3

    const-string v2, "android.hardware.gnss@1.0::IGnssGeofencing"

    const-string v3, "android.hidl.base@1.0::IBase"

    const/4 v13, 0x0

    sparse-switch p1, :sswitch_data_14e

    goto/16 :goto_14c

    .line 823
    :sswitch_e
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->notifySyspropsChanged()V

    .line 826
    goto/16 :goto_14c

    .line 812
    :sswitch_16
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 815
    invoke-virtual {v12, v13}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 816
    invoke-virtual {v0, v12}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 817
    invoke-virtual {v12}, Landroid/os/HwParcel;->send()V

    .line 818
    goto/16 :goto_14c

    .line 802
    :sswitch_28
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->ping()V

    .line 805
    invoke-virtual {v12, v13}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 806
    invoke-virtual {v12}, Landroid/os/HwParcel;->send()V

    .line 807
    goto/16 :goto_14c

    .line 797
    :sswitch_36
    goto/16 :goto_14c

    .line 789
    :sswitch_38
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->setHALInstrumentation()V

    .line 792
    goto/16 :goto_14c

    .line 755
    :sswitch_40
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 758
    invoke-virtual {v12, v13}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 760
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 762
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 763
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 764
    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 765
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 766
    nop

    :goto_67
    if-ge v13, v2, :cond_88

    .line 768
    mul-int/lit8 v4, v13, 0x20

    int-to-long v4, v4

    .line 769
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 771
    if-eqz v6, :cond_80

    array-length v7, v6

    const/16 v8, 0x20

    if-ne v7, v8, :cond_80

    .line 775
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 776
    nop

    .line 766
    add-int/lit8 v13, v13, 0x1

    goto :goto_67

    .line 772
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_88
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 781
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 783
    invoke-virtual {v12}, Landroid/os/HwParcel;->send()V

    .line 784
    goto/16 :goto_14c

    .line 744
    :sswitch_95
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 747
    invoke-virtual {v12, v13}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 748
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v12}, Landroid/os/HwParcel;->send()V

    .line 750
    goto/16 :goto_14c

    .line 732
    :sswitch_a7
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v1}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v2

    .line 735
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 736
    invoke-virtual {p0, v2, v1}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 737
    invoke-virtual {v12, v13}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 738
    invoke-virtual {v12}, Landroid/os/HwParcel;->send()V

    .line 739
    goto/16 :goto_14c

    .line 721
    :sswitch_bd
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 724
    invoke-virtual {v12, v13}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 725
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 726
    invoke-virtual {v12}, Landroid/os/HwParcel;->send()V

    .line 727
    goto/16 :goto_14c

    .line 710
    :sswitch_cf
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 713
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->removeGeofence(I)V

    .line 714
    invoke-virtual {v12, v13}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 715
    invoke-virtual {v12}, Landroid/os/HwParcel;->send()V

    .line 716
    goto :goto_14c

    .line 698
    :sswitch_e0
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 701
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 702
    invoke-virtual {p0, v2, v1}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->resumeGeofence(II)V

    .line 703
    invoke-virtual {v12, v13}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 704
    invoke-virtual {v12}, Landroid/os/HwParcel;->send()V

    .line 705
    goto :goto_14c

    .line 687
    :sswitch_f5
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 690
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->pauseGeofence(I)V

    .line 691
    invoke-virtual {v12, v13}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 692
    invoke-virtual {v12}, Landroid/os/HwParcel;->send()V

    .line 693
    goto :goto_14c

    .line 669
    :sswitch_106
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v2

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v4

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v6

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 677
    move-object/from16 v11, p2

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 678
    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 679
    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->addGeofence(IDDDIIII)V

    .line 680
    invoke-virtual {v12, v13}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 681
    invoke-virtual {v12}, Landroid/os/HwParcel;->send()V

    .line 682
    goto :goto_14c

    .line 658
    :sswitch_136
    move-object v11, v1

    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v11}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback;

    move-result-object v1

    .line 661
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->setCallback(Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback;)V

    .line 662
    invoke-virtual {v12, v13}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 663
    invoke-virtual {v12}, Landroid/os/HwParcel;->send()V

    .line 664
    nop

    .line 835
    :goto_14c
    return-void

    nop

    :sswitch_data_14e
    .sparse-switch
        0x1 -> :sswitch_136
        0x2 -> :sswitch_106
        0x3 -> :sswitch_f5
        0x4 -> :sswitch_e0
        0x5 -> :sswitch_cf
        0xf43484e -> :sswitch_bd
        0xf444247 -> :sswitch_a7
        0xf445343 -> :sswitch_95
        0xf485348 -> :sswitch_40
        0xf494e54 -> :sswitch_38
        0xf4c5444 -> :sswitch_36
        0xf504e47 -> :sswitch_28
        0xf524546 -> :sswitch_16
        0xf535953 -> :sswitch_e
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 609
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 637
    const-string v0, "android.hardware.gnss@1.0::IGnssGeofencing"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 638
    return-object p0

    .line 640
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

    .line 644
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->registerService(Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 599
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 631
    const/4 p1, 0x1

    return p1
.end method
