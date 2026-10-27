.class public abstract Landroid/hardware/radio/V1_4/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Landroid/hardware/radio/V1_4/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_4/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3215
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 3218
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

    .line 3235
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 3276
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3277
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3278
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3279
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3280
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

    .line 3247
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

    :array_42
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

    :array_56
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

    :array_6a
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

    :array_7e
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

    .line 3223
    new-instance v0, Ljava/util/ArrayList;

    const-string v5, "android.hardware.radio@1.0::IRadioResponse"

    const-string v6, "android.hidl.base@1.0::IBase"

    const-string v1, "android.hardware.radio@1.4::IRadioResponse"

    const-string v2, "android.hardware.radio@1.3::IRadioResponse"

    const-string v3, "android.hardware.radio@1.2::IRadioResponse"

    const-string v4, "android.hardware.radio@1.1::IRadioResponse"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 3241
    const-string v0, "android.hardware.radio@1.4::IRadioResponse"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 3264
    const/4 p1, 0x1

    return p1
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 3286
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3288
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3316
    const-string v3, "android.hardware.radio@1.3::IRadioResponse"

    const-string v4, "android.hardware.radio@1.1::IRadioResponse"

    const/4 v5, 0x0

    const-string v6, "android.hidl.base@1.0::IBase"

    const-string v7, "android.hardware.radio@1.2::IRadioResponse"

    const-string v8, "android.hardware.radio@1.4::IRadioResponse"

    const-string v9, "android.hardware.radio@1.0::IRadioResponse"

    sparse-switch p1, :sswitch_data_cb2

    goto/16 :goto_cb0

    .line 5129
    :sswitch_12
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5131
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->notifySyspropsChanged()V

    .line 5132
    goto/16 :goto_cb0

    .line 5118
    :sswitch_1a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5120
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5121
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5122
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5123
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5124
    goto/16 :goto_cb0

    .line 5108
    :sswitch_2c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5110
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->ping()V

    .line 5111
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5112
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5113
    goto/16 :goto_cb0

    .line 5103
    :sswitch_3a
    goto/16 :goto_cb0

    .line 5095
    :sswitch_3c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5097
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setHALInstrumentation()V

    .line 5098
    goto/16 :goto_cb0

    .line 5061
    :sswitch_44
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5063
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5064
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5066
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 5068
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5069
    const-wide/16 v6, 0x8

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5070
    const-wide/16 v6, 0xc

    invoke-virtual {v1, v6, v7, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5071
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v6, v3, 0x20

    invoke-direct {v4, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 5072
    nop

    :goto_6b
    if-ge v5, v3, :cond_8c

    .line 5074
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 5075
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 5077
    if-eqz v8, :cond_84

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_84

    .line 5081
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5082
    nop

    .line 5072
    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    .line 5078
    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5085
    :cond_8c
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5087
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5089
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5090
    goto/16 :goto_cb0

    .line 5050
    :sswitch_99
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5052
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 5053
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5054
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5055
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5056
    goto/16 :goto_cb0

    .line 5038
    :sswitch_ab
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5040
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v3

    .line 5041
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5042
    invoke-virtual {p0, v3, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5043
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5044
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5045
    goto/16 :goto_cb0

    .line 5027
    :sswitch_c1
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5029
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5030
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5031
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5032
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5033
    goto/16 :goto_cb0

    .line 5015
    :sswitch_d3
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5017
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5018
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5019
    new-instance v3, Landroid/hardware/radio/V1_4/SignalStrength;

    invoke-direct {v3}, Landroid/hardware/radio/V1_4/SignalStrength;-><init>()V

    .line 5020
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_4/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5021
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getSignalStrengthResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V

    .line 5022
    goto/16 :goto_cb0

    .line 5002
    :sswitch_eb
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5004
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5005
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5006
    new-instance v3, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v3}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 5007
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5008
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5009
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    .line 5010
    goto/16 :goto_cb0

    .line 4992
    :sswitch_107
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4994
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4995
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4996
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4997
    goto/16 :goto_cb0

    .line 4980
    :sswitch_117
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4982
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4983
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4984
    new-instance v3, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_4/SetupDataCallResult;-><init>()V

    .line 4985
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4986
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setupDataCallResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SetupDataCallResult;)V

    .line 4987
    goto/16 :goto_cb0

    .line 4969
    :sswitch_12f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4971
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4972
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4973
    invoke-static {p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4974
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDataCallListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4975
    goto/16 :goto_cb0

    .line 4959
    :sswitch_143
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4961
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4962
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4963
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4964
    goto/16 :goto_cb0

    .line 4948
    :sswitch_153
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4950
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4951
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4952
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4953
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4954
    goto/16 :goto_cb0

    .line 4936
    :sswitch_167
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4938
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4939
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4940
    new-instance v3, Landroid/hardware/radio/V1_4/CardStatus;

    invoke-direct {v3}, Landroid/hardware/radio/V1_4/CardStatus;-><init>()V

    .line 4941
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_4/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4942
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getIccCardStatusResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V

    .line 4943
    goto/16 :goto_cb0

    .line 4924
    :sswitch_17f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4926
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4927
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4928
    new-instance v3, Landroid/hardware/radio/V1_4/DataRegStateResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_4/DataRegStateResult;-><init>()V

    .line 4929
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_4/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4930
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/DataRegStateResult;)V

    .line 4931
    goto/16 :goto_cb0

    .line 4913
    :sswitch_197
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4915
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4916
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4917
    invoke-static {p2}, Landroid/hardware/radio/V1_4/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4918
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCellInfoListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4919
    goto/16 :goto_cb0

    .line 4903
    :sswitch_1ab
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4905
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4906
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4907
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->startNetworkScanResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4908
    goto/16 :goto_cb0

    .line 4893
    :sswitch_1bb
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4895
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4896
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4897
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4898
    goto/16 :goto_cb0

    .line 4882
    :sswitch_1cb
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4884
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4885
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4886
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4887
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getModemStackStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4888
    goto/16 :goto_cb0

    .line 4872
    :sswitch_1df
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4874
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4875
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4876
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->enableModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4877
    goto/16 :goto_cb0

    .line 4862
    :sswitch_1ef
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4864
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4865
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4866
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4867
    goto/16 :goto_cb0

    .line 4850
    :sswitch_1ff
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4852
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4853
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4854
    new-instance v3, Landroid/hardware/radio/V1_2/DataRegStateResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_2/DataRegStateResult;-><init>()V

    .line 4855
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_2/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4856
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V

    .line 4857
    goto/16 :goto_cb0

    .line 4838
    :sswitch_217
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4840
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4841
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4842
    new-instance v3, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;-><init>()V

    .line 4843
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4844
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V

    .line 4845
    goto/16 :goto_cb0

    .line 4826
    :sswitch_22f
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4828
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4829
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4830
    new-instance v3, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v3}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 4831
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4832
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V

    .line 4833
    goto/16 :goto_cb0

    .line 4815
    :sswitch_247
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4817
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4818
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4819
    invoke-static {p2}, Landroid/hardware/radio/V1_2/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4820
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4821
    goto/16 :goto_cb0

    .line 4805
    :sswitch_25b
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4807
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4808
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4809
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4810
    goto/16 :goto_cb0

    .line 4795
    :sswitch_26b
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4797
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4798
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4799
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4800
    goto/16 :goto_cb0

    .line 4783
    :sswitch_27b
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4785
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4786
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4787
    new-instance v3, Landroid/hardware/radio/V1_2/CardStatus;

    invoke-direct {v3}, Landroid/hardware/radio/V1_2/CardStatus;-><init>()V

    .line 4788
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_2/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4789
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V

    .line 4790
    goto/16 :goto_cb0

    .line 4772
    :sswitch_293
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4774
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4775
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4776
    invoke-static {p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4777
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4778
    goto/16 :goto_cb0

    .line 4762
    :sswitch_2a7
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4764
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4765
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4766
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4767
    goto/16 :goto_cb0

    .line 4750
    :sswitch_2b7
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4752
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4753
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4754
    new-instance v3, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v3}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 4755
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4756
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 4757
    goto/16 :goto_cb0

    .line 4740
    :sswitch_2cf
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4742
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4743
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4744
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4745
    goto/16 :goto_cb0

    .line 4730
    :sswitch_2df
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4732
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4733
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4734
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4735
    goto/16 :goto_cb0

    .line 4720
    :sswitch_2ef
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4722
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4723
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4724
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4725
    goto/16 :goto_cb0

    .line 4710
    :sswitch_2ff
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4712
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4713
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4714
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4715
    goto/16 :goto_cb0

    .line 4701
    :sswitch_30f
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4703
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4704
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->acknowledgeRequest(I)V

    .line 4705
    goto/16 :goto_cb0

    .line 4691
    :sswitch_31b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4693
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4694
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4695
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4696
    goto/16 :goto_cb0

    .line 4681
    :sswitch_32b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4683
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4684
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4685
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4686
    goto/16 :goto_cb0

    .line 4671
    :sswitch_33b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4673
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4674
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4675
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4676
    goto/16 :goto_cb0

    .line 4658
    :sswitch_34b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4660
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4661
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4662
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4663
    new-instance v4, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v4}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4664
    invoke-virtual {v4, p2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4665
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4666
    goto/16 :goto_cb0

    .line 4647
    :sswitch_367
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4649
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4650
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4651
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4652
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4653
    goto/16 :goto_cb0

    .line 4635
    :sswitch_37b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4637
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4638
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4639
    new-instance v3, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 4640
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4641
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    .line 4642
    goto/16 :goto_cb0

    .line 4623
    :sswitch_393
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4625
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4626
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4627
    new-instance v3, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 4628
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4629
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 4630
    goto/16 :goto_cb0

    .line 4611
    :sswitch_3ab
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4613
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4614
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4615
    new-instance v3, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 4616
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4617
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 4618
    goto/16 :goto_cb0

    .line 4599
    :sswitch_3c3
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4601
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4602
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4603
    new-instance v3, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 4604
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4605
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 4606
    goto/16 :goto_cb0

    .line 4587
    :sswitch_3db
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4589
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4590
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4591
    new-instance v3, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4592
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4593
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4594
    goto/16 :goto_cb0

    .line 4575
    :sswitch_3f3
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4577
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4578
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4579
    new-instance v3, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4580
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4581
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4582
    goto/16 :goto_cb0

    .line 4565
    :sswitch_40b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4567
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4568
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4569
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4570
    goto/16 :goto_cb0

    .line 4555
    :sswitch_41b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4557
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4558
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4559
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4560
    goto/16 :goto_cb0

    .line 4543
    :sswitch_42b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4545
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4546
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4547
    new-instance v3, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4548
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4549
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4550
    goto/16 :goto_cb0

    .line 4532
    :sswitch_443
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4534
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4535
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4536
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4537
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4538
    goto/16 :goto_cb0

    .line 4522
    :sswitch_457
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4524
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4525
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4526
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4527
    goto/16 :goto_cb0

    .line 4512
    :sswitch_467
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4514
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4515
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4516
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4517
    goto/16 :goto_cb0

    .line 4502
    :sswitch_477
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4504
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4505
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4506
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4507
    goto/16 :goto_cb0

    .line 4492
    :sswitch_487
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4494
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4495
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4496
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4497
    goto/16 :goto_cb0

    .line 4482
    :sswitch_497
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4484
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4485
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4486
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4487
    goto/16 :goto_cb0

    .line 4471
    :sswitch_4a7
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4473
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4474
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4475
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4476
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4477
    goto/16 :goto_cb0

    .line 4459
    :sswitch_4bb
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4461
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4462
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4463
    new-instance v3, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4464
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4465
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4466
    goto/16 :goto_cb0

    .line 4449
    :sswitch_4d3
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4451
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4452
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4453
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4454
    goto/16 :goto_cb0

    .line 4437
    :sswitch_4e3
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4439
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4440
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4441
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4442
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4443
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    .line 4444
    goto/16 :goto_cb0

    .line 4425
    :sswitch_4fb
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4427
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4428
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4429
    new-instance v3, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4430
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4431
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4432
    goto/16 :goto_cb0

    .line 4413
    :sswitch_513
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4415
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4416
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4417
    new-instance v3, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4418
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4419
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4420
    goto/16 :goto_cb0

    .line 4401
    :sswitch_52b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4403
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4404
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4405
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4406
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4407
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 4408
    goto/16 :goto_cb0

    .line 4391
    :sswitch_543
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4393
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4394
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4395
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4396
    goto/16 :goto_cb0

    .line 4381
    :sswitch_553
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4383
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4384
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4385
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4386
    goto/16 :goto_cb0

    .line 4370
    :sswitch_563
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4372
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4373
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4374
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4375
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4376
    goto/16 :goto_cb0

    .line 4359
    :sswitch_577
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4361
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4362
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4363
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4364
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4365
    goto/16 :goto_cb0

    .line 4347
    :sswitch_58b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4349
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4350
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4351
    new-instance v3, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4352
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4353
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4354
    goto/16 :goto_cb0

    .line 4337
    :sswitch_5a3
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4339
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4340
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4341
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4342
    goto/16 :goto_cb0

    .line 4326
    :sswitch_5b3
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4328
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4329
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4330
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4331
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4332
    goto/16 :goto_cb0

    .line 4315
    :sswitch_5c7
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4317
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4318
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4319
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4320
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4321
    goto/16 :goto_cb0

    .line 4305
    :sswitch_5db
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4307
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4308
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4309
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4310
    goto/16 :goto_cb0

    .line 4295
    :sswitch_5eb
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4297
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4298
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4299
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4300
    goto/16 :goto_cb0

    .line 4285
    :sswitch_5fb
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4287
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4288
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4289
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4290
    goto/16 :goto_cb0

    .line 4274
    :sswitch_60b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4276
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4277
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4278
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4279
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4280
    goto/16 :goto_cb0

    .line 4264
    :sswitch_61f
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4266
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4267
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4268
    invoke-virtual {p0, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4269
    goto/16 :goto_cb0

    .line 4250
    :sswitch_62f
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4252
    new-instance v2, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4253
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4254
    move-object v1, v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4255
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4256
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4257
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4258
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4259
    goto/16 :goto_cb0

    .line 4240
    :sswitch_651
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4242
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4243
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4244
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4245
    goto/16 :goto_cb0

    .line 4229
    :sswitch_661
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4231
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4232
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4233
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4234
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4235
    goto/16 :goto_cb0

    .line 4214
    :sswitch_675
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4216
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4217
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4218
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4219
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4220
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4221
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4222
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 4223
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4224
    goto/16 :goto_cb0

    .line 4204
    :sswitch_69a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4206
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4207
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4208
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4209
    goto/16 :goto_cb0

    .line 4194
    :sswitch_6aa
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4196
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4197
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4198
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4199
    goto/16 :goto_cb0

    .line 4183
    :sswitch_6ba
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4185
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4186
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4187
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4188
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4189
    goto/16 :goto_cb0

    .line 4173
    :sswitch_6ce
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4175
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4176
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4177
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4178
    goto/16 :goto_cb0

    .line 4163
    :sswitch_6de
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4165
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4166
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4167
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4168
    goto/16 :goto_cb0

    .line 4152
    :sswitch_6ee
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4154
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4155
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4156
    invoke-static {p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4157
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4158
    goto/16 :goto_cb0

    .line 4142
    :sswitch_702
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4144
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4145
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4146
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4147
    goto/16 :goto_cb0

    .line 4130
    :sswitch_712
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4132
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4133
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4134
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4135
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4136
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4137
    goto/16 :goto_cb0

    .line 4120
    :sswitch_72a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4122
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4123
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4124
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4125
    goto/16 :goto_cb0

    .line 4110
    :sswitch_73a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4112
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4113
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4114
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4115
    goto/16 :goto_cb0

    .line 4099
    :sswitch_74a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4101
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4102
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4103
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4104
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4105
    goto/16 :goto_cb0

    .line 4089
    :sswitch_75e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4091
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4092
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4093
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4094
    goto/16 :goto_cb0

    .line 4078
    :sswitch_76e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4080
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4081
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4082
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4083
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4084
    goto/16 :goto_cb0

    .line 4068
    :sswitch_782
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4070
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4071
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4072
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4073
    goto/16 :goto_cb0

    .line 4057
    :sswitch_792
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4059
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4060
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4061
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4062
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4063
    goto/16 :goto_cb0

    .line 4047
    :sswitch_7a6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4049
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4050
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4051
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4052
    goto/16 :goto_cb0

    .line 4037
    :sswitch_7b6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4039
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4040
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4041
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4042
    goto/16 :goto_cb0

    .line 4027
    :sswitch_7c6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4029
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4030
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4031
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4032
    goto/16 :goto_cb0

    .line 4016
    :sswitch_7d6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4018
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4019
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4020
    invoke-static {p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4021
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4022
    goto/16 :goto_cb0

    .line 4005
    :sswitch_7ea
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4007
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4008
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4010
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4011
    goto/16 :goto_cb0

    .line 3995
    :sswitch_7fe
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3997
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3998
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3999
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4000
    goto/16 :goto_cb0

    .line 3985
    :sswitch_80e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3987
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3988
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3989
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3990
    goto/16 :goto_cb0

    .line 3975
    :sswitch_81e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3977
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3978
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3979
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3980
    goto/16 :goto_cb0

    .line 3965
    :sswitch_82e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3967
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3968
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3969
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3970
    goto/16 :goto_cb0

    .line 3954
    :sswitch_83e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3956
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3957
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3958
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3959
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3960
    goto/16 :goto_cb0

    .line 3943
    :sswitch_852
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3945
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3946
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3947
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3948
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3949
    goto/16 :goto_cb0

    .line 3933
    :sswitch_866
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3935
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3936
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3937
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3938
    goto/16 :goto_cb0

    .line 3923
    :sswitch_876
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3925
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3926
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3927
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3928
    goto/16 :goto_cb0

    .line 3912
    :sswitch_886
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3914
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3915
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3916
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3917
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3918
    goto/16 :goto_cb0

    .line 3902
    :sswitch_89a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3904
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3905
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3906
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3907
    goto/16 :goto_cb0

    .line 3891
    :sswitch_8aa
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3893
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3894
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3895
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3896
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3897
    goto/16 :goto_cb0

    .line 3880
    :sswitch_8be
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3882
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3883
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3884
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3885
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3886
    goto/16 :goto_cb0

    .line 3869
    :sswitch_8d2
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3871
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3872
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3873
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3874
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 3875
    goto/16 :goto_cb0

    .line 3859
    :sswitch_8e6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3861
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3862
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3863
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3864
    goto/16 :goto_cb0

    .line 3849
    :sswitch_8f6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3851
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3852
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3853
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3854
    goto/16 :goto_cb0

    .line 3838
    :sswitch_906
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3840
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3841
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3842
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3843
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3844
    goto/16 :goto_cb0

    .line 3828
    :sswitch_91a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3830
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3831
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3832
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3833
    goto/16 :goto_cb0

    .line 3818
    :sswitch_92a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3820
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3821
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3822
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3823
    goto/16 :goto_cb0

    .line 3807
    :sswitch_93a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3809
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3810
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3811
    invoke-static {p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3812
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3813
    goto/16 :goto_cb0

    .line 3797
    :sswitch_94e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3799
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3800
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3801
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3802
    goto/16 :goto_cb0

    .line 3787
    :sswitch_95e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3789
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3790
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3791
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3792
    goto/16 :goto_cb0

    .line 3776
    :sswitch_96e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3778
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3779
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3780
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3781
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 3782
    goto/16 :goto_cb0

    .line 3766
    :sswitch_982
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3768
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3769
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3770
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3771
    goto/16 :goto_cb0

    .line 3755
    :sswitch_992
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3757
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3758
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3759
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3760
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3761
    goto/16 :goto_cb0

    .line 3744
    :sswitch_9a6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3746
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3747
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3748
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3749
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3750
    goto/16 :goto_cb0

    .line 3734
    :sswitch_9ba
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3736
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3737
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3738
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3739
    goto/16 :goto_cb0

    .line 3724
    :sswitch_9ca
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3726
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3727
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3728
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3729
    goto/16 :goto_cb0

    .line 3714
    :sswitch_9da
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3716
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3717
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3718
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3719
    goto/16 :goto_cb0

    .line 3704
    :sswitch_9ea
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3706
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3707
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3708
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3709
    goto/16 :goto_cb0

    .line 3692
    :sswitch_9fa
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3694
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3695
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3696
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3697
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3698
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 3699
    goto/16 :goto_cb0

    .line 3682
    :sswitch_a12
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3684
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3685
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3686
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3687
    goto/16 :goto_cb0

    .line 3671
    :sswitch_a22
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3673
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3674
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3675
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3676
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3677
    goto/16 :goto_cb0

    .line 3661
    :sswitch_a36
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3663
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3664
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3665
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3666
    goto/16 :goto_cb0

    .line 3649
    :sswitch_a46
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3651
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3652
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3653
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3654
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3655
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 3656
    goto/16 :goto_cb0

    .line 3639
    :sswitch_a5e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3641
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3642
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3643
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3644
    goto/16 :goto_cb0

    .line 3629
    :sswitch_a6e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3631
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3632
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3633
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3634
    goto/16 :goto_cb0

    .line 3617
    :sswitch_a7e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3619
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3620
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3621
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3622
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3623
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 3624
    goto/16 :goto_cb0

    .line 3605
    :sswitch_a96
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3607
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3608
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3609
    new-instance v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 3610
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3611
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 3612
    goto/16 :goto_cb0

    .line 3593
    :sswitch_aae
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3595
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3596
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3597
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3598
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3599
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 3600
    goto/16 :goto_cb0

    .line 3581
    :sswitch_ac6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3583
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3584
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3585
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3586
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3587
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 3588
    goto/16 :goto_cb0

    .line 3571
    :sswitch_ade
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3573
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3574
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3575
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3576
    goto/16 :goto_cb0

    .line 3561
    :sswitch_aee
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3563
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3564
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3565
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3566
    goto/16 :goto_cb0

    .line 3548
    :sswitch_afe
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3550
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3551
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3552
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3553
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3554
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3555
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    goto/16 :goto_cb0

    .line 3536
    :sswitch_b1a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3538
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3539
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3540
    new-instance v2, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 3541
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3542
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    .line 3543
    goto/16 :goto_cb0

    .line 3524
    :sswitch_b32
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3526
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3527
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3528
    new-instance v2, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 3529
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3530
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    .line 3531
    goto/16 :goto_cb0

    .line 3512
    :sswitch_b4a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3514
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3515
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3516
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 3517
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3518
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 3519
    goto/16 :goto_cb0

    .line 3500
    :sswitch_b62
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3502
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3503
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3504
    new-instance v2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 3505
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3506
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 3507
    goto/16 :goto_cb0

    .line 3490
    :sswitch_b7a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3492
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3493
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3494
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3495
    goto/16 :goto_cb0

    .line 3480
    :sswitch_b8a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3482
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3483
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3484
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3485
    goto/16 :goto_cb0

    .line 3470
    :sswitch_b9a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3472
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3473
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3474
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3475
    goto/16 :goto_cb0

    .line 3460
    :sswitch_baa
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3462
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3463
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3464
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3465
    goto/16 :goto_cb0

    .line 3450
    :sswitch_bba
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3452
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3453
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3454
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3455
    goto/16 :goto_cb0

    .line 3440
    :sswitch_bca
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3442
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3443
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3444
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3445
    goto/16 :goto_cb0

    .line 3429
    :sswitch_bda
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3431
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3432
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3433
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3434
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3435
    goto/16 :goto_cb0

    .line 3419
    :sswitch_bee
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3421
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3422
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3423
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3424
    goto/16 :goto_cb0

    .line 3408
    :sswitch_bfe
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3410
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3411
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3412
    invoke-static {p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3413
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3414
    goto/16 :goto_cb0

    .line 3397
    :sswitch_c12
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3399
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3400
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3401
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3402
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3403
    goto/16 :goto_cb0

    .line 3386
    :sswitch_c26
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3388
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3389
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3390
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3391
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3392
    goto/16 :goto_cb0

    .line 3375
    :sswitch_c3a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3377
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3378
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3379
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3380
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3381
    goto :goto_cb0

    .line 3364
    :sswitch_c4d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3366
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3367
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3368
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3369
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3370
    goto :goto_cb0

    .line 3353
    :sswitch_c60
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3355
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3356
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3357
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3358
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3359
    goto :goto_cb0

    .line 3342
    :sswitch_c73
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3344
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3345
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3346
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3347
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3348
    goto :goto_cb0

    .line 3331
    :sswitch_c86
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3333
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3334
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3335
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3336
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3337
    goto :goto_cb0

    .line 3319
    :sswitch_c99
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3321
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3322
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3323
    new-instance v2, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 3324
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3325
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    .line 3326
    nop

    .line 5141
    :goto_cb0
    return-void

    nop

    :sswitch_data_cb2
    .sparse-switch
        0x1 -> :sswitch_c99
        0x2 -> :sswitch_c86
        0x3 -> :sswitch_c73
        0x4 -> :sswitch_c60
        0x5 -> :sswitch_c4d
        0x6 -> :sswitch_c3a
        0x7 -> :sswitch_c26
        0x8 -> :sswitch_c12
        0x9 -> :sswitch_bfe
        0xa -> :sswitch_bee
        0xb -> :sswitch_bda
        0xc -> :sswitch_bca
        0xd -> :sswitch_bba
        0xe -> :sswitch_baa
        0xf -> :sswitch_b9a
        0x10 -> :sswitch_b8a
        0x11 -> :sswitch_b7a
        0x12 -> :sswitch_b62
        0x13 -> :sswitch_b4a
        0x14 -> :sswitch_b32
        0x15 -> :sswitch_b1a
        0x16 -> :sswitch_afe
        0x17 -> :sswitch_aee
        0x18 -> :sswitch_ade
        0x19 -> :sswitch_ac6
        0x1a -> :sswitch_aae
        0x1b -> :sswitch_a96
        0x1c -> :sswitch_a7e
        0x1d -> :sswitch_a6e
        0x1e -> :sswitch_a5e
        0x1f -> :sswitch_a46
        0x20 -> :sswitch_a36
        0x21 -> :sswitch_a22
        0x22 -> :sswitch_a12
        0x23 -> :sswitch_9fa
        0x24 -> :sswitch_9ea
        0x25 -> :sswitch_9da
        0x26 -> :sswitch_9ca
        0x27 -> :sswitch_9ba
        0x28 -> :sswitch_9a6
        0x29 -> :sswitch_992
        0x2a -> :sswitch_982
        0x2b -> :sswitch_96e
        0x2c -> :sswitch_95e
        0x2d -> :sswitch_94e
        0x2e -> :sswitch_93a
        0x2f -> :sswitch_92a
        0x30 -> :sswitch_91a
        0x31 -> :sswitch_906
        0x32 -> :sswitch_8f6
        0x33 -> :sswitch_8e6
        0x34 -> :sswitch_8d2
        0x35 -> :sswitch_8be
        0x36 -> :sswitch_8aa
        0x37 -> :sswitch_89a
        0x38 -> :sswitch_886
        0x39 -> :sswitch_876
        0x3a -> :sswitch_866
        0x3b -> :sswitch_852
        0x3c -> :sswitch_83e
        0x3d -> :sswitch_82e
        0x3e -> :sswitch_81e
        0x3f -> :sswitch_80e
        0x40 -> :sswitch_7fe
        0x41 -> :sswitch_7ea
        0x42 -> :sswitch_7d6
        0x43 -> :sswitch_7c6
        0x44 -> :sswitch_7b6
        0x45 -> :sswitch_7a6
        0x46 -> :sswitch_792
        0x47 -> :sswitch_782
        0x48 -> :sswitch_76e
        0x49 -> :sswitch_75e
        0x4a -> :sswitch_74a
        0x4b -> :sswitch_73a
        0x4c -> :sswitch_72a
        0x4d -> :sswitch_712
        0x4e -> :sswitch_702
        0x4f -> :sswitch_6ee
        0x50 -> :sswitch_6de
        0x51 -> :sswitch_6ce
        0x52 -> :sswitch_6ba
        0x53 -> :sswitch_6aa
        0x54 -> :sswitch_69a
        0x55 -> :sswitch_675
        0x56 -> :sswitch_661
        0x57 -> :sswitch_651
        0x58 -> :sswitch_62f
        0x59 -> :sswitch_61f
        0x5a -> :sswitch_60b
        0x5b -> :sswitch_5fb
        0x5c -> :sswitch_5eb
        0x5d -> :sswitch_5db
        0x5e -> :sswitch_5c7
        0x5f -> :sswitch_5b3
        0x60 -> :sswitch_5a3
        0x61 -> :sswitch_58b
        0x62 -> :sswitch_577
        0x63 -> :sswitch_563
        0x64 -> :sswitch_553
        0x65 -> :sswitch_543
        0x66 -> :sswitch_52b
        0x67 -> :sswitch_513
        0x68 -> :sswitch_4fb
        0x69 -> :sswitch_4e3
        0x6a -> :sswitch_4d3
        0x6b -> :sswitch_4bb
        0x6c -> :sswitch_4a7
        0x6d -> :sswitch_497
        0x6e -> :sswitch_487
        0x6f -> :sswitch_477
        0x70 -> :sswitch_467
        0x71 -> :sswitch_457
        0x72 -> :sswitch_443
        0x73 -> :sswitch_42b
        0x74 -> :sswitch_41b
        0x75 -> :sswitch_40b
        0x76 -> :sswitch_3f3
        0x77 -> :sswitch_3db
        0x78 -> :sswitch_3c3
        0x79 -> :sswitch_3ab
        0x7a -> :sswitch_393
        0x7b -> :sswitch_37b
        0x7c -> :sswitch_367
        0x7d -> :sswitch_34b
        0x7e -> :sswitch_33b
        0x7f -> :sswitch_32b
        0x80 -> :sswitch_31b
        0x81 -> :sswitch_30f
        0x82 -> :sswitch_2ff
        0x83 -> :sswitch_2ef
        0x84 -> :sswitch_2df
        0x85 -> :sswitch_2cf
        0x86 -> :sswitch_2b7
        0x87 -> :sswitch_2a7
        0x88 -> :sswitch_293
        0x89 -> :sswitch_27b
        0x8a -> :sswitch_26b
        0x8b -> :sswitch_25b
        0x8c -> :sswitch_247
        0x8d -> :sswitch_22f
        0x8e -> :sswitch_217
        0x8f -> :sswitch_1ff
        0x90 -> :sswitch_1ef
        0x91 -> :sswitch_1df
        0x92 -> :sswitch_1cb
        0x93 -> :sswitch_1bb
        0x94 -> :sswitch_1ab
        0x95 -> :sswitch_197
        0x96 -> :sswitch_17f
        0x97 -> :sswitch_167
        0x98 -> :sswitch_153
        0x99 -> :sswitch_143
        0x9a -> :sswitch_12f
        0x9b -> :sswitch_117
        0x9c -> :sswitch_107
        0x9d -> :sswitch_eb
        0x9e -> :sswitch_d3
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

    .line 3270
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 3298
    const-string v0, "android.hardware.radio@1.4::IRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3299
    return-object p0

    .line 3301
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

    .line 3305
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 3306
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 3260
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 3310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3292
    const/4 p1, 0x1

    return p1
.end method
