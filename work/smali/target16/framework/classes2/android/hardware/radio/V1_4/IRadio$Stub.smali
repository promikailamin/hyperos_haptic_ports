.class public abstract Landroid/hardware/radio/V1_4/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_4/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_4/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3251
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 3254
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

    .line 3271
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 3312
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3313
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3314
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3315
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3316
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 3283
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_2e

    new-array v3, v1, [B

    fill-array-data v3, :array_42

    new-array v4, v1, [B

    fill-array-data v4, :array_56

    new-array v5, v1, [B

    fill-array-data v5, :array_6a

    new-array v6, v1, [B

    fill-array-data v6, :array_7e

    new-array v7, v1, [B

    fill-array-data v7, :array_92

    filled-new-array/range {v2 .. v7}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_2e
    .array-data 1
        -0x11t
        0x4at
        -0x49t
        0x41t
        -0x9t
        -0x19t
        0x76t
        0x2ft
        -0x4ct
        0x5et
        0x2et
        0x24t
        -0x36t
        -0x7dt
        -0x79t
        0x1ft
        0x72t
        0x0t
        0x6ct
        -0x20t
        0x5ft
        0x57t
        -0x56t
        -0x66t
        -0x23t
        -0x3bt
        0x74t
        -0x77t
        0x3dt
        -0x2et
        -0x68t
        0x72t
    .end array-data

    :array_42
    .array-data 1
        -0x5ft
        -0x3at
        -0x50t
        0x76t
        0x1bt
        -0x35t
        -0x77t
        -0x2at
        -0x41t
        0x15t
        -0x5ft
        0x56t
        -0x7t
        0x30t
        0x6bt
        -0x80t
        -0x70t
        -0x4dt
        -0x57t
        0x16t
        -0x5ft
        0x5ft
        -0x16t
        0x16t
        -0x77t
        -0x4ct
        -0x50t
        -0x3ft
        0x73t
        -0x72t
        0x38t
        0x2ft
    .end array-data

    :array_56
    .array-data 1
        0x2bt
        0x5at
        -0x2t
        -0xat
        -0x72t
        0x3et
        0x2ft
        -0xft
        -0x26t
        -0x4at
        0x3et
        0x4ft
        0x2et
        -0x1bt
        0x73t
        0x37t
        -0x11t
        0x26t
        0x35t
        -0x14t
        -0x7ft
        0x2ft
        0x49t
        0x8t
        0xct
        -0x53t
        -0x4t
        -0x17t
        0x66t
        -0x2dt
        0x3bt
        0x52t
    .end array-data

    :array_6a
    .array-data 1
        -0x7at
        -0x5t
        0x7t
        -0x66t
        0x60t
        0xbt
        0x23t
        0x1t
        -0x59t
        0x52t
        0x24t
        -0x63t
        -0x5t
        -0x4t
        0x53t
        -0x68t
        0x3at
        0x79t
        0x5dt
        0x75t
        0x2ft
        0x11t
        -0x56t
        -0x44t
        -0x4at
        -0x7dt
        0x15t
        -0x5ft
        -0x77t
        -0xat
        -0x37t
        -0x5et
    .end array-data

    :array_7e
    .array-data 1
        -0x31t
        -0x56t
        -0x50t
        -0x1ct
        0x5ct
        0x5dt
        0x7bt
        0x35t
        -0x6bt
        0x3t
        0x2dt
        0x64t
        -0x63t
        -0x5et
        -0x62t
        -0x29t
        0x12t
        -0x17t
        0x20t
        -0x7t
        0x56t
        -0x3ft
        0x36t
        0x71t
        -0x11t
        -0x2dt
        0x56t
        0x2t
        -0x6t
        -0x7ft
        -0x37t
        0x23t
    .end array-data

    :array_92
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
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3259
    new-instance v0, Ljava/util/ArrayList;

    const-string v5, "android.hardware.radio@1.0::IRadio"

    const-string v6, "android.hidl.base@1.0::IBase"

    const-string v1, "android.hardware.radio@1.4::IRadio"

    const-string v2, "android.hardware.radio@1.3::IRadio"

    const-string v3, "android.hardware.radio@1.2::IRadio"

    const-string v4, "android.hardware.radio@1.1::IRadio"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 3277
    const-string v0, "android.hardware.radio@1.4::IRadio"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 3300
    const/4 p1, 0x1

    return p1
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 3322
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3324
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3352
    const-string v3, "android.hardware.radio@1.3::IRadio"

    const-string v4, "android.hardware.radio@1.2::IRadio"

    const-string v5, "android.hardware.radio@1.1::IRadio"

    const-string v6, "android.hidl.base@1.0::IBase"

    const/4 v7, 0x0

    const-string v8, "android.hardware.radio@1.4::IRadio"

    const-string v9, "android.hardware.radio@1.0::IRadio"

    sparse-switch p1, :sswitch_data_b36

    goto/16 :goto_b35

    .line 5049
    :sswitch_12
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5051
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->notifySyspropsChanged()V

    .line 5052
    goto/16 :goto_b35

    .line 5038
    :sswitch_1a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5040
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5041
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5042
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5043
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5044
    goto/16 :goto_b35

    .line 5028
    :sswitch_2c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5030
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->ping()V

    .line 5031
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5032
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5033
    goto/16 :goto_b35

    .line 5023
    :sswitch_3a
    goto/16 :goto_b35

    .line 5015
    :sswitch_3c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5017
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setHALInstrumentation()V

    .line 5018
    goto/16 :goto_b35

    .line 4981
    :sswitch_44
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4983
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4984
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4986
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 4988
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4989
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4990
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4991
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 4992
    nop

    :goto_6b
    if-ge v7, v3, :cond_8c

    .line 4994
    mul-int/lit8 v5, v7, 0x20

    int-to-long v5, v5

    .line 4995
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 4997
    if-eqz v8, :cond_84

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_84

    .line 5001
    invoke-virtual {v4, v5, v6, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5002
    nop

    .line 4992
    add-int/lit8 v7, v7, 0x1

    goto :goto_6b

    .line 4998
    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5005
    :cond_8c
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5007
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5009
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5010
    goto/16 :goto_b35

    .line 4970
    :sswitch_99
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4972
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 4973
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4974
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4975
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4976
    goto/16 :goto_b35

    .line 4958
    :sswitch_ab
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4960
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v3

    .line 4961
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4962
    invoke-virtual {p0, v3, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 4963
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4964
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4965
    goto/16 :goto_b35

    .line 4947
    :sswitch_c1
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4949
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4950
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4951
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4952
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4953
    goto/16 :goto_b35

    .line 4938
    :sswitch_d3
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4940
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4941
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getSignalStrength_1_4(I)V

    .line 4942
    goto/16 :goto_b35

    .line 4929
    :sswitch_df
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4931
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4932
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAllowedCarriers_1_4(I)V

    .line 4933
    goto/16 :goto_b35

    .line 4917
    :sswitch_eb
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4919
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4920
    new-instance v3, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v3}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 4921
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4922
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4923
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setAllowedCarriers_1_4(ILandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    .line 4924
    goto/16 :goto_b35

    .line 4907
    :sswitch_103
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4909
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4910
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4911
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setPreferredNetworkTypeBitmap(II)V

    .line 4912
    goto/16 :goto_b35

    .line 4898
    :sswitch_113
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4900
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4901
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getPreferredNetworkTypeBitmap(I)V

    .line 4902
    goto/16 :goto_b35

    .line 4887
    :sswitch_11f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4889
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4890
    new-instance v3, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v3}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 4891
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4892
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startNetworkScan_1_4(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 4893
    goto/16 :goto_b35

    .line 4871
    :sswitch_133
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4873
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4874
    move v3, v2

    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 4875
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4876
    move v1, v3

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4877
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v4

    .line 4878
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4879
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 4880
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    .line 4881
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_4/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    .line 4882
    goto/16 :goto_b35

    .line 4861
    :sswitch_15e
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4863
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4864
    invoke-static {p2}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4865
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setDataProfile_1_4(ILjava/util/ArrayList;)V

    .line 4866
    goto/16 :goto_b35

    .line 4850
    :sswitch_16e
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4852
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4853
    new-instance v2, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    .line 4854
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4855
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setInitialAttachApn_1_4(ILandroid/hardware/radio/V1_4/DataProfileInfo;)V

    .line 4856
    goto/16 :goto_b35

    .line 4834
    :sswitch_182
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4836
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4837
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4838
    new-instance v3, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    .line 4839
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4840
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4841
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4842
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v6

    .line 4843
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v7

    .line 4844
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setupDataCall_1_4(IILandroid/hardware/radio/V1_4/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4845
    goto/16 :goto_b35

    .line 4825
    :sswitch_1ab
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4827
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4828
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getModemStackStatus(I)V

    .line 4829
    goto/16 :goto_b35

    .line 4815
    :sswitch_1b7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4817
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4818
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4819
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->enableModem(IZ)V

    .line 4820
    goto/16 :goto_b35

    .line 4804
    :sswitch_1c7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4806
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4807
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4808
    invoke-static {p2}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4809
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSystemSelectionChannels(IZLjava/util/ArrayList;)V

    .line 4810
    goto/16 :goto_b35

    .line 4793
    :sswitch_1db
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4795
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4796
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4797
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4798
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 4799
    goto/16 :goto_b35

    .line 4775
    :sswitch_1ef
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4777
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4778
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4779
    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4780
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4781
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4782
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 4783
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 4784
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 4785
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v8

    .line 4786
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v9

    .line 4787
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4788
    goto/16 :goto_b35

    .line 4760
    :sswitch_220
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4762
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4763
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4764
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4765
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 4766
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v5

    .line 4767
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v6

    .line 4768
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 4769
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 4770
    goto/16 :goto_b35

    .line 4747
    :sswitch_245
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4749
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4750
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4751
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4752
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 4753
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4754
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 4755
    goto/16 :goto_b35

    .line 4737
    :sswitch_262
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4739
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4740
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4741
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 4742
    goto/16 :goto_b35

    .line 4726
    :sswitch_272
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4728
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4729
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 4730
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4731
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 4732
    goto/16 :goto_b35

    .line 4716
    :sswitch_286
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4718
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4719
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4720
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopKeepalive(II)V

    .line 4721
    goto/16 :goto_b35

    .line 4705
    :sswitch_296
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4707
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4708
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 4709
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4710
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 4711
    goto/16 :goto_b35

    .line 4696
    :sswitch_2aa
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4698
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4699
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopNetworkScan(I)V

    .line 4700
    goto/16 :goto_b35

    .line 4685
    :sswitch_2b6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4687
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4688
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 4689
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4690
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 4691
    goto/16 :goto_b35

    .line 4675
    :sswitch_2ca
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4677
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4678
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4679
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 4680
    goto/16 :goto_b35

    .line 4664
    :sswitch_2da
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4666
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4667
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 4668
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4669
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 4670
    goto/16 :goto_b35

    .line 4656
    :sswitch_2ee
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4658
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->responseAcknowledgement()V

    .line 4659
    goto/16 :goto_b35

    .line 4646
    :sswitch_2f6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4648
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4649
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4650
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSimCardPower(IZ)V

    .line 4651
    goto/16 :goto_b35

    .line 4636
    :sswitch_306
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4638
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4639
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4640
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setIndicationFilter(II)V

    .line 4641
    goto/16 :goto_b35

    .line 4625
    :sswitch_316
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4627
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4628
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4629
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4630
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 4631
    goto/16 :goto_b35

    .line 4616
    :sswitch_32a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4618
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4619
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAllowedCarriers(I)V

    .line 4620
    goto/16 :goto_b35

    .line 4604
    :sswitch_336
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4606
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4607
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4608
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4609
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4610
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4611
    goto/16 :goto_b35

    .line 4595
    :sswitch_34e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4597
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4598
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getModemActivityInfo(I)V

    .line 4599
    goto/16 :goto_b35

    .line 4586
    :sswitch_35a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4588
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4589
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->pullLceData(I)V

    .line 4590
    goto/16 :goto_b35

    .line 4577
    :sswitch_366
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4579
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4580
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopLceService(I)V

    .line 4581
    goto/16 :goto_b35

    .line 4566
    :sswitch_372
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4568
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4569
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4570
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4571
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startLceService(IIZ)V

    .line 4572
    goto/16 :goto_b35

    .line 4555
    :sswitch_386
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4557
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4558
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4559
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4560
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4561
    goto/16 :goto_b35

    .line 4546
    :sswitch_39a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4548
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4549
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getRadioCapability(I)V

    .line 4550
    goto/16 :goto_b35

    .line 4537
    :sswitch_3a6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4539
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4540
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->requestShutdown(I)V

    .line 4541
    goto/16 :goto_b35

    .line 4526
    :sswitch_3b2
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4528
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4529
    invoke-static {p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4530
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4531
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 4532
    goto/16 :goto_b35

    .line 4514
    :sswitch_3c6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4516
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4517
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4518
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4519
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4520
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 4521
    goto/16 :goto_b35

    .line 4505
    :sswitch_3de
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4507
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4508
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getHardwareConfig(I)V

    .line 4509
    goto/16 :goto_b35

    .line 4495
    :sswitch_3ea
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4497
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4498
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4499
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setDataAllowed(IZ)V

    .line 4500
    goto/16 :goto_b35

    .line 4484
    :sswitch_3fa
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4486
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4487
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 4488
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4489
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 4490
    goto/16 :goto_b35

    .line 4474
    :sswitch_40e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4476
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4477
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4478
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvResetConfig(II)V

    .line 4479
    goto/16 :goto_b35

    .line 4464
    :sswitch_41e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4466
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4467
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4468
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 4469
    goto/16 :goto_b35

    .line 4453
    :sswitch_42e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4455
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4456
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 4457
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4458
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 4459
    goto/16 :goto_b35

    .line 4443
    :sswitch_442
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4445
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4446
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4447
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvReadItem(II)V

    .line 4448
    goto/16 :goto_b35

    .line 4432
    :sswitch_452
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4434
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4435
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4436
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4437
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4438
    goto/16 :goto_b35

    .line 4422
    :sswitch_466
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4424
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4425
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4426
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 4427
    goto/16 :goto_b35

    .line 4411
    :sswitch_476
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4413
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4414
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4415
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4416
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 4417
    goto/16 :goto_b35

    .line 4400
    :sswitch_48a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4402
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4403
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4404
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4405
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4406
    goto/16 :goto_b35

    .line 4389
    :sswitch_49e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4391
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4392
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 4393
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4394
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 4395
    goto/16 :goto_b35

    .line 4380
    :sswitch_4b2
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4382
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4383
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getImsRegistrationState(I)V

    .line 4384
    goto/16 :goto_b35

    .line 4367
    :sswitch_4be
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4369
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4370
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4371
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4372
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4373
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4374
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 4375
    goto/16 :goto_b35

    .line 4357
    :sswitch_4da
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4359
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4360
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4361
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCellInfoListRate(II)V

    .line 4362
    goto/16 :goto_b35

    .line 4348
    :sswitch_4ea
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4350
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4351
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCellInfoList(I)V

    .line 4352
    goto/16 :goto_b35

    .line 4339
    :sswitch_4f6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4341
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4342
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 4343
    goto/16 :goto_b35

    .line 4329
    :sswitch_502
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4331
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4332
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4333
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 4334
    goto/16 :goto_b35

    .line 4318
    :sswitch_512
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4320
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4321
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4322
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4323
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 4324
    goto/16 :goto_b35

    .line 4308
    :sswitch_526
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4310
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4311
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4312
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 4313
    goto/16 :goto_b35

    .line 4299
    :sswitch_536
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4301
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4302
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 4303
    goto/16 :goto_b35

    .line 4290
    :sswitch_542
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4292
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4293
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 4294
    goto/16 :goto_b35

    .line 4280
    :sswitch_54e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4282
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4283
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4284
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 4285
    goto/16 :goto_b35

    .line 4270
    :sswitch_55e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4272
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4273
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4274
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 4275
    goto/16 :goto_b35

    .line 4261
    :sswitch_56e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4263
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4264
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getSmscAddress(I)V

    .line 4265
    goto/16 :goto_b35

    .line 4252
    :sswitch_57a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4254
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4255
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 4256
    goto/16 :goto_b35

    .line 4243
    :sswitch_586
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4245
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4246
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDeviceIdentity(I)V

    .line 4247
    goto/16 :goto_b35

    .line 4233
    :sswitch_592
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4235
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4236
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4237
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 4238
    goto/16 :goto_b35

    .line 4222
    :sswitch_5a2
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4224
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4225
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 4226
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4227
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 4228
    goto/16 :goto_b35

    .line 4213
    :sswitch_5b6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4215
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4216
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCDMASubscription(I)V

    .line 4217
    goto/16 :goto_b35

    .line 4203
    :sswitch_5c2
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4205
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4206
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4207
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 4208
    goto/16 :goto_b35

    .line 4193
    :sswitch_5d2
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4195
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4196
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4197
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4198
    goto/16 :goto_b35

    .line 4184
    :sswitch_5e2
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4186
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4187
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 4188
    goto/16 :goto_b35

    .line 4174
    :sswitch_5ee
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4176
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4177
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4178
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 4179
    goto/16 :goto_b35

    .line 4164
    :sswitch_5fe
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4166
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4167
    invoke-static {p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4168
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4169
    goto/16 :goto_b35

    .line 4155
    :sswitch_60e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4157
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4158
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 4159
    goto/16 :goto_b35

    .line 4144
    :sswitch_61a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4146
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4147
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 4148
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4149
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 4150
    goto/16 :goto_b35

    .line 4133
    :sswitch_62e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4135
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4136
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 4137
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4138
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 4139
    goto/16 :goto_b35

    .line 4121
    :sswitch_642
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4123
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4124
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4125
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4126
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 4127
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 4128
    goto/16 :goto_b35

    .line 4111
    :sswitch_65a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4113
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4114
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4115
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 4116
    goto/16 :goto_b35

    .line 4102
    :sswitch_66a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4104
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4105
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 4106
    goto/16 :goto_b35

    .line 4092
    :sswitch_676
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4094
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4095
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4096
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 4097
    goto/16 :goto_b35

    .line 4083
    :sswitch_686
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4085
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4086
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getTTYMode(I)V

    .line 4087
    goto/16 :goto_b35

    .line 4073
    :sswitch_692
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4075
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4076
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4077
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setTTYMode(II)V

    .line 4078
    goto/16 :goto_b35

    .line 4064
    :sswitch_6a2
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4066
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4067
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 4068
    goto/16 :goto_b35

    .line 4054
    :sswitch_6ae
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4056
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4057
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4058
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 4059
    goto/16 :goto_b35

    .line 4044
    :sswitch_6be
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4046
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4047
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4048
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 4049
    goto/16 :goto_b35

    .line 4034
    :sswitch_6ce
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4036
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4037
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4038
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 4039
    goto/16 :goto_b35

    .line 4025
    :sswitch_6de
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4027
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4028
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getNeighboringCids(I)V

    .line 4029
    goto/16 :goto_b35

    .line 4016
    :sswitch_6ea
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4018
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4019
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 4020
    goto/16 :goto_b35

    .line 4006
    :sswitch_6f6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4008
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4010
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 4011
    goto/16 :goto_b35

    .line 3997
    :sswitch_706
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3999
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4000
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->explicitCallTransfer(I)V

    .line 4001
    goto/16 :goto_b35

    .line 3987
    :sswitch_712
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3989
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3990
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3991
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 3992
    goto/16 :goto_b35

    .line 3977
    :sswitch_722
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3979
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3980
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3981
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 3982
    goto/16 :goto_b35

    .line 3967
    :sswitch_732
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3969
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3970
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3971
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 3972
    goto/16 :goto_b35

    .line 3958
    :sswitch_742
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3960
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3961
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAvailableBandModes(I)V

    .line 3962
    goto/16 :goto_b35

    .line 3948
    :sswitch_74e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3950
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3951
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3952
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setBandMode(II)V

    .line 3953
    goto/16 :goto_b35

    .line 3938
    :sswitch_75e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3940
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3941
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3942
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 3943
    goto/16 :goto_b35

    .line 3927
    :sswitch_76e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3929
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3930
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 3931
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3932
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 3933
    goto/16 :goto_b35

    .line 3917
    :sswitch_782
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3919
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3920
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3921
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 3922
    goto/16 :goto_b35

    .line 3908
    :sswitch_792
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3910
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3911
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDataCallList(I)V

    .line 3912
    goto/16 :goto_b35

    .line 3899
    :sswitch_79e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3901
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3902
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getClip(I)V

    .line 3903
    goto/16 :goto_b35

    .line 3890
    :sswitch_7aa
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3892
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3893
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getMute(I)V

    .line 3894
    goto/16 :goto_b35

    .line 3880
    :sswitch_7b6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3882
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3884
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setMute(IZ)V

    .line 3885
    goto/16 :goto_b35

    .line 3870
    :sswitch_7c6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3872
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3873
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3874
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->separateConnection(II)V

    .line 3875
    goto/16 :goto_b35

    .line 3861
    :sswitch_7d6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3863
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3864
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getBasebandVersion(I)V

    .line 3865
    goto/16 :goto_b35

    .line 3852
    :sswitch_7e2
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3854
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3855
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopDtmf(I)V

    .line 3856
    goto/16 :goto_b35

    .line 3842
    :sswitch_7ee
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3844
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3845
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3846
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 3847
    goto/16 :goto_b35

    .line 3833
    :sswitch_7fe
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3835
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3836
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAvailableNetworks(I)V

    .line 3837
    goto/16 :goto_b35

    .line 3823
    :sswitch_80a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3825
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3826
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3827
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 3828
    goto/16 :goto_b35

    .line 3814
    :sswitch_81a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3816
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3817
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 3818
    goto/16 :goto_b35

    .line 3805
    :sswitch_826
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3807
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3808
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 3809
    goto/16 :goto_b35

    .line 3793
    :sswitch_832
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3795
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3796
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3797
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3798
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3799
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3800
    goto/16 :goto_b35

    .line 3779
    :sswitch_84a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3781
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3782
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3783
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3784
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3785
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3786
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3787
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 3788
    goto/16 :goto_b35

    .line 3766
    :sswitch_86b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3768
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3769
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3770
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3771
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3772
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3773
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3774
    goto/16 :goto_b35

    .line 3755
    :sswitch_888
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3757
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3758
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3759
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3760
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 3761
    goto/16 :goto_b35

    .line 3746
    :sswitch_89c
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3748
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3749
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acceptCall(I)V

    .line 3750
    goto/16 :goto_b35

    .line 3735
    :sswitch_8a8
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3737
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3738
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3739
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3740
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 3741
    goto/16 :goto_b35

    .line 3724
    :sswitch_8bc
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3726
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3727
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3728
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3729
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCallWaiting(IZI)V

    .line 3730
    goto/16 :goto_b35

    .line 3714
    :sswitch_8d0
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3716
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3717
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3718
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCallWaiting(II)V

    .line 3719
    goto/16 :goto_b35

    .line 3703
    :sswitch_8e0
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3705
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3706
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3707
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3708
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3709
    goto/16 :goto_b35

    .line 3692
    :sswitch_8f4
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3694
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3695
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3696
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3697
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3698
    goto/16 :goto_b35

    .line 3682
    :sswitch_908
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3684
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3685
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3686
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setClir(II)V

    .line 3687
    goto/16 :goto_b35

    .line 3673
    :sswitch_918
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3675
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3676
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getClir(I)V

    .line 3677
    goto/16 :goto_b35

    .line 3664
    :sswitch_924
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3666
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3667
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->cancelPendingUssd(I)V

    .line 3668
    goto/16 :goto_b35

    .line 3654
    :sswitch_930
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3656
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3657
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3658
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 3659
    goto/16 :goto_b35

    .line 3643
    :sswitch_940
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3645
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3646
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 3647
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3648
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 3649
    goto/16 :goto_b35

    .line 3628
    :sswitch_954
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3630
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3631
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3632
    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 3633
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3634
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 3635
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 3636
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 3637
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 3638
    goto/16 :goto_b35

    .line 3617
    :sswitch_979
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3619
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3620
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3621
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3622
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3623
    goto/16 :goto_b35

    .line 3606
    :sswitch_98d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3608
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3609
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3610
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3611
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3612
    goto/16 :goto_b35

    .line 3596
    :sswitch_9a1
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3598
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3599
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3600
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 3601
    goto/16 :goto_b35

    .line 3586
    :sswitch_9b1
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3588
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3589
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3590
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setRadioPower(IZ)V

    .line 3591
    goto/16 :goto_b35

    .line 3577
    :sswitch_9c1
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3579
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3580
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getOperator(I)V

    .line 3581
    goto/16 :goto_b35

    .line 3568
    :sswitch_9cd
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3570
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3571
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDataRegistrationState(I)V

    .line 3572
    goto/16 :goto_b35

    .line 3559
    :sswitch_9d9
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3561
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3562
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 3563
    goto/16 :goto_b35

    .line 3550
    :sswitch_9e5
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3552
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3553
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getSignalStrength(I)V

    .line 3554
    goto/16 :goto_b35

    .line 3541
    :sswitch_9f1
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3543
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3544
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getLastCallFailCause(I)V

    .line 3545
    goto/16 :goto_b35

    .line 3532
    :sswitch_9fd
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3534
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3535
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->rejectCall(I)V

    .line 3536
    goto/16 :goto_b35

    .line 3523
    :sswitch_a09
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3525
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3526
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->conference(I)V

    .line 3527
    goto/16 :goto_b35

    .line 3514
    :sswitch_a15
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3516
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3517
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 3518
    goto/16 :goto_b35

    .line 3505
    :sswitch_a21
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3507
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3508
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 3509
    goto/16 :goto_b35

    .line 3496
    :sswitch_a2d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3498
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3499
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 3500
    goto/16 :goto_b35

    .line 3486
    :sswitch_a39
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3488
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3489
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3490
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->hangup(II)V

    .line 3491
    goto/16 :goto_b35

    .line 3476
    :sswitch_a49
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3478
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3479
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3480
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 3481
    goto/16 :goto_b35

    .line 3465
    :sswitch_a59
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3467
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3468
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 3469
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3470
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 3471
    goto/16 :goto_b35

    .line 3456
    :sswitch_a6d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3458
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3459
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCurrentCalls(I)V

    .line 3460
    goto/16 :goto_b35

    .line 3446
    :sswitch_a79
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3448
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3449
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3450
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 3451
    goto/16 :goto_b35

    .line 3434
    :sswitch_a89
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3436
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3437
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3438
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3439
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3440
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3441
    goto/16 :goto_b35

    .line 3422
    :sswitch_aa1
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3424
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3425
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3426
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3427
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3428
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3429
    goto/16 :goto_b35

    .line 3410
    :sswitch_ab9
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3412
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3413
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3414
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3415
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3416
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3417
    goto :goto_b35

    .line 3399
    :sswitch_ad0
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3401
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3402
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3403
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3404
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3405
    goto :goto_b35

    .line 3387
    :sswitch_ae3
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3389
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3390
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3391
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3392
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3393
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3394
    goto :goto_b35

    .line 3376
    :sswitch_afa
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3378
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3379
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3380
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3381
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3382
    goto :goto_b35

    .line 3367
    :sswitch_b0d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3369
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3370
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getIccCardStatus(I)V

    .line 3371
    goto :goto_b35

    .line 3355
    :sswitch_b18
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3357
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 3358
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v3

    .line 3359
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 3360
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3361
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3362
    nop

    .line 5061
    :goto_b35
    return-void

    :sswitch_data_b36
    .sparse-switch
        0x1 -> :sswitch_b18
        0x2 -> :sswitch_b0d
        0x3 -> :sswitch_afa
        0x4 -> :sswitch_ae3
        0x5 -> :sswitch_ad0
        0x6 -> :sswitch_ab9
        0x7 -> :sswitch_aa1
        0x8 -> :sswitch_a89
        0x9 -> :sswitch_a79
        0xa -> :sswitch_a6d
        0xb -> :sswitch_a59
        0xc -> :sswitch_a49
        0xd -> :sswitch_a39
        0xe -> :sswitch_a2d
        0xf -> :sswitch_a21
        0x10 -> :sswitch_a15
        0x11 -> :sswitch_a09
        0x12 -> :sswitch_9fd
        0x13 -> :sswitch_9f1
        0x14 -> :sswitch_9e5
        0x15 -> :sswitch_9d9
        0x16 -> :sswitch_9cd
        0x17 -> :sswitch_9c1
        0x18 -> :sswitch_9b1
        0x19 -> :sswitch_9a1
        0x1a -> :sswitch_98d
        0x1b -> :sswitch_979
        0x1c -> :sswitch_954
        0x1d -> :sswitch_940
        0x1e -> :sswitch_930
        0x1f -> :sswitch_924
        0x20 -> :sswitch_918
        0x21 -> :sswitch_908
        0x22 -> :sswitch_8f4
        0x23 -> :sswitch_8e0
        0x24 -> :sswitch_8d0
        0x25 -> :sswitch_8bc
        0x26 -> :sswitch_8a8
        0x27 -> :sswitch_89c
        0x28 -> :sswitch_888
        0x29 -> :sswitch_86b
        0x2a -> :sswitch_84a
        0x2b -> :sswitch_832
        0x2c -> :sswitch_826
        0x2d -> :sswitch_81a
        0x2e -> :sswitch_80a
        0x2f -> :sswitch_7fe
        0x30 -> :sswitch_7ee
        0x31 -> :sswitch_7e2
        0x32 -> :sswitch_7d6
        0x33 -> :sswitch_7c6
        0x34 -> :sswitch_7b6
        0x35 -> :sswitch_7aa
        0x36 -> :sswitch_79e
        0x37 -> :sswitch_792
        0x38 -> :sswitch_782
        0x39 -> :sswitch_76e
        0x3a -> :sswitch_75e
        0x3b -> :sswitch_74e
        0x3c -> :sswitch_742
        0x3d -> :sswitch_732
        0x3e -> :sswitch_722
        0x3f -> :sswitch_712
        0x40 -> :sswitch_706
        0x41 -> :sswitch_6f6
        0x42 -> :sswitch_6ea
        0x43 -> :sswitch_6de
        0x44 -> :sswitch_6ce
        0x45 -> :sswitch_6be
        0x46 -> :sswitch_6ae
        0x47 -> :sswitch_6a2
        0x48 -> :sswitch_692
        0x49 -> :sswitch_686
        0x4a -> :sswitch_676
        0x4b -> :sswitch_66a
        0x4c -> :sswitch_65a
        0x4d -> :sswitch_642
        0x4e -> :sswitch_62e
        0x4f -> :sswitch_61a
        0x50 -> :sswitch_60e
        0x51 -> :sswitch_5fe
        0x52 -> :sswitch_5ee
        0x53 -> :sswitch_5e2
        0x54 -> :sswitch_5d2
        0x55 -> :sswitch_5c2
        0x56 -> :sswitch_5b6
        0x57 -> :sswitch_5a2
        0x58 -> :sswitch_592
        0x59 -> :sswitch_586
        0x5a -> :sswitch_57a
        0x5b -> :sswitch_56e
        0x5c -> :sswitch_55e
        0x5d -> :sswitch_54e
        0x5e -> :sswitch_542
        0x5f -> :sswitch_536
        0x60 -> :sswitch_526
        0x61 -> :sswitch_512
        0x62 -> :sswitch_502
        0x63 -> :sswitch_4f6
        0x64 -> :sswitch_4ea
        0x65 -> :sswitch_4da
        0x66 -> :sswitch_4be
        0x67 -> :sswitch_4b2
        0x68 -> :sswitch_49e
        0x69 -> :sswitch_48a
        0x6a -> :sswitch_476
        0x6b -> :sswitch_466
        0x6c -> :sswitch_452
        0x6d -> :sswitch_442
        0x6e -> :sswitch_42e
        0x6f -> :sswitch_41e
        0x70 -> :sswitch_40e
        0x71 -> :sswitch_3fa
        0x72 -> :sswitch_3ea
        0x73 -> :sswitch_3de
        0x74 -> :sswitch_3c6
        0x75 -> :sswitch_3b2
        0x76 -> :sswitch_3a6
        0x77 -> :sswitch_39a
        0x78 -> :sswitch_386
        0x79 -> :sswitch_372
        0x7a -> :sswitch_366
        0x7b -> :sswitch_35a
        0x7c -> :sswitch_34e
        0x7d -> :sswitch_336
        0x7e -> :sswitch_32a
        0x7f -> :sswitch_316
        0x80 -> :sswitch_306
        0x81 -> :sswitch_2f6
        0x82 -> :sswitch_2ee
        0x83 -> :sswitch_2da
        0x84 -> :sswitch_2ca
        0x85 -> :sswitch_2b6
        0x86 -> :sswitch_2aa
        0x87 -> :sswitch_296
        0x88 -> :sswitch_286
        0x89 -> :sswitch_272
        0x8a -> :sswitch_262
        0x8b -> :sswitch_245
        0x8c -> :sswitch_220
        0x8d -> :sswitch_1ef
        0x8e -> :sswitch_1db
        0x8f -> :sswitch_1c7
        0x90 -> :sswitch_1b7
        0x91 -> :sswitch_1ab
        0x92 -> :sswitch_182
        0x93 -> :sswitch_16e
        0x94 -> :sswitch_15e
        0x95 -> :sswitch_133
        0x96 -> :sswitch_11f
        0x97 -> :sswitch_113
        0x98 -> :sswitch_103
        0x99 -> :sswitch_eb
        0x9a -> :sswitch_df
        0x9b -> :sswitch_d3
        0xf43484e -> :sswitch_c1
        0xf444247 -> :sswitch_ab
        0xf445343 -> :sswitch_99
        0xf485348 -> :sswitch_44
        0xf494e54 -> :sswitch_3c
        0xf4c5444 -> :sswitch_3a
        0xf504e47 -> :sswitch_2c
        0xf524546 -> :sswitch_1a
        0xf535953 -> :sswitch_12
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 3306
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 3334
    const-string v0, "android.hardware.radio@1.4::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3335
    return-object p0

    .line 3337
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

    .line 3341
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 3342
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 3296
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 3346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3328
    const/4 p1, 0x1

    return p1
.end method
