.class public abstract Landroid/hardware/radio/V1_2/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Landroid/hardware/radio/V1_2/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_2/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1350
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1353
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

    .line 1368
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1407
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1408
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1409
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1410
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1411
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1380
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_24

    new-array v3, v1, [B

    fill-array-data v3, :array_38

    new-array v4, v1, [B

    fill-array-data v4, :array_4c

    new-array v1, v1, [B

    fill-array-data v1, :array_60

    filled-new-array {v2, v3, v4, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_24
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

    :array_38
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

    :array_4c
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

    :array_60
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1358
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.radio@1.2::IRadioIndication"

    const-string v4, "android.hardware.radio@1.1::IRadioIndication"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1374
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 1395
    const/4 p1, 0x1

    return p1
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1417
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1419
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1447
    const-string p4, "android.hardware.radio@1.1::IRadioIndication"

    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    const/4 v1, 0x0

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.radio@1.0::IRadioIndication"

    sparse-switch p1, :sswitch_data_434

    goto/16 :goto_433

    .line 2089
    :sswitch_e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2091
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->notifySyspropsChanged()V

    .line 2092
    goto/16 :goto_433

    .line 2078
    :sswitch_16
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2080
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 2081
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2082
    invoke-virtual {p1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2083
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2084
    goto/16 :goto_433

    .line 2068
    :sswitch_28
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2070
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->ping()V

    .line 2071
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2072
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2073
    goto/16 :goto_433

    .line 2063
    :sswitch_36
    goto/16 :goto_433

    .line 2055
    :sswitch_38
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2057
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->setHALInstrumentation()V

    .line 2058
    goto/16 :goto_433

    .line 2021
    :sswitch_40
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2023
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 2024
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2026
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2028
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 2029
    const-wide/16 v2, 0x8

    invoke-virtual {p2, v2, v3, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2030
    const-wide/16 v2, 0xc

    invoke-virtual {p2, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2031
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v2, p4, 0x20

    invoke-direct {v0, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2032
    nop

    :goto_67
    if-ge v1, p4, :cond_88

    .line 2034
    mul-int/lit8 v2, v1, 0x20

    int-to-long v2, v2

    .line 2035
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 2037
    if-eqz v4, :cond_80

    array-length v5, v4

    const/16 v6, 0x20

    if-ne v5, v6, :cond_80

    .line 2041
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2042
    nop

    .line 2032
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 2038
    :cond_80
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2045
    :cond_88
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2047
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2049
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2050
    goto/16 :goto_433

    .line 2010
    :sswitch_95
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2012
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 2013
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2014
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2015
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2016
    goto/16 :goto_433

    .line 1998
    :sswitch_a7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2000
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 2001
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2002
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2003
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2004
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2005
    goto/16 :goto_433

    .line 1987
    :sswitch_bd
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1989
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1990
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1991
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1992
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1993
    goto/16 :goto_433

    .line 1976
    :sswitch_cf
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1978
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1979
    new-instance p3, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {p3}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 1980
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1981
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V

    .line 1982
    goto/16 :goto_433

    .line 1966
    :sswitch_e3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1968
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1969
    invoke-static {p2}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1970
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V

    .line 1971
    goto/16 :goto_433

    .line 1955
    :sswitch_f3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1957
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1958
    new-instance p3, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    invoke-direct {p3}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;-><init>()V

    .line 1959
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1960
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V

    .line 1961
    goto/16 :goto_433

    .line 1945
    :sswitch_107
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1947
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1948
    invoke-static {p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1949
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cellInfoList_1_2(ILjava/util/ArrayList;)V

    .line 1950
    goto/16 :goto_433

    .line 1934
    :sswitch_117
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1936
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1937
    new-instance p3, Landroid/hardware/radio/V1_2/NetworkScanResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_2/NetworkScanResult;-><init>()V

    .line 1938
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_2/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1939
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 1940
    goto/16 :goto_433

    .line 1923
    :sswitch_12b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1925
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1926
    new-instance p3, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {p3}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 1927
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1928
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 1929
    goto/16 :goto_433

    .line 1912
    :sswitch_13f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1914
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1915
    new-instance p3, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 1916
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1917
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 1918
    goto/16 :goto_433

    .line 1903
    :sswitch_153
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1905
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1906
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 1907
    goto/16 :goto_433

    .line 1893
    :sswitch_15f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1895
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1896
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1897
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 1898
    goto/16 :goto_433

    .line 1882
    :sswitch_16f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1884
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1885
    new-instance p3, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 1886
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1887
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 1888
    goto/16 :goto_433

    .line 1871
    :sswitch_183
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1873
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1874
    new-instance p3, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 1875
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1876
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 1877
    goto/16 :goto_433

    .line 1861
    :sswitch_197
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1864
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1865
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 1866
    goto/16 :goto_433

    .line 1850
    :sswitch_1a7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1852
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1853
    new-instance p3, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 1854
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1855
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 1856
    goto/16 :goto_433

    .line 1839
    :sswitch_1bb
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1841
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1842
    new-instance p3, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 1843
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1844
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 1845
    goto/16 :goto_433

    .line 1829
    :sswitch_1cf
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1831
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1832
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1833
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 1834
    goto/16 :goto_433

    .line 1819
    :sswitch_1df
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1821
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1822
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1823
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->srvccStateNotify(II)V

    .line 1824
    goto/16 :goto_433

    .line 1809
    :sswitch_1ef
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1811
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1812
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 1813
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 1814
    goto/16 :goto_433

    .line 1800
    :sswitch_1ff
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1802
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1803
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 1804
    goto/16 :goto_433

    .line 1790
    :sswitch_20b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1792
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1793
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1794
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 1795
    goto/16 :goto_433

    .line 1780
    :sswitch_21b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1782
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1783
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1784
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 1785
    goto/16 :goto_433

    .line 1771
    :sswitch_22b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1773
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1774
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->rilConnected(I)V

    .line 1775
    goto/16 :goto_433

    .line 1762
    :sswitch_237
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1765
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 1766
    goto/16 :goto_433

    .line 1752
    :sswitch_243
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1755
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1756
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 1757
    goto/16 :goto_433

    .line 1742
    :sswitch_253
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1744
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1745
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1746
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 1747
    goto/16 :goto_433

    .line 1733
    :sswitch_263
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1736
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->resendIncallMute(I)V

    .line 1737
    goto/16 :goto_433

    .line 1723
    :sswitch_26f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1725
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1726
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 1727
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 1728
    goto/16 :goto_433

    .line 1712
    :sswitch_27f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1714
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1715
    new-instance p3, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 1716
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1717
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 1718
    goto/16 :goto_433

    .line 1702
    :sswitch_293
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1704
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1705
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1706
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 1707
    goto/16 :goto_433

    .line 1691
    :sswitch_2a3
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1693
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1694
    new-instance p3, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 1695
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1696
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 1697
    goto/16 :goto_433

    .line 1682
    :sswitch_2b7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1685
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 1686
    goto/16 :goto_433

    .line 1672
    :sswitch_2c3
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1674
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1675
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1676
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 1677
    goto/16 :goto_433

    .line 1663
    :sswitch_2d3
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1666
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 1667
    goto/16 :goto_433

    .line 1653
    :sswitch_2df
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1656
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1657
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 1658
    goto/16 :goto_433

    .line 1642
    :sswitch_2ef
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1644
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1645
    new-instance p3, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1646
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1647
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 1648
    goto/16 :goto_433

    .line 1633
    :sswitch_303
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1635
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1636
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->simStatusChanged(I)V

    .line 1637
    goto/16 :goto_433

    .line 1621
    :sswitch_30f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1623
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1624
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 1625
    new-instance p4, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 1626
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1627
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 1628
    goto/16 :goto_433

    .line 1610
    :sswitch_327
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1613
    new-instance p3, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 1614
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1615
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 1616
    goto/16 :goto_433

    .line 1601
    :sswitch_33b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1604
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 1605
    goto/16 :goto_433

    .line 1591
    :sswitch_347
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1593
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1594
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p2

    .line 1595
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 1596
    goto/16 :goto_433

    .line 1581
    :sswitch_357
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1584
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1585
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 1586
    goto/16 :goto_433

    .line 1571
    :sswitch_367
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1573
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1574
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1575
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 1576
    goto/16 :goto_433

    .line 1562
    :sswitch_377
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1565
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->stkSessionEnd(I)V

    .line 1566
    goto/16 :goto_433

    .line 1551
    :sswitch_383
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1553
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1554
    new-instance p3, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 1555
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1556
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 1557
    goto/16 :goto_433

    .line 1541
    :sswitch_397
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1543
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1544
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1545
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 1546
    goto/16 :goto_433

    .line 1530
    :sswitch_3a7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1533
    new-instance p3, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 1534
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1535
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 1536
    goto/16 :goto_433

    .line 1519
    :sswitch_3bb
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1522
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1523
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1524
    invoke-virtual {p0, p1, p3, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 1525
    goto :goto_433

    .line 1508
    :sswitch_3ce
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1510
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1511
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1512
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1513
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 1514
    goto :goto_433

    .line 1498
    :sswitch_3e1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1501
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1502
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->newSmsOnSim(II)V

    .line 1503
    goto :goto_433

    .line 1488
    :sswitch_3f0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1491
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1492
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 1493
    goto :goto_433

    .line 1478
    :sswitch_3ff
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1481
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1482
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 1483
    goto :goto_433

    .line 1469
    :sswitch_40e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1472
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->networkStateChanged(I)V

    .line 1473
    goto :goto_433

    .line 1460
    :sswitch_419
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1463
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->callStateChanged(I)V

    .line 1464
    goto :goto_433

    .line 1450
    :sswitch_424
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1452
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1453
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1454
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->radioStateChanged(II)V

    .line 1455
    nop

    .line 2101
    :goto_433
    return-void

    :sswitch_data_434
    .sparse-switch
        0x1 -> :sswitch_424
        0x2 -> :sswitch_419
        0x3 -> :sswitch_40e
        0x4 -> :sswitch_3ff
        0x5 -> :sswitch_3f0
        0x6 -> :sswitch_3e1
        0x7 -> :sswitch_3ce
        0x8 -> :sswitch_3bb
        0x9 -> :sswitch_3a7
        0xa -> :sswitch_397
        0xb -> :sswitch_383
        0xc -> :sswitch_377
        0xd -> :sswitch_367
        0xe -> :sswitch_357
        0xf -> :sswitch_347
        0x10 -> :sswitch_33b
        0x11 -> :sswitch_327
        0x12 -> :sswitch_30f
        0x13 -> :sswitch_303
        0x14 -> :sswitch_2ef
        0x15 -> :sswitch_2df
        0x16 -> :sswitch_2d3
        0x17 -> :sswitch_2c3
        0x18 -> :sswitch_2b7
        0x19 -> :sswitch_2a3
        0x1a -> :sswitch_293
        0x1b -> :sswitch_27f
        0x1c -> :sswitch_26f
        0x1d -> :sswitch_263
        0x1e -> :sswitch_253
        0x1f -> :sswitch_243
        0x20 -> :sswitch_237
        0x21 -> :sswitch_22b
        0x22 -> :sswitch_21b
        0x23 -> :sswitch_20b
        0x24 -> :sswitch_1ff
        0x25 -> :sswitch_1ef
        0x26 -> :sswitch_1df
        0x27 -> :sswitch_1cf
        0x28 -> :sswitch_1bb
        0x29 -> :sswitch_1a7
        0x2a -> :sswitch_197
        0x2b -> :sswitch_183
        0x2c -> :sswitch_16f
        0x2d -> :sswitch_15f
        0x2e -> :sswitch_153
        0x2f -> :sswitch_13f
        0x30 -> :sswitch_12b
        0x31 -> :sswitch_117
        0x32 -> :sswitch_107
        0x33 -> :sswitch_f3
        0x34 -> :sswitch_e3
        0x35 -> :sswitch_cf
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

    .line 1401
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 1429
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1430
    return-object p0

    .line 1432
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

    .line 1436
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1437
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1391
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1423
    const/4 p1, 0x1

    return p1
.end method
