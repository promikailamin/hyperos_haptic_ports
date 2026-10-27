.class public abstract Landroid/hardware/radio/V1_0/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Landroid/hardware/radio/V1_0/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_0/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1609
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1612
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

    .line 1625
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1662
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1663
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1664
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1665
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1666
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

    .line 1637
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

    .line 1617
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

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

    .line 1631
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 1650
    const/4 p1, 0x1

    return p1
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1672
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1674
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1702
    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    sparse-switch p1, :sswitch_data_3a0

    goto/16 :goto_39f

    .line 2260
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2262
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->notifySyspropsChanged()V

    .line 2263
    goto/16 :goto_39f

    .line 2249
    :sswitch_12
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2251
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 2252
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2253
    invoke-virtual {p1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2254
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2255
    goto/16 :goto_39f

    .line 2239
    :sswitch_24
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2241
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->ping()V

    .line 2242
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2243
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2244
    goto/16 :goto_39f

    .line 2234
    :sswitch_32
    goto/16 :goto_39f

    .line 2226
    :sswitch_34
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2228
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->setHALInstrumentation()V

    .line 2229
    goto/16 :goto_39f

    .line 2192
    :sswitch_3c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2194
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 2195
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2197
    new-instance p2, Landroid/os/HwBlob;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 2199
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2200
    const-wide/16 v1, 0x8

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2201
    const-wide/16 v1, 0xc

    invoke-virtual {p2, v1, v2, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2202
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v2, v0, 0x20

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2203
    nop

    :goto_63
    if-ge p4, v0, :cond_84

    .line 2205
    mul-int/lit8 v2, p4, 0x20

    int-to-long v2, v2

    .line 2206
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 2208
    if-eqz v4, :cond_7c

    array-length v5, v4

    const/16 v6, 0x20

    if-ne v5, v6, :cond_7c

    .line 2212
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2213
    nop

    .line 2203
    add-int/lit8 p4, p4, 0x1

    goto :goto_63

    .line 2209
    :cond_7c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2216
    :cond_84
    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2218
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2220
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2221
    goto/16 :goto_39f

    .line 2181
    :sswitch_91
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2183
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 2184
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2185
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2186
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2187
    goto/16 :goto_39f

    .line 2169
    :sswitch_a3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2171
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 2172
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2173
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2174
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2175
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2176
    goto/16 :goto_39f

    .line 2158
    :sswitch_b9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2160
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 2161
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2162
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2163
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2164
    goto/16 :goto_39f

    .line 2148
    :sswitch_cb
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2150
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2151
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2152
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 2153
    goto/16 :goto_39f

    .line 2137
    :sswitch_db
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2139
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2140
    new-instance p3, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 2141
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2142
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 2143
    goto/16 :goto_39f

    .line 2126
    :sswitch_ef
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2128
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2129
    new-instance p3, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 2130
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2131
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 2132
    goto/16 :goto_39f

    .line 2116
    :sswitch_103
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2118
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2119
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2120
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 2121
    goto/16 :goto_39f

    .line 2105
    :sswitch_113
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2108
    new-instance p3, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 2109
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2110
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 2111
    goto/16 :goto_39f

    .line 2094
    :sswitch_127
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2096
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2097
    new-instance p3, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 2098
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2099
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 2100
    goto/16 :goto_39f

    .line 2084
    :sswitch_13b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2086
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2087
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2088
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 2089
    goto/16 :goto_39f

    .line 2074
    :sswitch_14b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2076
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2077
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2078
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->srvccStateNotify(II)V

    .line 2079
    goto/16 :goto_39f

    .line 2064
    :sswitch_15b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2066
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2067
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 2068
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 2069
    goto/16 :goto_39f

    .line 2055
    :sswitch_16b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2057
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2058
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 2059
    goto/16 :goto_39f

    .line 2045
    :sswitch_177
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2047
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2048
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2049
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 2050
    goto/16 :goto_39f

    .line 2035
    :sswitch_187
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2037
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2038
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2039
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 2040
    goto/16 :goto_39f

    .line 2026
    :sswitch_197
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2028
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2029
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->rilConnected(I)V

    .line 2030
    goto/16 :goto_39f

    .line 2017
    :sswitch_1a3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2019
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2020
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 2021
    goto/16 :goto_39f

    .line 2007
    :sswitch_1af
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2010
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2011
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 2012
    goto/16 :goto_39f

    .line 1997
    :sswitch_1bf
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1999
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2000
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2001
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 2002
    goto/16 :goto_39f

    .line 1988
    :sswitch_1cf
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1990
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1991
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->resendIncallMute(I)V

    .line 1992
    goto/16 :goto_39f

    .line 1978
    :sswitch_1db
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1980
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1981
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 1982
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 1983
    goto/16 :goto_39f

    .line 1967
    :sswitch_1eb
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1969
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1970
    new-instance p3, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 1971
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1972
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 1973
    goto/16 :goto_39f

    .line 1957
    :sswitch_1ff
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1959
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1960
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1961
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 1962
    goto/16 :goto_39f

    .line 1946
    :sswitch_20f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1948
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1949
    new-instance p3, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 1950
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1951
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 1952
    goto/16 :goto_39f

    .line 1937
    :sswitch_223
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1939
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1940
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 1941
    goto/16 :goto_39f

    .line 1927
    :sswitch_22f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1929
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1930
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1931
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 1932
    goto/16 :goto_39f

    .line 1918
    :sswitch_23f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1920
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1921
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 1922
    goto/16 :goto_39f

    .line 1908
    :sswitch_24b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1910
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1912
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 1913
    goto/16 :goto_39f

    .line 1897
    :sswitch_25b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1899
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1900
    new-instance p3, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1901
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1902
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 1903
    goto/16 :goto_39f

    .line 1888
    :sswitch_26f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1890
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1891
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->simStatusChanged(I)V

    .line 1892
    goto/16 :goto_39f

    .line 1876
    :sswitch_27b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1878
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1879
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 1880
    new-instance p4, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 1881
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1882
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 1883
    goto/16 :goto_39f

    .line 1865
    :sswitch_293
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1867
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1868
    new-instance p3, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 1869
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1870
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 1871
    goto/16 :goto_39f

    .line 1856
    :sswitch_2a7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1858
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1859
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 1860
    goto/16 :goto_39f

    .line 1846
    :sswitch_2b3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1848
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1849
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p2

    .line 1850
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 1851
    goto/16 :goto_39f

    .line 1836
    :sswitch_2c3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1838
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1839
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1840
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 1841
    goto/16 :goto_39f

    .line 1826
    :sswitch_2d3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1829
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1830
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 1831
    goto/16 :goto_39f

    .line 1817
    :sswitch_2e3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1819
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1820
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->stkSessionEnd(I)V

    .line 1821
    goto/16 :goto_39f

    .line 1806
    :sswitch_2ef
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1808
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1809
    new-instance p3, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 1810
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1811
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 1812
    goto/16 :goto_39f

    .line 1796
    :sswitch_303
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1798
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1799
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1800
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 1801
    goto/16 :goto_39f

    .line 1785
    :sswitch_313
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1788
    new-instance p3, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 1789
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1790
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 1791
    goto/16 :goto_39f

    .line 1774
    :sswitch_327
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1777
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1778
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1779
    invoke-virtual {p0, p1, p3, v0, v1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 1780
    goto :goto_39f

    .line 1763
    :sswitch_33a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1765
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1766
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1767
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1768
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 1769
    goto :goto_39f

    .line 1753
    :sswitch_34d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1755
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1756
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1757
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->newSmsOnSim(II)V

    .line 1758
    goto :goto_39f

    .line 1743
    :sswitch_35c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1745
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1746
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1747
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 1748
    goto :goto_39f

    .line 1733
    :sswitch_36b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1736
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1737
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 1738
    goto :goto_39f

    .line 1724
    :sswitch_37a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1726
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1727
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->networkStateChanged(I)V

    .line 1728
    goto :goto_39f

    .line 1715
    :sswitch_385
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1717
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1718
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->callStateChanged(I)V

    .line 1719
    goto :goto_39f

    .line 1705
    :sswitch_390
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1707
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1708
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1709
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->radioStateChanged(II)V

    .line 1710
    nop

    .line 2272
    :goto_39f
    return-void

    :sswitch_data_3a0
    .sparse-switch
        0x1 -> :sswitch_390
        0x2 -> :sswitch_385
        0x3 -> :sswitch_37a
        0x4 -> :sswitch_36b
        0x5 -> :sswitch_35c
        0x6 -> :sswitch_34d
        0x7 -> :sswitch_33a
        0x8 -> :sswitch_327
        0x9 -> :sswitch_313
        0xa -> :sswitch_303
        0xb -> :sswitch_2ef
        0xc -> :sswitch_2e3
        0xd -> :sswitch_2d3
        0xe -> :sswitch_2c3
        0xf -> :sswitch_2b3
        0x10 -> :sswitch_2a7
        0x11 -> :sswitch_293
        0x12 -> :sswitch_27b
        0x13 -> :sswitch_26f
        0x14 -> :sswitch_25b
        0x15 -> :sswitch_24b
        0x16 -> :sswitch_23f
        0x17 -> :sswitch_22f
        0x18 -> :sswitch_223
        0x19 -> :sswitch_20f
        0x1a -> :sswitch_1ff
        0x1b -> :sswitch_1eb
        0x1c -> :sswitch_1db
        0x1d -> :sswitch_1cf
        0x1e -> :sswitch_1bf
        0x1f -> :sswitch_1af
        0x20 -> :sswitch_1a3
        0x21 -> :sswitch_197
        0x22 -> :sswitch_187
        0x23 -> :sswitch_177
        0x24 -> :sswitch_16b
        0x25 -> :sswitch_15b
        0x26 -> :sswitch_14b
        0x27 -> :sswitch_13b
        0x28 -> :sswitch_127
        0x29 -> :sswitch_113
        0x2a -> :sswitch_103
        0x2b -> :sswitch_ef
        0x2c -> :sswitch_db
        0x2d -> :sswitch_cb
        0xf43484e -> :sswitch_b9
        0xf444247 -> :sswitch_a3
        0xf445343 -> :sswitch_91
        0xf485348 -> :sswitch_3c
        0xf494e54 -> :sswitch_34
        0xf4c5444 -> :sswitch_32
        0xf504e47 -> :sswitch_24
        0xf524546 -> :sswitch_12
        0xf535953 -> :sswitch_a
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 1656
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 1684
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1685
    return-object p0

    .line 1687
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

    .line 1691
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1692
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1646
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1678
    const/4 p1, 0x1

    return p1
.end method
