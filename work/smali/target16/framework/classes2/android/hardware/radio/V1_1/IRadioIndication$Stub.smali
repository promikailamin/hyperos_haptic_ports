.class public abstract Landroid/hardware/radio/V1_1/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Landroid/hardware/radio/V1_1/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_1/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1244
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1247
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

    .line 1261
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1299
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1300
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1301
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1302
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1303
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1273
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_20

    new-array v3, v1, [B

    fill-array-data v3, :array_34

    new-array v1, v1, [B

    fill-array-data v1, :array_48

    filled-new-array {v2, v3, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_20
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

    :array_34
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

    :array_48
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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1252
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.radio@1.1::IRadioIndication"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1267
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 1287
    const/4 p1, 0x1

    return p1
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1309
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1311
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1339
    const-string p4, "android.hardware.radio@1.1::IRadioIndication"

    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "android.hardware.radio@1.0::IRadioIndication"

    sparse-switch p1, :sswitch_data_3d6

    goto/16 :goto_3d5

    .line 1928
    :sswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1930
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->notifySyspropsChanged()V

    .line 1931
    goto/16 :goto_3d5

    .line 1917
    :sswitch_14
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 1920
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1921
    invoke-virtual {p1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1922
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1923
    goto/16 :goto_3d5

    .line 1907
    :sswitch_26
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1909
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->ping()V

    .line 1910
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1911
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1912
    goto/16 :goto_3d5

    .line 1902
    :sswitch_34
    goto/16 :goto_3d5

    .line 1894
    :sswitch_36
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1896
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->setHALInstrumentation()V

    .line 1897
    goto/16 :goto_3d5

    .line 1860
    :sswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1862
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1863
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1865
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1867
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 1868
    const-wide/16 v1, 0x8

    invoke-virtual {p2, v1, v2, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1869
    const-wide/16 v1, 0xc

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1870
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v2, p4, 0x20

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1871
    nop

    :goto_65
    if-ge v0, p4, :cond_86

    .line 1873
    mul-int/lit8 v2, v0, 0x20

    int-to-long v2, v2

    .line 1874
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1876
    if-eqz v4, :cond_7e

    array-length v5, v4

    const/16 v6, 0x20

    if-ne v5, v6, :cond_7e

    .line 1880
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1881
    nop

    .line 1871
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 1877
    :cond_7e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1884
    :cond_86
    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1886
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1888
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1889
    goto/16 :goto_3d5

    .line 1849
    :sswitch_93
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1851
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 1852
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1853
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1854
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1855
    goto/16 :goto_3d5

    .line 1837
    :sswitch_a5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1840
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1841
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1842
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1843
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1844
    goto/16 :goto_3d5

    .line 1826
    :sswitch_bb
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1829
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1830
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1831
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1832
    goto/16 :goto_3d5

    .line 1815
    :sswitch_cd
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1817
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1818
    new-instance p3, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {p3}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 1819
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1820
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 1821
    goto/16 :goto_3d5

    .line 1804
    :sswitch_e1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1807
    new-instance p3, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 1808
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1809
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 1810
    goto/16 :goto_3d5

    .line 1795
    :sswitch_f5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1797
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1798
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 1799
    goto/16 :goto_3d5

    .line 1785
    :sswitch_101
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1788
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1789
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 1790
    goto/16 :goto_3d5

    .line 1774
    :sswitch_111
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1777
    new-instance p3, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 1778
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1779
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 1780
    goto/16 :goto_3d5

    .line 1763
    :sswitch_125
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1765
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1766
    new-instance p3, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 1767
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1768
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 1769
    goto/16 :goto_3d5

    .line 1753
    :sswitch_139
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1755
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1756
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1757
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 1758
    goto/16 :goto_3d5

    .line 1742
    :sswitch_149
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1744
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1745
    new-instance p3, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 1746
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1747
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 1748
    goto/16 :goto_3d5

    .line 1731
    :sswitch_15d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1733
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1734
    new-instance p3, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 1735
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1736
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 1737
    goto/16 :goto_3d5

    .line 1721
    :sswitch_171
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1723
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1724
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1725
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 1726
    goto/16 :goto_3d5

    .line 1711
    :sswitch_181
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1713
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1714
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1715
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->srvccStateNotify(II)V

    .line 1716
    goto/16 :goto_3d5

    .line 1701
    :sswitch_191
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1704
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 1705
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 1706
    goto/16 :goto_3d5

    .line 1692
    :sswitch_1a1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1694
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1695
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 1696
    goto/16 :goto_3d5

    .line 1682
    :sswitch_1ad
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1685
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1686
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 1687
    goto/16 :goto_3d5

    .line 1672
    :sswitch_1bd
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1674
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1675
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1676
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 1677
    goto/16 :goto_3d5

    .line 1663
    :sswitch_1cd
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1666
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->rilConnected(I)V

    .line 1667
    goto/16 :goto_3d5

    .line 1654
    :sswitch_1d9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1656
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1657
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 1658
    goto/16 :goto_3d5

    .line 1644
    :sswitch_1e5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1646
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1647
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1648
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 1649
    goto/16 :goto_3d5

    .line 1634
    :sswitch_1f5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1636
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1637
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1638
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 1639
    goto/16 :goto_3d5

    .line 1625
    :sswitch_205
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1628
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->resendIncallMute(I)V

    .line 1629
    goto/16 :goto_3d5

    .line 1615
    :sswitch_211
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1618
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 1619
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 1620
    goto/16 :goto_3d5

    .line 1604
    :sswitch_221
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1607
    new-instance p3, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 1608
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1609
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 1610
    goto/16 :goto_3d5

    .line 1594
    :sswitch_235
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1596
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1597
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1598
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 1599
    goto/16 :goto_3d5

    .line 1583
    :sswitch_245
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1586
    new-instance p3, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 1587
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1588
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 1589
    goto/16 :goto_3d5

    .line 1574
    :sswitch_259
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1576
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1577
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 1578
    goto/16 :goto_3d5

    .line 1564
    :sswitch_265
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1566
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1567
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1568
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 1569
    goto/16 :goto_3d5

    .line 1555
    :sswitch_275
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1558
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 1559
    goto/16 :goto_3d5

    .line 1545
    :sswitch_281
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1547
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1548
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1549
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 1550
    goto/16 :goto_3d5

    .line 1534
    :sswitch_291
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1536
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1537
    new-instance p3, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1538
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1539
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 1540
    goto/16 :goto_3d5

    .line 1525
    :sswitch_2a5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1528
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->simStatusChanged(I)V

    .line 1529
    goto/16 :goto_3d5

    .line 1513
    :sswitch_2b1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1516
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 1517
    new-instance p4, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 1518
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1519
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 1520
    goto/16 :goto_3d5

    .line 1502
    :sswitch_2c9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1505
    new-instance p3, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 1506
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1507
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 1508
    goto/16 :goto_3d5

    .line 1493
    :sswitch_2dd
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1496
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 1497
    goto/16 :goto_3d5

    .line 1483
    :sswitch_2e9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1486
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p2

    .line 1487
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 1488
    goto/16 :goto_3d5

    .line 1473
    :sswitch_2f9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1476
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1477
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 1478
    goto/16 :goto_3d5

    .line 1463
    :sswitch_309
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1466
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1467
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 1468
    goto/16 :goto_3d5

    .line 1454
    :sswitch_319
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1457
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->stkSessionEnd(I)V

    .line 1458
    goto/16 :goto_3d5

    .line 1443
    :sswitch_325
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1446
    new-instance p3, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 1447
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1448
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 1449
    goto/16 :goto_3d5

    .line 1433
    :sswitch_339
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1436
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1437
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 1438
    goto/16 :goto_3d5

    .line 1422
    :sswitch_349
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1425
    new-instance p3, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 1426
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1427
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 1428
    goto/16 :goto_3d5

    .line 1411
    :sswitch_35d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1414
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1415
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1416
    invoke-virtual {p0, p1, p3, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 1417
    goto :goto_3d5

    .line 1400
    :sswitch_370
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1402
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1403
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1404
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1405
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 1406
    goto :goto_3d5

    .line 1390
    :sswitch_383
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1393
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1394
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->newSmsOnSim(II)V

    .line 1395
    goto :goto_3d5

    .line 1380
    :sswitch_392
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1382
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1383
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1384
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 1385
    goto :goto_3d5

    .line 1370
    :sswitch_3a1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1373
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1374
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 1375
    goto :goto_3d5

    .line 1361
    :sswitch_3b0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1364
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->networkStateChanged(I)V

    .line 1365
    goto :goto_3d5

    .line 1352
    :sswitch_3bb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1354
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1355
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->callStateChanged(I)V

    .line 1356
    goto :goto_3d5

    .line 1342
    :sswitch_3c6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1345
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1346
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->radioStateChanged(II)V

    .line 1347
    nop

    .line 1940
    :goto_3d5
    return-void

    :sswitch_data_3d6
    .sparse-switch
        0x1 -> :sswitch_3c6
        0x2 -> :sswitch_3bb
        0x3 -> :sswitch_3b0
        0x4 -> :sswitch_3a1
        0x5 -> :sswitch_392
        0x6 -> :sswitch_383
        0x7 -> :sswitch_370
        0x8 -> :sswitch_35d
        0x9 -> :sswitch_349
        0xa -> :sswitch_339
        0xb -> :sswitch_325
        0xc -> :sswitch_319
        0xd -> :sswitch_309
        0xe -> :sswitch_2f9
        0xf -> :sswitch_2e9
        0x10 -> :sswitch_2dd
        0x11 -> :sswitch_2c9
        0x12 -> :sswitch_2b1
        0x13 -> :sswitch_2a5
        0x14 -> :sswitch_291
        0x15 -> :sswitch_281
        0x16 -> :sswitch_275
        0x17 -> :sswitch_265
        0x18 -> :sswitch_259
        0x19 -> :sswitch_245
        0x1a -> :sswitch_235
        0x1b -> :sswitch_221
        0x1c -> :sswitch_211
        0x1d -> :sswitch_205
        0x1e -> :sswitch_1f5
        0x1f -> :sswitch_1e5
        0x20 -> :sswitch_1d9
        0x21 -> :sswitch_1cd
        0x22 -> :sswitch_1bd
        0x23 -> :sswitch_1ad
        0x24 -> :sswitch_1a1
        0x25 -> :sswitch_191
        0x26 -> :sswitch_181
        0x27 -> :sswitch_171
        0x28 -> :sswitch_15d
        0x29 -> :sswitch_149
        0x2a -> :sswitch_139
        0x2b -> :sswitch_125
        0x2c -> :sswitch_111
        0x2d -> :sswitch_101
        0x2e -> :sswitch_f5
        0x2f -> :sswitch_e1
        0x30 -> :sswitch_cd
        0xf43484e -> :sswitch_bb
        0xf444247 -> :sswitch_a5
        0xf445343 -> :sswitch_93
        0xf485348 -> :sswitch_3e
        0xf494e54 -> :sswitch_36
        0xf4c5444 -> :sswitch_34
        0xf504e47 -> :sswitch_26
        0xf524546 -> :sswitch_14
        0xf535953 -> :sswitch_c
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 1293
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 1321
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1322
    return-object p0

    .line 1324
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

    .line 1328
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1329
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1283
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1315
    const/4 p1, 0x1

    return p1
.end method
