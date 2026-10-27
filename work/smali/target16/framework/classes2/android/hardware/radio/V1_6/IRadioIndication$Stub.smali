.class public abstract Landroid/hardware/radio/V1_6/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Landroid/hardware/radio/V1_6/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1771
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1774
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

    .line 1793
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1836
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1837
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1838
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1839
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1840
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1805
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_38

    new-array v3, v1, [B

    fill-array-data v3, :array_4c

    new-array v4, v1, [B

    fill-array-data v4, :array_60

    new-array v5, v1, [B

    fill-array-data v5, :array_74

    new-array v6, v1, [B

    fill-array-data v6, :array_88

    new-array v7, v1, [B

    fill-array-data v7, :array_9c

    new-array v8, v1, [B

    fill-array-data v8, :array_b0

    new-array v9, v1, [B

    fill-array-data v9, :array_c4

    filled-new-array/range {v2 .. v9}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_38
    .array-data 1
        0x71t
        0x57t
        -0x77t
        0x42t
        0x7at
        0x44t
        -0x34t
        0x78t
        -0x7t
        -0x2ft
        0x23t
        -0x50t
        -0x32t
        -0x47t
        -0x20t
        0x35t
        -0x1ct
        -0x54t
        0x2bt
        0x10t
        0x49t
        0x50t
        0x13t
        0x37t
        -0x3et
        0x3at
        0x51t
        0x2et
        -0x7bt
        -0x48t
        0x78t
        0x50t
    .end array-data

    :array_4c
    .array-data 1
        -0x4t
        -0x45t
        0x7t
        0x42t
        -0x58t
        -0x7et
        0x15t
        -0x12t
        0x7at
        0x6dt
        0x7ct
        -0x20t
        -0x7et
        0x5dt
        0x25t
        0x3et
        -0x4et
        -0x4bt
        0x3t
        -0x6ft
        -0x4t
        0x6ct
        -0x74t
        0x48t
        0x66t
        0x7ft
        -0x61t
        -0x29t
        -0xat
        -0x2ct
        0x54t
        -0x62t
    .end array-data

    :array_60
    .array-data 1
        0x33t
        -0x27t
        -0x1at
        -0x77t
        0x5ct
        -0x36t
        -0x68t
        -0x56t
        0x56t
        0x29t
        0x6bt
        -0x50t
        0x17t
        0x20t
        -0x2ft
        -0x75t
        -0x76t
        -0x33t
        0xet
        0x4dt
        -0x1ct
        -0x6at
        0xbt
        -0x15t
        0x71t
        0x2et
        0x63t
        -0x53t
        0x14t
        0x74t
        0x38t
        -0x5bt
    .end array-data

    :array_74
    .array-data 1
        -0x17t
        -0x30t
        -0xft
        0x1at
        0x52t
        0x71t
        0x5ft
        0x5at
        0x29t
        -0x28t
        -0x62t
        0x2dt
        -0x72t
        0x2et
        0x21t
        -0x25t
        0x1et
        0x16t
        -0x5ct
        0x31t
        0x74t
        -0x51t
        0x6bt
        -0x63t
        0x51t
        -0x5at
        0x2dt
        0x70t
        0x5ct
        -0x26t
        0x14t
        0x55t
    .end array-data

    :array_88
    .array-data 1
        -0x33t
        -0x59t
        0x52t
        -0x52t
        -0x55t
        -0x56t
        -0x44t
        0x20t
        0x48t
        0x6at
        -0x7et
        -0x54t
        0x57t
        -0x5dt
        -0x23t
        0x10t
        0x77t
        -0x7bt
        -0x40t
        0x6t
        0x9t
        0x4at
        0x34t
        -0x65t
        -0x3bt
        -0x1et
        0x24t
        -0x18t
        -0x56t
        0x22t
        -0x5ft
        0x7ct
    .end array-data

    :array_9c
    .array-data 1
        -0x4t
        -0x3bt
        -0x38t
        -0x38t
        -0x75t
        -0x7bt
        -0x57t
        -0xat
        0x3ft
        -0x46t
        0x67t
        -0x27t
        -0x1at
        0x74t
        -0x26t
        0x46t
        0x6ct
        0x72t
        -0x57t
        -0x74t
        -0x5et
        -0x79t
        -0xdt
        0x43t
        -0x5t
        0x57t
        0x21t
        -0x30t
        -0x68t
        0x71t
        0x3ft
        -0x7at
    .end array-data

    :array_b0
    .array-data 1
        -0x77t
        -0x29t
        -0x71t
        -0x5ct
        -0x65t
        0x9t
        -0x1et
        -0xdt
        0x18t
        0x12t
        -0x45t
        0x63t
        -0x1ft
        -0x41t
        -0x54t
        0x2bt
        -0xdt
        0x18t
        -0x57t
        0x56t
        0x14t
        0x73t
        -0x3at
        -0x50t
        -0x13t
        0x69t
        0x4t
        -0x32t
        0x18t
        0x37t
        0x7dt
        0x54t
    .end array-data

    :array_c4
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
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1779
    new-instance v0, Ljava/util/ArrayList;

    const-string v7, "android.hardware.radio@1.0::IRadioIndication"

    const-string v8, "android.hidl.base@1.0::IBase"

    const-string v1, "android.hardware.radio@1.6::IRadioIndication"

    const-string v2, "android.hardware.radio@1.5::IRadioIndication"

    const-string v3, "android.hardware.radio@1.4::IRadioIndication"

    const-string v4, "android.hardware.radio@1.3::IRadioIndication"

    const-string v5, "android.hardware.radio@1.2::IRadioIndication"

    const-string v6, "android.hardware.radio@1.1::IRadioIndication"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1799
    const-string v0, "android.hardware.radio@1.6::IRadioIndication"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 1824
    const/4 p1, 0x1

    return p1
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1846
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1848
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1876
    const-string p4, "android.hardware.radio@1.1::IRadioIndication"

    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    const-string v1, "android.hardware.radio@1.5::IRadioIndication"

    const-string v2, "android.hardware.radio@1.4::IRadioIndication"

    const/4 v3, 0x0

    const-string v4, "android.hidl.base@1.0::IBase"

    const-string v5, "android.hardware.radio@1.6::IRadioIndication"

    const-string v6, "android.hardware.radio@1.0::IRadioIndication"

    sparse-switch p1, :sswitch_data_5fc

    goto/16 :goto_5fb

    .line 2741
    :sswitch_14
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2743
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->notifySyspropsChanged()V

    .line 2744
    goto/16 :goto_5fb

    .line 2730
    :sswitch_1c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2732
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 2733
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2734
    invoke-virtual {p1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2735
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2736
    goto/16 :goto_5fb

    .line 2720
    :sswitch_2e
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2722
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->ping()V

    .line 2723
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2724
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2725
    goto/16 :goto_5fb

    .line 2715
    :sswitch_3c
    goto/16 :goto_5fb

    .line 2707
    :sswitch_3e
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2709
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->setHALInstrumentation()V

    .line 2710
    goto/16 :goto_5fb

    .line 2673
    :sswitch_46
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2675
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 2676
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2678
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2680
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 2681
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2682
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2683
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 2684
    nop

    :goto_6d
    if-ge v3, p4, :cond_8e

    .line 2686
    mul-int/lit8 v1, v3, 0x20

    int-to-long v1, v1

    .line 2687
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 2689
    if-eqz v4, :cond_86

    array-length v5, v4

    const/16 v6, 0x20

    if-ne v5, v6, :cond_86

    .line 2693
    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2694
    nop

    .line 2684
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 2690
    :cond_86
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2697
    :cond_8e
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2699
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2701
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2702
    goto/16 :goto_5fb

    .line 2662
    :sswitch_9b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2664
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 2665
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2666
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2667
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2668
    goto/16 :goto_5fb

    .line 2650
    :sswitch_ad
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2652
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 2653
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2654
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2655
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2656
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2657
    goto/16 :goto_5fb

    .line 2639
    :sswitch_c3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2641
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 2642
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2643
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2644
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2645
    goto/16 :goto_5fb

    .line 2628
    :sswitch_d5
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2630
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2631
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p3

    .line 2632
    invoke-static {p2}, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2633
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->simPhonebookRecordsReceived(IBLjava/util/ArrayList;)V

    .line 2634
    goto/16 :goto_5fb

    .line 2619
    :sswitch_e9
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2621
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2622
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->simPhonebookChanged(I)V

    .line 2623
    goto/16 :goto_5fb

    .line 2609
    :sswitch_f5
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2611
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2612
    invoke-static {p2}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2613
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentPhysicalChannelConfigs_1_6(ILjava/util/ArrayList;)V

    .line 2614
    goto/16 :goto_5fb

    .line 2598
    :sswitch_105
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2600
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2601
    new-instance p3, Landroid/hardware/radio/V1_6/NetworkScanResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_6/NetworkScanResult;-><init>()V

    .line 2602
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_6/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2603
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->networkScanResult_1_6(ILandroid/hardware/radio/V1_6/NetworkScanResult;)V

    .line 2604
    goto/16 :goto_5fb

    .line 2588
    :sswitch_119
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2590
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2591
    invoke-static {p2}, Landroid/hardware/radio/V1_6/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2592
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cellInfoList_1_6(ILjava/util/ArrayList;)V

    .line 2593
    goto/16 :goto_5fb

    .line 2577
    :sswitch_129
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2579
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2580
    new-instance p3, Landroid/hardware/radio/V1_6/SignalStrength;

    invoke-direct {p3}, Landroid/hardware/radio/V1_6/SignalStrength;-><init>()V

    .line 2581
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_6/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2582
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentSignalStrength_1_6(ILandroid/hardware/radio/V1_6/SignalStrength;)V

    .line 2583
    goto/16 :goto_5fb

    .line 2566
    :sswitch_13d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2568
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2569
    new-instance p3, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;

    invoke-direct {p3}, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;-><init>()V

    .line 2570
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2571
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentLinkCapacityEstimate_1_6(ILandroid/hardware/radio/V1_6/LinkCapacityEstimate;)V

    .line 2572
    goto/16 :goto_5fb

    .line 2556
    :sswitch_151
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2558
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2559
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2560
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->unthrottleApn(ILjava/lang/String;)V

    .line 2561
    goto/16 :goto_5fb

    .line 2546
    :sswitch_161
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2548
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2549
    invoke-static {p2}, Landroid/hardware/radio/V1_6/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2550
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->dataCallListChanged_1_6(ILjava/util/ArrayList;)V

    .line 2551
    goto/16 :goto_5fb

    .line 2536
    :sswitch_171
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2538
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2539
    invoke-static {p2}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2540
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->dataCallListChanged_1_5(ILjava/util/ArrayList;)V

    .line 2541
    goto/16 :goto_5fb

    .line 2525
    :sswitch_181
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2527
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2528
    new-instance p3, Landroid/hardware/radio/V1_5/NetworkScanResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_5/NetworkScanResult;-><init>()V

    .line 2529
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_5/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2530
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->networkScanResult_1_5(ILandroid/hardware/radio/V1_5/NetworkScanResult;)V

    .line 2531
    goto/16 :goto_5fb

    .line 2515
    :sswitch_195
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2517
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2518
    invoke-static {p2}, Landroid/hardware/radio/V1_5/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2519
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cellInfoList_1_5(ILjava/util/ArrayList;)V

    .line 2520
    goto/16 :goto_5fb

    .line 2503
    :sswitch_1a5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2505
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2506
    new-instance p3, Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-direct {p3}, Landroid/hardware/radio/V1_5/CellIdentity;-><init>()V

    .line 2507
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_5/CellIdentity;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2508
    invoke-static {p2}, Landroid/hardware/radio/V1_5/BarringInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2509
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->barringInfoChanged(ILandroid/hardware/radio/V1_5/CellIdentity;Ljava/util/ArrayList;)V

    .line 2510
    goto/16 :goto_5fb

    .line 2488
    :sswitch_1bd
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2490
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2491
    new-instance v2, Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-direct {v2}, Landroid/hardware/radio/V1_5/CellIdentity;-><init>()V

    .line 2492
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_5/CellIdentity;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2493
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2494
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 2495
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2496
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 2497
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->registrationFailed(ILandroid/hardware/radio/V1_5/CellIdentity;Ljava/lang/String;III)V

    .line 2498
    goto/16 :goto_5fb

    .line 2478
    :sswitch_1e2
    move-object p1, p0

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2480
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2481
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 2482
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->uiccApplicationsEnablementChanged(IZ)V

    .line 2483
    goto/16 :goto_5fb

    .line 2467
    :sswitch_1f3
    move-object p1, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2469
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2470
    new-instance p4, Landroid/hardware/radio/V1_4/SignalStrength;

    invoke-direct {p4}, Landroid/hardware/radio/V1_4/SignalStrength;-><init>()V

    .line 2471
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_4/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2472
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentSignalStrength_1_4(ILandroid/hardware/radio/V1_4/SignalStrength;)V

    .line 2473
    goto/16 :goto_5fb

    .line 2457
    :sswitch_208
    move-object p1, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2459
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2460
    invoke-static {p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2461
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->dataCallListChanged_1_4(ILjava/util/ArrayList;)V

    .line 2462
    goto/16 :goto_5fb

    .line 2447
    :sswitch_219
    move-object p1, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2449
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2450
    invoke-static {p2}, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2451
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentPhysicalChannelConfigs_1_4(ILjava/util/ArrayList;)V

    .line 2452
    goto/16 :goto_5fb

    .line 2436
    :sswitch_22a
    move-object p1, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2438
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2439
    new-instance p4, Landroid/hardware/radio/V1_4/NetworkScanResult;

    invoke-direct {p4}, Landroid/hardware/radio/V1_4/NetworkScanResult;-><init>()V

    .line 2440
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_4/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2441
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->networkScanResult_1_4(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V

    .line 2442
    goto/16 :goto_5fb

    .line 2426
    :sswitch_23f
    move-object p1, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2428
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2429
    invoke-static {p2}, Landroid/hardware/radio/V1_4/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2430
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cellInfoList_1_4(ILjava/util/ArrayList;)V

    .line 2431
    goto/16 :goto_5fb

    .line 2416
    :sswitch_250
    move-object p1, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2418
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2419
    invoke-static {p2}, Landroid/hardware/radio/V1_4/EmergencyNumber;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2420
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentEmergencyNumberList(ILjava/util/ArrayList;)V

    .line 2421
    goto/16 :goto_5fb

    .line 2405
    :sswitch_261
    move-object p1, p0

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2407
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2408
    new-instance p4, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {p4}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 2409
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2410
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V

    .line 2411
    goto/16 :goto_5fb

    .line 2395
    :sswitch_276
    move-object p1, p0

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2397
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2398
    invoke-static {p2}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2399
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V

    .line 2400
    goto/16 :goto_5fb

    .line 2384
    :sswitch_287
    move-object p1, p0

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2386
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2387
    new-instance p4, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    invoke-direct {p4}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;-><init>()V

    .line 2388
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2389
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V

    .line 2390
    goto/16 :goto_5fb

    .line 2374
    :sswitch_29c
    move-object p1, p0

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2376
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2377
    invoke-static {p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2378
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cellInfoList_1_2(ILjava/util/ArrayList;)V

    .line 2379
    goto/16 :goto_5fb

    .line 2363
    :sswitch_2ad
    move-object p1, p0

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2365
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2366
    new-instance p4, Landroid/hardware/radio/V1_2/NetworkScanResult;

    invoke-direct {p4}, Landroid/hardware/radio/V1_2/NetworkScanResult;-><init>()V

    .line 2367
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_2/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2368
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 2369
    goto/16 :goto_5fb

    .line 2352
    :sswitch_2c2
    move-object p1, p0

    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2354
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2355
    new-instance p4, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {p4}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 2356
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2357
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 2358
    goto/16 :goto_5fb

    .line 2341
    :sswitch_2d7
    move-object p1, p0

    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2343
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2344
    new-instance p4, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {p4}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 2345
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2346
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 2347
    goto/16 :goto_5fb

    .line 2332
    :sswitch_2ec
    move-object p1, p0

    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2334
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2335
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 2336
    goto/16 :goto_5fb

    .line 2322
    :sswitch_2f9
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2324
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2325
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2326
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 2327
    goto/16 :goto_5fb

    .line 2311
    :sswitch_30a
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2313
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2314
    new-instance p4, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 2315
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2316
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 2317
    goto/16 :goto_5fb

    .line 2300
    :sswitch_31f
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2302
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2303
    new-instance p4, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 2304
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2305
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 2306
    goto/16 :goto_5fb

    .line 2290
    :sswitch_334
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2292
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2293
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2294
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 2295
    goto/16 :goto_5fb

    .line 2279
    :sswitch_345
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2281
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2282
    new-instance p4, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 2283
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2284
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 2285
    goto/16 :goto_5fb

    .line 2268
    :sswitch_35a
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2270
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2271
    new-instance p4, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 2272
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2273
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 2274
    goto/16 :goto_5fb

    .line 2258
    :sswitch_36f
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2260
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2261
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2262
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 2263
    goto/16 :goto_5fb

    .line 2248
    :sswitch_380
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2250
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2251
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2252
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->srvccStateNotify(II)V

    .line 2253
    goto/16 :goto_5fb

    .line 2238
    :sswitch_391
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2240
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2241
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 2242
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 2243
    goto/16 :goto_5fb

    .line 2229
    :sswitch_3a2
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2231
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2232
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 2233
    goto/16 :goto_5fb

    .line 2219
    :sswitch_3af
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2221
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2222
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2223
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 2224
    goto/16 :goto_5fb

    .line 2209
    :sswitch_3c0
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2211
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2212
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2213
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 2214
    goto/16 :goto_5fb

    .line 2200
    :sswitch_3d1
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2202
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2203
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->rilConnected(I)V

    .line 2204
    goto/16 :goto_5fb

    .line 2191
    :sswitch_3de
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2194
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 2195
    goto/16 :goto_5fb

    .line 2181
    :sswitch_3eb
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2183
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2184
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2185
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 2186
    goto/16 :goto_5fb

    .line 2171
    :sswitch_3fc
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2174
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2175
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 2176
    goto/16 :goto_5fb

    .line 2162
    :sswitch_40d
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2164
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2165
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->resendIncallMute(I)V

    .line 2166
    goto/16 :goto_5fb

    .line 2152
    :sswitch_41a
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2154
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2155
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 2156
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 2157
    goto/16 :goto_5fb

    .line 2141
    :sswitch_42b
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2143
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2144
    new-instance p4, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 2145
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2146
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 2147
    goto/16 :goto_5fb

    .line 2131
    :sswitch_440
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2133
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2134
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2135
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 2136
    goto/16 :goto_5fb

    .line 2120
    :sswitch_451
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2122
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2123
    new-instance p4, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 2124
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2125
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 2126
    goto/16 :goto_5fb

    .line 2111
    :sswitch_466
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2113
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2114
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 2115
    goto/16 :goto_5fb

    .line 2101
    :sswitch_473
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2103
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2104
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2105
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 2106
    goto/16 :goto_5fb

    .line 2092
    :sswitch_484
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2094
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2095
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 2096
    goto/16 :goto_5fb

    .line 2082
    :sswitch_491
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2084
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2085
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2086
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 2087
    goto/16 :goto_5fb

    .line 2071
    :sswitch_4a2
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2074
    new-instance p4, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 2075
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2076
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 2077
    goto/16 :goto_5fb

    .line 2062
    :sswitch_4b7
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2064
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2065
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->simStatusChanged(I)V

    .line 2066
    goto/16 :goto_5fb

    .line 2050
    :sswitch_4c4
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2052
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2053
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p4

    .line 2054
    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 2055
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2056
    invoke-virtual {p0, p3, p4, v0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 2057
    goto/16 :goto_5fb

    .line 2039
    :sswitch_4dd
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2041
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2042
    new-instance p4, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 2043
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2044
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 2045
    goto/16 :goto_5fb

    .line 2030
    :sswitch_4f2
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2033
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 2034
    goto/16 :goto_5fb

    .line 2020
    :sswitch_4ff
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2022
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2023
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 2024
    invoke-virtual {p0, p3, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 2025
    goto/16 :goto_5fb

    .line 2010
    :sswitch_510
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2012
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2013
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2014
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 2015
    goto/16 :goto_5fb

    .line 2000
    :sswitch_521
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2002
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2003
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2004
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 2005
    goto/16 :goto_5fb

    .line 1991
    :sswitch_532
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1993
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1994
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->stkSessionEnd(I)V

    .line 1995
    goto/16 :goto_5fb

    .line 1980
    :sswitch_53f
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1982
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1983
    new-instance p4, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 1984
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1985
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 1986
    goto/16 :goto_5fb

    .line 1970
    :sswitch_554
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1972
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1973
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1974
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 1975
    goto/16 :goto_5fb

    .line 1959
    :sswitch_565
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1961
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1962
    new-instance p4, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 1963
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1964
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 1965
    goto/16 :goto_5fb

    .line 1948
    :sswitch_57a
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1950
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1951
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1952
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1953
    invoke-virtual {p0, p3, p4, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 1954
    goto/16 :goto_5fb

    .line 1937
    :sswitch_58f
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1939
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1940
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1941
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1942
    invoke-virtual {p0, p3, p4, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 1943
    goto :goto_5fb

    .line 1927
    :sswitch_5a3
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1929
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1930
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1931
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->newSmsOnSim(II)V

    .line 1932
    goto :goto_5fb

    .line 1917
    :sswitch_5b3
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1920
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1921
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 1922
    goto :goto_5fb

    .line 1907
    :sswitch_5c3
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1909
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1910
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1911
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 1912
    goto :goto_5fb

    .line 1898
    :sswitch_5d3
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1900
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1901
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->networkStateChanged(I)V

    .line 1902
    goto :goto_5fb

    .line 1889
    :sswitch_5df
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1891
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1892
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->callStateChanged(I)V

    .line 1893
    goto :goto_5fb

    .line 1879
    :sswitch_5eb
    move-object p1, p0

    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1881
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1882
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1883
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->radioStateChanged(II)V

    .line 1884
    nop

    .line 2753
    :goto_5fb
    return-void

    :sswitch_data_5fc
    .sparse-switch
        0x1 -> :sswitch_5eb
        0x2 -> :sswitch_5df
        0x3 -> :sswitch_5d3
        0x4 -> :sswitch_5c3
        0x5 -> :sswitch_5b3
        0x6 -> :sswitch_5a3
        0x7 -> :sswitch_58f
        0x8 -> :sswitch_57a
        0x9 -> :sswitch_565
        0xa -> :sswitch_554
        0xb -> :sswitch_53f
        0xc -> :sswitch_532
        0xd -> :sswitch_521
        0xe -> :sswitch_510
        0xf -> :sswitch_4ff
        0x10 -> :sswitch_4f2
        0x11 -> :sswitch_4dd
        0x12 -> :sswitch_4c4
        0x13 -> :sswitch_4b7
        0x14 -> :sswitch_4a2
        0x15 -> :sswitch_491
        0x16 -> :sswitch_484
        0x17 -> :sswitch_473
        0x18 -> :sswitch_466
        0x19 -> :sswitch_451
        0x1a -> :sswitch_440
        0x1b -> :sswitch_42b
        0x1c -> :sswitch_41a
        0x1d -> :sswitch_40d
        0x1e -> :sswitch_3fc
        0x1f -> :sswitch_3eb
        0x20 -> :sswitch_3de
        0x21 -> :sswitch_3d1
        0x22 -> :sswitch_3c0
        0x23 -> :sswitch_3af
        0x24 -> :sswitch_3a2
        0x25 -> :sswitch_391
        0x26 -> :sswitch_380
        0x27 -> :sswitch_36f
        0x28 -> :sswitch_35a
        0x29 -> :sswitch_345
        0x2a -> :sswitch_334
        0x2b -> :sswitch_31f
        0x2c -> :sswitch_30a
        0x2d -> :sswitch_2f9
        0x2e -> :sswitch_2ec
        0x2f -> :sswitch_2d7
        0x30 -> :sswitch_2c2
        0x31 -> :sswitch_2ad
        0x32 -> :sswitch_29c
        0x33 -> :sswitch_287
        0x34 -> :sswitch_276
        0x35 -> :sswitch_261
        0x36 -> :sswitch_250
        0x37 -> :sswitch_23f
        0x38 -> :sswitch_22a
        0x39 -> :sswitch_219
        0x3a -> :sswitch_208
        0x3b -> :sswitch_1f3
        0x3c -> :sswitch_1e2
        0x3d -> :sswitch_1bd
        0x3e -> :sswitch_1a5
        0x3f -> :sswitch_195
        0x40 -> :sswitch_181
        0x41 -> :sswitch_171
        0x42 -> :sswitch_161
        0x43 -> :sswitch_151
        0x44 -> :sswitch_13d
        0x45 -> :sswitch_129
        0x46 -> :sswitch_119
        0x47 -> :sswitch_105
        0x48 -> :sswitch_f5
        0x49 -> :sswitch_e9
        0x4a -> :sswitch_d5
        0xf43484e -> :sswitch_c3
        0xf444247 -> :sswitch_ad
        0xf445343 -> :sswitch_9b
        0xf485348 -> :sswitch_46
        0xf494e54 -> :sswitch_3e
        0xf4c5444 -> :sswitch_3c
        0xf504e47 -> :sswitch_2e
        0xf524546 -> :sswitch_1c
        0xf535953 -> :sswitch_14
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 1830
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 1858
    const-string v0, "android.hardware.radio@1.6::IRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1859
    return-object p0

    .line 1861
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

    .line 1865
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1866
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1820
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1852
    const/4 p1, 0x1

    return p1
.end method
