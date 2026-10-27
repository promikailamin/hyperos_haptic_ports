.class public abstract Landroid/hardware/radio/V1_5/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Landroid/hardware/radio/V1_5/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3668
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 3671
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

    .line 3689
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 3731
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3732
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3733
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3734
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3735
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 3701
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_34

    new-array v3, v1, [B

    fill-array-data v3, :array_48

    new-array v4, v1, [B

    fill-array-data v4, :array_5c

    new-array v5, v1, [B

    fill-array-data v5, :array_70

    new-array v6, v1, [B

    fill-array-data v6, :array_84

    new-array v7, v1, [B

    fill-array-data v7, :array_98

    new-array v8, v1, [B

    fill-array-data v8, :array_ac

    filled-new-array/range {v2 .. v8}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_34
    .array-data 1
        -0x48t
        0x9t
        0x19t
        0x39t
        0x70t
        -0x57t
        0x1ct
        -0x5at
        0x37t
        -0x5ct
        -0x50t
        0x18t
        0x47t
        0x67t
        0x31t
        0x56t
        0x1t
        -0x2dt
        0x2et
        0x3et
        -0xdt
        -0x2bt
        -0x67t
        0x2ft
        -0x5t
        -0x39t
        -0x58t
        -0x2ft
        0x4at
        0x14t
        -0x10t
        0x15t
    .end array-data

    :array_48
    .array-data 1
        0xct
        -0x40t
        -0x23t
        -0x79t
        -0x3at
        0x34t
        -0x56t
        -0x2dt
        0x6dt
        0x7dt
        -0xet
        0x2bt
        0x28t
        0x32t
        -0x7dt
        -0x62t
        -0x9t
        -0x22t
        -0x29t
        0x19t
        0x9t
        -0x25t
        -0x33t
        -0x1ft
        0x1ct
        -0x3t
        -0x2at
        -0x63t
        -0x40t
        -0x24t
        0x52t
        -0x48t
    .end array-data

    :array_5c
    .array-data 1
        -0xbt
        -0x5t
        -0x1ct
        -0xet
        -0x76t
        -0x62t
        0x34t
        0x6bt
        -0x1dt
        0x60t
        0x63t
        -0x14t
        -0x5ct
        -0x1at
        -0x38t
        0x64t
        0x11t
        0x4at
        0x1at
        0x6ft
        -0x4at
        0x48t
        -0x7ct
        -0x25t
        0x3t
        -0x3t
        -0x28t
        0x25t
        0x79t
        0x1at
        -0x27t
        -0x48t
    .end array-data

    :array_70
    .array-data 1
        -0x26t
        -0x74t
        0x6at
        -0x17t
        -0x6ft
        -0x3at
        -0x5ct
        -0x4et
        -0x7ct
        -0x34t
        0x6et
        0x44t
        0x53t
        0x32t
        -0x20t
        0x64t
        -0x1et
        -0x72t
        -0x18t
        -0x60t
        -0x6ct
        -0x7et
        -0x13t
        0x5at
        -0x1t
        -0x7t
        -0x2ft
        0x59t
        -0x14t
        0x66t
        -0x6ct
        -0x49t
    .end array-data

    :array_84
    .array-data 1
        0x0t
        0x36t
        0x6bt
        0x2ft
        -0x78t
        -0x7t
        -0x14t
        0x24t
        0x58t
        0x1t
        0x49t
        0x72t
        -0x6dt
        -0x7et
        0x70t
        -0x38t
        0x41t
        0x3dt
        0x4at
        -0x4dt
        0x3t
        0x21t
        -0x72t
        0x37t
        -0x41t
        0x3at
        -0x23t
        0x2bt
        -0x72t
        0x6bt
        -0x7et
        -0x66t
    .end array-data

    :array_98
    .array-data 1
        -0x44t
        0x3ct
        -0x74t
        0x23t
        0x30t
        -0x7bt
        -0x4t
        -0x5dt
        -0x79t
        -0x63t
        -0x39t
        0x4bt
        0x49t
        0xbt
        -0x62t
        0x5bt
        -0x3ft
        0x6t
        0x32t
        0x58t
        0x47t
        0xdt
        0x3bt
        0x4ct
        0x12t
        -0x9t
        -0x59t
        0x4bt
        -0xet
        0x15t
        -0x35t
        -0x43t
    .end array-data

    :array_ac
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
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3676
    new-instance v0, Ljava/util/ArrayList;

    const-string v6, "android.hardware.radio@1.0::IRadioResponse"

    const-string v7, "android.hidl.base@1.0::IBase"

    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    const-string v2, "android.hardware.radio@1.4::IRadioResponse"

    const-string v3, "android.hardware.radio@1.3::IRadioResponse"

    const-string v4, "android.hardware.radio@1.2::IRadioResponse"

    const-string v5, "android.hardware.radio@1.1::IRadioResponse"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 3695
    const-string v0, "android.hardware.radio@1.5::IRadioResponse"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 3719
    const/4 p1, 0x1

    return p1
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 3741
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3743
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3771
    const-string v3, "android.hardware.radio@1.3::IRadioResponse"

    const-string v4, "android.hardware.radio@1.1::IRadioResponse"

    const/4 v5, 0x0

    const-string v6, "android.hidl.base@1.0::IBase"

    const-string v7, "android.hardware.radio@1.2::IRadioResponse"

    const-string v8, "android.hardware.radio@1.4::IRadioResponse"

    const-string v9, "android.hardware.radio@1.5::IRadioResponse"

    const-string v10, "android.hardware.radio@1.0::IRadioResponse"

    sparse-switch p1, :sswitch_data_e3c

    goto/16 :goto_e3a

    .line 5802
    :sswitch_14
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5804
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->notifySyspropsChanged()V

    .line 5805
    goto/16 :goto_e3a

    .line 5791
    :sswitch_1c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5793
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5794
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5795
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5796
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5797
    goto/16 :goto_e3a

    .line 5781
    :sswitch_2e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5783
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->ping()V

    .line 5784
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5785
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5786
    goto/16 :goto_e3a

    .line 5776
    :sswitch_3c
    goto/16 :goto_e3a

    .line 5768
    :sswitch_3e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5770
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setHALInstrumentation()V

    .line 5771
    goto/16 :goto_e3a

    .line 5734
    :sswitch_46
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5736
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5737
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5739
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 5741
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5742
    const-wide/16 v6, 0x8

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5743
    const-wide/16 v6, 0xc

    invoke-virtual {v1, v6, v7, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5744
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v6, v3, 0x20

    invoke-direct {v4, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 5745
    nop

    :goto_6d
    if-ge v5, v3, :cond_8e

    .line 5747
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 5748
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 5750
    if-eqz v8, :cond_86

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_86

    .line 5754
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5755
    nop

    .line 5745
    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    .line 5751
    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5758
    :cond_8e
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5760
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5762
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5763
    goto/16 :goto_e3a

    .line 5723
    :sswitch_9b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5725
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 5726
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5727
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5728
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5729
    goto/16 :goto_e3a

    .line 5711
    :sswitch_ad
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5713
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v3

    .line 5714
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5715
    invoke-virtual {p0, v3, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5716
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5717
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5718
    goto/16 :goto_e3a

    .line 5700
    :sswitch_c3
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5702
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5703
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5704
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5705
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5706
    goto/16 :goto_e3a

    .line 5688
    :sswitch_d5
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5690
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5691
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5692
    new-instance v3, Landroid/hardware/radio/V1_5/CardStatus;

    invoke-direct {v3}, Landroid/hardware/radio/V1_5/CardStatus;-><init>()V

    .line 5693
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_5/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5694
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getIccCardStatusResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CardStatus;)V

    .line 5695
    goto/16 :goto_e3a

    .line 5676
    :sswitch_ed
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5678
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5679
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5680
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5681
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5682
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->supplySimDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 5683
    goto/16 :goto_e3a

    .line 5664
    :sswitch_105
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5666
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5667
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5668
    new-instance v3, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5669
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5670
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5671
    goto/16 :goto_e3a

    .line 5654
    :sswitch_11d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5656
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5657
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5658
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5659
    goto/16 :goto_e3a

    .line 5643
    :sswitch_12d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5645
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5646
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5647
    invoke-static {p2}, Landroid/hardware/radio/V1_5/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5648
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCellInfoListResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5649
    goto/16 :goto_e3a

    .line 5631
    :sswitch_141
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5633
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5634
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5635
    new-instance v3, Landroid/hardware/radio/V1_5/RegStateResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_5/RegStateResult;-><init>()V

    .line 5636
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_5/RegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5637
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/RegStateResult;)V

    .line 5638
    goto/16 :goto_e3a

    .line 5619
    :sswitch_159
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5621
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5622
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5623
    new-instance v3, Landroid/hardware/radio/V1_5/RegStateResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_5/RegStateResult;-><init>()V

    .line 5624
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_5/RegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5625
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/RegStateResult;)V

    .line 5626
    goto/16 :goto_e3a

    .line 5606
    :sswitch_171
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5608
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5609
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5610
    new-instance v3, Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-direct {v3}, Landroid/hardware/radio/V1_5/CellIdentity;-><init>()V

    .line 5611
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_5/CellIdentity;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5612
    invoke-static {p2}, Landroid/hardware/radio/V1_5/BarringInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5613
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getBarringInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CellIdentity;Ljava/util/ArrayList;)V

    .line 5614
    goto/16 :goto_e3a

    .line 5596
    :sswitch_18d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5598
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5599
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5600
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setIndicationFilterResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5601
    goto/16 :goto_e3a

    .line 5586
    :sswitch_19d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5588
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5589
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5590
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setRadioPowerResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5591
    goto/16 :goto_e3a

    .line 5576
    :sswitch_1ad
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5578
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5579
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5580
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setDataProfileResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5581
    goto/16 :goto_e3a

    .line 5566
    :sswitch_1bd
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5568
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5569
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5570
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setInitialAttachApnResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5571
    goto/16 :goto_e3a

    .line 5555
    :sswitch_1cd
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5557
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5558
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5559
    invoke-static {p2}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5560
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDataCallListResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5561
    goto/16 :goto_e3a

    .line 5543
    :sswitch_1e1
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5545
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5546
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5547
    new-instance v3, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_5/SetupDataCallResult;-><init>()V

    .line 5548
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5549
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setupDataCallResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/SetupDataCallResult;)V

    .line 5550
    goto/16 :goto_e3a

    .line 5533
    :sswitch_1f9
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5535
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5536
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5537
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->startNetworkScanResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5538
    goto/16 :goto_e3a

    .line 5523
    :sswitch_209
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5525
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5526
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5527
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setSystemSelectionChannelsResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5528
    goto/16 :goto_e3a

    .line 5512
    :sswitch_219
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5514
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5515
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5516
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5517
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->areUiccApplicationsEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5518
    goto/16 :goto_e3a

    .line 5502
    :sswitch_22d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5504
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5505
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5506
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->enableUiccApplicationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5507
    goto/16 :goto_e3a

    .line 5492
    :sswitch_23d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5494
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5495
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5496
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5497
    goto/16 :goto_e3a

    .line 5482
    :sswitch_24d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5484
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5485
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5486
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5487
    goto/16 :goto_e3a

    .line 5470
    :sswitch_25d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5472
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5473
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5474
    new-instance v3, Landroid/hardware/radio/V1_4/SignalStrength;

    invoke-direct {v3}, Landroid/hardware/radio/V1_4/SignalStrength;-><init>()V

    .line 5475
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_4/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5476
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getSignalStrengthResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V

    .line 5477
    goto/16 :goto_e3a

    .line 5457
    :sswitch_275
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5459
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5460
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5461
    new-instance v3, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v3}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 5462
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5463
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5464
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    .line 5465
    goto/16 :goto_e3a

    .line 5447
    :sswitch_291
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5449
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5450
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5451
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5452
    goto/16 :goto_e3a

    .line 5435
    :sswitch_2a1
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5437
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5438
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5439
    new-instance v3, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_4/SetupDataCallResult;-><init>()V

    .line 5440
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5441
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setupDataCallResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SetupDataCallResult;)V

    .line 5442
    goto/16 :goto_e3a

    .line 5424
    :sswitch_2b9
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5426
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5427
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5428
    invoke-static {p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5429
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDataCallListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5430
    goto/16 :goto_e3a

    .line 5414
    :sswitch_2cd
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5416
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5417
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5418
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5419
    goto/16 :goto_e3a

    .line 5403
    :sswitch_2dd
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5405
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5406
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5407
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5408
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5409
    goto/16 :goto_e3a

    .line 5391
    :sswitch_2f1
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5393
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5394
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5395
    new-instance v3, Landroid/hardware/radio/V1_4/CardStatus;

    invoke-direct {v3}, Landroid/hardware/radio/V1_4/CardStatus;-><init>()V

    .line 5396
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_4/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5397
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getIccCardStatusResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V

    .line 5398
    goto/16 :goto_e3a

    .line 5379
    :sswitch_309
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5381
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5382
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5383
    new-instance v3, Landroid/hardware/radio/V1_4/DataRegStateResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_4/DataRegStateResult;-><init>()V

    .line 5384
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_4/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5385
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/DataRegStateResult;)V

    .line 5386
    goto/16 :goto_e3a

    .line 5368
    :sswitch_321
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5370
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5371
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5372
    invoke-static {p2}, Landroid/hardware/radio/V1_4/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5373
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCellInfoListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5374
    goto/16 :goto_e3a

    .line 5358
    :sswitch_335
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5360
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5361
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5362
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->startNetworkScanResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5363
    goto/16 :goto_e3a

    .line 5348
    :sswitch_345
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5350
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5351
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5352
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5353
    goto/16 :goto_e3a

    .line 5337
    :sswitch_355
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5339
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5340
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5341
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5342
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getModemStackStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5343
    goto/16 :goto_e3a

    .line 5327
    :sswitch_369
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5329
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5330
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5331
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->enableModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5332
    goto/16 :goto_e3a

    .line 5317
    :sswitch_379
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5319
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5320
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5321
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5322
    goto/16 :goto_e3a

    .line 5305
    :sswitch_389
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5307
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5308
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5309
    new-instance v3, Landroid/hardware/radio/V1_2/DataRegStateResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_2/DataRegStateResult;-><init>()V

    .line 5310
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_2/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5311
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V

    .line 5312
    goto/16 :goto_e3a

    .line 5293
    :sswitch_3a1
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5295
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5296
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5297
    new-instance v3, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;-><init>()V

    .line 5298
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5299
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V

    .line 5300
    goto/16 :goto_e3a

    .line 5281
    :sswitch_3b9
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5283
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5284
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5285
    new-instance v3, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v3}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 5286
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5287
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V

    .line 5288
    goto/16 :goto_e3a

    .line 5270
    :sswitch_3d1
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5272
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5273
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5274
    invoke-static {p2}, Landroid/hardware/radio/V1_2/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5275
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5276
    goto/16 :goto_e3a

    .line 5260
    :sswitch_3e5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5262
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5263
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5264
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5265
    goto/16 :goto_e3a

    .line 5250
    :sswitch_3f5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5252
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5253
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5254
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5255
    goto/16 :goto_e3a

    .line 5238
    :sswitch_405
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5240
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5241
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5242
    new-instance v3, Landroid/hardware/radio/V1_2/CardStatus;

    invoke-direct {v3}, Landroid/hardware/radio/V1_2/CardStatus;-><init>()V

    .line 5243
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_2/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5244
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V

    .line 5245
    goto/16 :goto_e3a

    .line 5227
    :sswitch_41d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5229
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5230
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5231
    invoke-static {p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5232
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5233
    goto/16 :goto_e3a

    .line 5217
    :sswitch_431
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5219
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5220
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5221
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5222
    goto/16 :goto_e3a

    .line 5205
    :sswitch_441
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5207
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5208
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5209
    new-instance v3, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v3}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 5210
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5211
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 5212
    goto/16 :goto_e3a

    .line 5195
    :sswitch_459
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5197
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5198
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5199
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5200
    goto/16 :goto_e3a

    .line 5185
    :sswitch_469
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5187
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5188
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5189
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5190
    goto/16 :goto_e3a

    .line 5175
    :sswitch_479
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5177
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5178
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5179
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5180
    goto/16 :goto_e3a

    .line 5165
    :sswitch_489
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5167
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5168
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5169
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5170
    goto/16 :goto_e3a

    .line 5156
    :sswitch_499
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5158
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5159
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->acknowledgeRequest(I)V

    .line 5160
    goto/16 :goto_e3a

    .line 5146
    :sswitch_4a5
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5148
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5149
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5150
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5151
    goto/16 :goto_e3a

    .line 5136
    :sswitch_4b5
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5138
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5139
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5140
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5141
    goto/16 :goto_e3a

    .line 5126
    :sswitch_4c5
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5128
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5129
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5130
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5131
    goto/16 :goto_e3a

    .line 5113
    :sswitch_4d5
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5115
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5116
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5117
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5118
    new-instance v4, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v4}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 5119
    invoke-virtual {v4, p2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5120
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 5121
    goto/16 :goto_e3a

    .line 5102
    :sswitch_4f1
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5104
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5105
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5106
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5107
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5108
    goto/16 :goto_e3a

    .line 5090
    :sswitch_505
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5092
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5093
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5094
    new-instance v3, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 5095
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5096
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    .line 5097
    goto/16 :goto_e3a

    .line 5078
    :sswitch_51d
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5080
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5081
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5082
    new-instance v3, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 5083
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5084
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 5085
    goto/16 :goto_e3a

    .line 5066
    :sswitch_535
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5068
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5069
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5070
    new-instance v3, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 5071
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5072
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 5073
    goto/16 :goto_e3a

    .line 5054
    :sswitch_54d
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5056
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5057
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5058
    new-instance v3, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 5059
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5060
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 5061
    goto/16 :goto_e3a

    .line 5042
    :sswitch_565
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5044
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5045
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5046
    new-instance v3, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5047
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5048
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 5049
    goto/16 :goto_e3a

    .line 5030
    :sswitch_57d
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5032
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5033
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5034
    new-instance v3, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5035
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5036
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 5037
    goto/16 :goto_e3a

    .line 5020
    :sswitch_595
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5022
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5023
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5024
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5025
    goto/16 :goto_e3a

    .line 5010
    :sswitch_5a5
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5012
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5013
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5014
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5015
    goto/16 :goto_e3a

    .line 4998
    :sswitch_5b5
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5000
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5001
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5002
    new-instance v3, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 5003
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5004
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 5005
    goto/16 :goto_e3a

    .line 4987
    :sswitch_5cd
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4989
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4990
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4991
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4992
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4993
    goto/16 :goto_e3a

    .line 4977
    :sswitch_5e1
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4979
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4980
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4981
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4982
    goto/16 :goto_e3a

    .line 4967
    :sswitch_5f1
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4969
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4970
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4971
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4972
    goto/16 :goto_e3a

    .line 4957
    :sswitch_601
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4959
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4960
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4961
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4962
    goto/16 :goto_e3a

    .line 4947
    :sswitch_611
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4949
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4950
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4951
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4952
    goto/16 :goto_e3a

    .line 4937
    :sswitch_621
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4939
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4940
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4941
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4942
    goto/16 :goto_e3a

    .line 4926
    :sswitch_631
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4928
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4929
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4930
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4931
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4932
    goto/16 :goto_e3a

    .line 4914
    :sswitch_645
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4916
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4917
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4918
    new-instance v3, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4919
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4920
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4921
    goto/16 :goto_e3a

    .line 4904
    :sswitch_65d
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4906
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4907
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4908
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4909
    goto/16 :goto_e3a

    .line 4892
    :sswitch_66d
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4894
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4895
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4896
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4897
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4898
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    .line 4899
    goto/16 :goto_e3a

    .line 4880
    :sswitch_685
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4882
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4883
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4884
    new-instance v3, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4885
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4886
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4887
    goto/16 :goto_e3a

    .line 4868
    :sswitch_69d
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4870
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4871
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4872
    new-instance v3, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4873
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4874
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4875
    goto/16 :goto_e3a

    .line 4856
    :sswitch_6b5
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4858
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4859
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4860
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4861
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4862
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 4863
    goto/16 :goto_e3a

    .line 4846
    :sswitch_6cd
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4848
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4849
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4850
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4851
    goto/16 :goto_e3a

    .line 4836
    :sswitch_6dd
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4838
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4839
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4840
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4841
    goto/16 :goto_e3a

    .line 4825
    :sswitch_6ed
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4827
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4828
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4829
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4830
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4831
    goto/16 :goto_e3a

    .line 4814
    :sswitch_701
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4816
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4817
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4818
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4819
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4820
    goto/16 :goto_e3a

    .line 4802
    :sswitch_715
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4804
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4805
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4806
    new-instance v3, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4807
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4808
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4809
    goto/16 :goto_e3a

    .line 4792
    :sswitch_72d
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4794
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4795
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4796
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4797
    goto/16 :goto_e3a

    .line 4781
    :sswitch_73d
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4783
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4784
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4785
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4786
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4787
    goto/16 :goto_e3a

    .line 4770
    :sswitch_751
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4772
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4773
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4774
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4775
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4776
    goto/16 :goto_e3a

    .line 4760
    :sswitch_765
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4762
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4763
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4764
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4765
    goto/16 :goto_e3a

    .line 4750
    :sswitch_775
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4752
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4753
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4754
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4755
    goto/16 :goto_e3a

    .line 4740
    :sswitch_785
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4742
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4743
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4744
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4745
    goto/16 :goto_e3a

    .line 4729
    :sswitch_795
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4731
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4732
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4733
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4734
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4735
    goto/16 :goto_e3a

    .line 4719
    :sswitch_7a9
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4721
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4722
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4723
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4724
    goto/16 :goto_e3a

    .line 4705
    :sswitch_7b9
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4707
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4708
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4709
    move-object v1, v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4710
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4711
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4712
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4713
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4714
    goto/16 :goto_e3a

    .line 4695
    :sswitch_7db
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4697
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4698
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4699
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4700
    goto/16 :goto_e3a

    .line 4684
    :sswitch_7eb
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4686
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4687
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4688
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4689
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4690
    goto/16 :goto_e3a

    .line 4669
    :sswitch_7ff
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4671
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4672
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4673
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4674
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4675
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4676
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4677
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 4678
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4679
    goto/16 :goto_e3a

    .line 4659
    :sswitch_824
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4661
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4662
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4663
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4664
    goto/16 :goto_e3a

    .line 4649
    :sswitch_834
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4651
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4652
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4653
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4654
    goto/16 :goto_e3a

    .line 4638
    :sswitch_844
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4640
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4641
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4642
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4643
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4644
    goto/16 :goto_e3a

    .line 4628
    :sswitch_858
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4630
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4631
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4632
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4633
    goto/16 :goto_e3a

    .line 4618
    :sswitch_868
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4620
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4621
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4622
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4623
    goto/16 :goto_e3a

    .line 4607
    :sswitch_878
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4609
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4610
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4611
    invoke-static {p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4612
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4613
    goto/16 :goto_e3a

    .line 4597
    :sswitch_88c
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4599
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4600
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4601
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4602
    goto/16 :goto_e3a

    .line 4585
    :sswitch_89c
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4587
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4588
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4589
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4590
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4591
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4592
    goto/16 :goto_e3a

    .line 4575
    :sswitch_8b4
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4577
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4578
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4579
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4580
    goto/16 :goto_e3a

    .line 4565
    :sswitch_8c4
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4567
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4568
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4569
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4570
    goto/16 :goto_e3a

    .line 4554
    :sswitch_8d4
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4556
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4557
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4558
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4559
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4560
    goto/16 :goto_e3a

    .line 4544
    :sswitch_8e8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4546
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4547
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4548
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4549
    goto/16 :goto_e3a

    .line 4533
    :sswitch_8f8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4535
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4536
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4537
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4538
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4539
    goto/16 :goto_e3a

    .line 4523
    :sswitch_90c
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4525
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4526
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4527
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4528
    goto/16 :goto_e3a

    .line 4512
    :sswitch_91c
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4514
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4515
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4516
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4517
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4518
    goto/16 :goto_e3a

    .line 4502
    :sswitch_930
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4504
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4505
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4506
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4507
    goto/16 :goto_e3a

    .line 4492
    :sswitch_940
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4494
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4495
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4496
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4497
    goto/16 :goto_e3a

    .line 4482
    :sswitch_950
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4484
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4485
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4486
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4487
    goto/16 :goto_e3a

    .line 4471
    :sswitch_960
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4473
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4474
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4475
    invoke-static {p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4476
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4477
    goto/16 :goto_e3a

    .line 4460
    :sswitch_974
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4462
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4463
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4464
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4465
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4466
    goto/16 :goto_e3a

    .line 4450
    :sswitch_988
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4452
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4453
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4454
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4455
    goto/16 :goto_e3a

    .line 4440
    :sswitch_998
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4442
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4443
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4444
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4445
    goto/16 :goto_e3a

    .line 4430
    :sswitch_9a8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4432
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4433
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4434
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4435
    goto/16 :goto_e3a

    .line 4420
    :sswitch_9b8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4422
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4423
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4424
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4425
    goto/16 :goto_e3a

    .line 4409
    :sswitch_9c8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4411
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4412
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4413
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4414
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4415
    goto/16 :goto_e3a

    .line 4398
    :sswitch_9dc
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4400
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4401
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4402
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4403
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4404
    goto/16 :goto_e3a

    .line 4388
    :sswitch_9f0
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4390
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4391
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4392
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4393
    goto/16 :goto_e3a

    .line 4378
    :sswitch_a00
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4380
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4381
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4382
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4383
    goto/16 :goto_e3a

    .line 4367
    :sswitch_a10
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4369
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4370
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4371
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4372
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4373
    goto/16 :goto_e3a

    .line 4357
    :sswitch_a24
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4359
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4360
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4361
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4362
    goto/16 :goto_e3a

    .line 4346
    :sswitch_a34
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4348
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4349
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4350
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4351
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4352
    goto/16 :goto_e3a

    .line 4335
    :sswitch_a48
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4337
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4338
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4339
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4340
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4341
    goto/16 :goto_e3a

    .line 4324
    :sswitch_a5c
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4326
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4327
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4328
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4329
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4330
    goto/16 :goto_e3a

    .line 4314
    :sswitch_a70
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4316
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4317
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4318
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4319
    goto/16 :goto_e3a

    .line 4304
    :sswitch_a80
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4306
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4307
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4308
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4309
    goto/16 :goto_e3a

    .line 4293
    :sswitch_a90
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4295
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4296
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4297
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4298
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4299
    goto/16 :goto_e3a

    .line 4283
    :sswitch_aa4
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4285
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4286
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4287
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4288
    goto/16 :goto_e3a

    .line 4273
    :sswitch_ab4
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4275
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4276
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4277
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4278
    goto/16 :goto_e3a

    .line 4262
    :sswitch_ac4
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4264
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4265
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4266
    invoke-static {p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4267
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4268
    goto/16 :goto_e3a

    .line 4252
    :sswitch_ad8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4254
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4255
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4256
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4257
    goto/16 :goto_e3a

    .line 4242
    :sswitch_ae8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4244
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4245
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4246
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4247
    goto/16 :goto_e3a

    .line 4231
    :sswitch_af8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4233
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4234
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4235
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4236
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4237
    goto/16 :goto_e3a

    .line 4221
    :sswitch_b0c
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4223
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4224
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4225
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4226
    goto/16 :goto_e3a

    .line 4210
    :sswitch_b1c
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4212
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4213
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4214
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4215
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4216
    goto/16 :goto_e3a

    .line 4199
    :sswitch_b30
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4201
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4202
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4203
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4204
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4205
    goto/16 :goto_e3a

    .line 4189
    :sswitch_b44
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4191
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4192
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4193
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4194
    goto/16 :goto_e3a

    .line 4179
    :sswitch_b54
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4181
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4182
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4183
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4184
    goto/16 :goto_e3a

    .line 4169
    :sswitch_b64
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4171
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4172
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4173
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4174
    goto/16 :goto_e3a

    .line 4159
    :sswitch_b74
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4161
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4162
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4163
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4164
    goto/16 :goto_e3a

    .line 4147
    :sswitch_b84
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4149
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4150
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4151
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4152
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4153
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 4154
    goto/16 :goto_e3a

    .line 4137
    :sswitch_b9c
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4139
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4140
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4141
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4142
    goto/16 :goto_e3a

    .line 4126
    :sswitch_bac
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4128
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4129
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4130
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4131
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4132
    goto/16 :goto_e3a

    .line 4116
    :sswitch_bc0
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4118
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4119
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4120
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4121
    goto/16 :goto_e3a

    .line 4104
    :sswitch_bd0
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4106
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4107
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4108
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4109
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4110
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 4111
    goto/16 :goto_e3a

    .line 4094
    :sswitch_be8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4096
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4097
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4098
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4099
    goto/16 :goto_e3a

    .line 4084
    :sswitch_bf8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4086
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4087
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4088
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4089
    goto/16 :goto_e3a

    .line 4072
    :sswitch_c08
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4074
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4075
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4076
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4077
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4078
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4079
    goto/16 :goto_e3a

    .line 4060
    :sswitch_c20
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4062
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4063
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4064
    new-instance v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 4065
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4066
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 4067
    goto/16 :goto_e3a

    .line 4048
    :sswitch_c38
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4050
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4051
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4052
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4053
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4054
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4055
    goto/16 :goto_e3a

    .line 4036
    :sswitch_c50
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4038
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4039
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4040
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4041
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4042
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4043
    goto/16 :goto_e3a

    .line 4026
    :sswitch_c68
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4028
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4029
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4030
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4031
    goto/16 :goto_e3a

    .line 4016
    :sswitch_c78
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4018
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4019
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4020
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4021
    goto/16 :goto_e3a

    .line 4003
    :sswitch_c88
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4005
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4006
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4007
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4008
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4010
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4011
    goto/16 :goto_e3a

    .line 3991
    :sswitch_ca4
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3993
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3994
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3995
    new-instance v2, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 3996
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3997
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    .line 3998
    goto/16 :goto_e3a

    .line 3979
    :sswitch_cbc
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3981
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3982
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3983
    new-instance v2, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 3984
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3985
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    .line 3986
    goto/16 :goto_e3a

    .line 3967
    :sswitch_cd4
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3969
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3970
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3971
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 3972
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3973
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 3974
    goto/16 :goto_e3a

    .line 3955
    :sswitch_cec
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3957
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3958
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3959
    new-instance v2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 3960
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3961
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 3962
    goto/16 :goto_e3a

    .line 3945
    :sswitch_d04
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3947
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3948
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3949
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3950
    goto/16 :goto_e3a

    .line 3935
    :sswitch_d14
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3937
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3938
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3939
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3940
    goto/16 :goto_e3a

    .line 3925
    :sswitch_d24
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3927
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3928
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3929
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3930
    goto/16 :goto_e3a

    .line 3915
    :sswitch_d34
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3917
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3918
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3919
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3920
    goto/16 :goto_e3a

    .line 3905
    :sswitch_d44
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3907
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3908
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3909
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3910
    goto/16 :goto_e3a

    .line 3895
    :sswitch_d54
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3897
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3898
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3899
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3900
    goto/16 :goto_e3a

    .line 3884
    :sswitch_d64
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3886
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3887
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3888
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3889
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3890
    goto/16 :goto_e3a

    .line 3874
    :sswitch_d78
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3876
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3877
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3878
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3879
    goto/16 :goto_e3a

    .line 3863
    :sswitch_d88
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3865
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3866
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3867
    invoke-static {p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3868
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3869
    goto/16 :goto_e3a

    .line 3852
    :sswitch_d9c
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3854
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3855
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3856
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3857
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3858
    goto/16 :goto_e3a

    .line 3841
    :sswitch_db0
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3843
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3844
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3845
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3846
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3847
    goto/16 :goto_e3a

    .line 3830
    :sswitch_dc4
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3832
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3833
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3834
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3835
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3836
    goto :goto_e3a

    .line 3819
    :sswitch_dd7
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3821
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3822
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3823
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3824
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3825
    goto :goto_e3a

    .line 3808
    :sswitch_dea
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3810
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3811
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3812
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3813
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3814
    goto :goto_e3a

    .line 3797
    :sswitch_dfd
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3799
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3800
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3801
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3802
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3803
    goto :goto_e3a

    .line 3786
    :sswitch_e10
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3788
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3789
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3790
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3791
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3792
    goto :goto_e3a

    .line 3774
    :sswitch_e23
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3776
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3777
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3778
    new-instance v2, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 3779
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3780
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    .line 3781
    nop

    .line 5814
    :goto_e3a
    return-void

    nop

    :sswitch_data_e3c
    .sparse-switch
        0x1 -> :sswitch_e23
        0x2 -> :sswitch_e10
        0x3 -> :sswitch_dfd
        0x4 -> :sswitch_dea
        0x5 -> :sswitch_dd7
        0x6 -> :sswitch_dc4
        0x7 -> :sswitch_db0
        0x8 -> :sswitch_d9c
        0x9 -> :sswitch_d88
        0xa -> :sswitch_d78
        0xb -> :sswitch_d64
        0xc -> :sswitch_d54
        0xd -> :sswitch_d44
        0xe -> :sswitch_d34
        0xf -> :sswitch_d24
        0x10 -> :sswitch_d14
        0x11 -> :sswitch_d04
        0x12 -> :sswitch_cec
        0x13 -> :sswitch_cd4
        0x14 -> :sswitch_cbc
        0x15 -> :sswitch_ca4
        0x16 -> :sswitch_c88
        0x17 -> :sswitch_c78
        0x18 -> :sswitch_c68
        0x19 -> :sswitch_c50
        0x1a -> :sswitch_c38
        0x1b -> :sswitch_c20
        0x1c -> :sswitch_c08
        0x1d -> :sswitch_bf8
        0x1e -> :sswitch_be8
        0x1f -> :sswitch_bd0
        0x20 -> :sswitch_bc0
        0x21 -> :sswitch_bac
        0x22 -> :sswitch_b9c
        0x23 -> :sswitch_b84
        0x24 -> :sswitch_b74
        0x25 -> :sswitch_b64
        0x26 -> :sswitch_b54
        0x27 -> :sswitch_b44
        0x28 -> :sswitch_b30
        0x29 -> :sswitch_b1c
        0x2a -> :sswitch_b0c
        0x2b -> :sswitch_af8
        0x2c -> :sswitch_ae8
        0x2d -> :sswitch_ad8
        0x2e -> :sswitch_ac4
        0x2f -> :sswitch_ab4
        0x30 -> :sswitch_aa4
        0x31 -> :sswitch_a90
        0x32 -> :sswitch_a80
        0x33 -> :sswitch_a70
        0x34 -> :sswitch_a5c
        0x35 -> :sswitch_a48
        0x36 -> :sswitch_a34
        0x37 -> :sswitch_a24
        0x38 -> :sswitch_a10
        0x39 -> :sswitch_a00
        0x3a -> :sswitch_9f0
        0x3b -> :sswitch_9dc
        0x3c -> :sswitch_9c8
        0x3d -> :sswitch_9b8
        0x3e -> :sswitch_9a8
        0x3f -> :sswitch_998
        0x40 -> :sswitch_988
        0x41 -> :sswitch_974
        0x42 -> :sswitch_960
        0x43 -> :sswitch_950
        0x44 -> :sswitch_940
        0x45 -> :sswitch_930
        0x46 -> :sswitch_91c
        0x47 -> :sswitch_90c
        0x48 -> :sswitch_8f8
        0x49 -> :sswitch_8e8
        0x4a -> :sswitch_8d4
        0x4b -> :sswitch_8c4
        0x4c -> :sswitch_8b4
        0x4d -> :sswitch_89c
        0x4e -> :sswitch_88c
        0x4f -> :sswitch_878
        0x50 -> :sswitch_868
        0x51 -> :sswitch_858
        0x52 -> :sswitch_844
        0x53 -> :sswitch_834
        0x54 -> :sswitch_824
        0x55 -> :sswitch_7ff
        0x56 -> :sswitch_7eb
        0x57 -> :sswitch_7db
        0x58 -> :sswitch_7b9
        0x59 -> :sswitch_7a9
        0x5a -> :sswitch_795
        0x5b -> :sswitch_785
        0x5c -> :sswitch_775
        0x5d -> :sswitch_765
        0x5e -> :sswitch_751
        0x5f -> :sswitch_73d
        0x60 -> :sswitch_72d
        0x61 -> :sswitch_715
        0x62 -> :sswitch_701
        0x63 -> :sswitch_6ed
        0x64 -> :sswitch_6dd
        0x65 -> :sswitch_6cd
        0x66 -> :sswitch_6b5
        0x67 -> :sswitch_69d
        0x68 -> :sswitch_685
        0x69 -> :sswitch_66d
        0x6a -> :sswitch_65d
        0x6b -> :sswitch_645
        0x6c -> :sswitch_631
        0x6d -> :sswitch_621
        0x6e -> :sswitch_611
        0x6f -> :sswitch_601
        0x70 -> :sswitch_5f1
        0x71 -> :sswitch_5e1
        0x72 -> :sswitch_5cd
        0x73 -> :sswitch_5b5
        0x74 -> :sswitch_5a5
        0x75 -> :sswitch_595
        0x76 -> :sswitch_57d
        0x77 -> :sswitch_565
        0x78 -> :sswitch_54d
        0x79 -> :sswitch_535
        0x7a -> :sswitch_51d
        0x7b -> :sswitch_505
        0x7c -> :sswitch_4f1
        0x7d -> :sswitch_4d5
        0x7e -> :sswitch_4c5
        0x7f -> :sswitch_4b5
        0x80 -> :sswitch_4a5
        0x81 -> :sswitch_499
        0x82 -> :sswitch_489
        0x83 -> :sswitch_479
        0x84 -> :sswitch_469
        0x85 -> :sswitch_459
        0x86 -> :sswitch_441
        0x87 -> :sswitch_431
        0x88 -> :sswitch_41d
        0x89 -> :sswitch_405
        0x8a -> :sswitch_3f5
        0x8b -> :sswitch_3e5
        0x8c -> :sswitch_3d1
        0x8d -> :sswitch_3b9
        0x8e -> :sswitch_3a1
        0x8f -> :sswitch_389
        0x90 -> :sswitch_379
        0x91 -> :sswitch_369
        0x92 -> :sswitch_355
        0x93 -> :sswitch_345
        0x94 -> :sswitch_335
        0x95 -> :sswitch_321
        0x96 -> :sswitch_309
        0x97 -> :sswitch_2f1
        0x98 -> :sswitch_2dd
        0x99 -> :sswitch_2cd
        0x9a -> :sswitch_2b9
        0x9b -> :sswitch_2a1
        0x9c -> :sswitch_291
        0x9d -> :sswitch_275
        0x9e -> :sswitch_25d
        0x9f -> :sswitch_24d
        0xa0 -> :sswitch_23d
        0xa1 -> :sswitch_22d
        0xa2 -> :sswitch_219
        0xa3 -> :sswitch_209
        0xa4 -> :sswitch_1f9
        0xa5 -> :sswitch_1e1
        0xa6 -> :sswitch_1cd
        0xa7 -> :sswitch_1bd
        0xa8 -> :sswitch_1ad
        0xa9 -> :sswitch_19d
        0xaa -> :sswitch_18d
        0xab -> :sswitch_171
        0xac -> :sswitch_159
        0xad -> :sswitch_141
        0xae -> :sswitch_12d
        0xaf -> :sswitch_11d
        0xb0 -> :sswitch_105
        0xb1 -> :sswitch_ed
        0xb2 -> :sswitch_d5
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

    .line 3725
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 3753
    const-string v0, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3754
    return-object p0

    .line 3756
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

    .line 3760
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 3761
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 3715
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 3765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3747
    const/4 p1, 0x1

    return p1
.end method
