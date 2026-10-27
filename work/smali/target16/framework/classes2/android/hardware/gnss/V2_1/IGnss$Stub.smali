.class public abstract Landroid/hardware/gnss/V2_1/IGnss$Stub;
.super Landroid/os/HwBinder;
.source "IGnss.java"

# interfaces
.implements Landroid/hardware/gnss/V2_1/IGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1207
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1210
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

    .line 1226
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1266
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1267
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1268
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1269
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1270
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1238
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_2a

    new-array v3, v1, [B

    fill-array-data v3, :array_3e

    new-array v4, v1, [B

    fill-array-data v4, :array_52

    new-array v5, v1, [B

    fill-array-data v5, :array_66

    new-array v1, v1, [B

    fill-array-data v1, :array_7a

    filled-new-array {v2, v3, v4, v5, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_2a
    .array-data 1
        -0x3dt
        0x19t
        -0x1at
        -0x75t
        0x3t
        -0x7et
        -0x67t
        0x58t
        0x40t
        0x44t
        0x2t
        -0x3et
        -0x27t
        -0x3at
        -0x7et
        0x1t
        -0x6at
        0x78t
        0x8t
        0x7dt
        0x60t
        0x49t
        0x58t
        0x7t
        -0x40t
        -0x59t
        0x44t
        0x4et
        0xat
        0x6at
        -0x7t
        -0x7ft
    .end array-data

    :array_3e
    .array-data 1
        -0xbt
        0x60t
        0x5ft
        0x48t
        -0x3et
        -0x5t
        -0x61t
        0x23t
        0x16t
        0x15t
        -0x23t
        -0x6dt
        0x2bt
        -0x9t
        0x30t
        -0x52t
        -0x6bt
        0x40t
        -0xct
        -0x7t
        -0x75t
        0x5bt
        0x7at
        -0x1et
        -0x4et
        0x69t
        -0x69t
        0x5ft
        0x45t
        0x2ft
        0x6dt
        0x73t
    .end array-data

    :array_52
    .array-data 1
        -0x4bt
        -0xft
        -0xct
        -0x3ft
        -0x43t
        0x6dt
        -0x19t
        0x1at
        -0x72t
        0x71t
        -0x29t
        0xft
        0x57t
        -0x33t
        -0x55t
        -0x70t
        0x4at
        -0x40t
        0x24t
        -0x5ft
        0x2ft
        0x3dt
        -0x12t
        0x3et
        0x21t
        0x73t
        0x77t
        0xat
        0x45t
        -0x7dt
        -0x44t
        -0x3et
    .end array-data

    :array_66
    .array-data 1
        -0x13t
        -0x1at
        -0x69t
        0x10t
        -0x3dt
        -0x57t
        0x5ct
        0x2ct
        -0x42t
        -0x7ft
        -0x72t
        0x6ct
        -0x75t
        -0x49t
        0x2ct
        0x78t
        0x16t
        -0x7et
        0x3ft
        -0x54t
        -0x1bt
        -0x4t
        0x21t
        -0x3ft
        0x77t
        0x31t
        -0x4et
        0x6ft
        0x41t
        -0x27t
        0x4dt
        0x65t
    .end array-data

    :array_7a
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1215
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnss"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss@2.1::IGnss"

    const-string v4, "android.hardware.gnss@2.0::IGnss"

    const-string v5, "android.hardware.gnss@1.1::IGnss"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1232
    const-string v0, "android.hardware.gnss@2.1::IGnss"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 1254
    const/4 p1, 0x1

    return p1
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1276
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1278
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1306
    const-string v2, "android.hardware.gnss@2.1::IGnss"

    const-string v3, "android.hardware.gnss@1.1::IGnss"

    const-string v4, "android.hidl.base@1.0::IBase"

    const-string v5, "android.hardware.gnss@2.0::IGnss"

    const-string v6, "android.hardware.gnss@1.0::IGnss"

    const/4 v7, 0x0

    const/4 v8, 0x0

    sparse-switch p1, :sswitch_data_496

    goto/16 :goto_494

    .line 1853
    :sswitch_11
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1855
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->notifySyspropsChanged()V

    .line 1856
    goto/16 :goto_494

    .line 1842
    :sswitch_19
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1844
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1845
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1846
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1847
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1848
    goto/16 :goto_494

    .line 1832
    :sswitch_2b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1834
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->ping()V

    .line 1835
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1836
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1837
    goto/16 :goto_494

    .line 1827
    :sswitch_39
    goto/16 :goto_494

    .line 1819
    :sswitch_3b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1821
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setHALInstrumentation()V

    .line 1822
    goto/16 :goto_494

    .line 1785
    :sswitch_43
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1788
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1790
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1792
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1793
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1794
    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1795
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1796
    nop

    :goto_6a
    if-ge v8, v2, :cond_8b

    .line 1798
    mul-int/lit8 v4, v8, 0x20

    int-to-long v4, v4

    .line 1799
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 1801
    if-eqz v6, :cond_83

    array-length v7, v6

    const/16 v9, 0x20

    if-ne v7, v9, :cond_83

    .line 1805
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1806
    nop

    .line 1796
    add-int/lit8 v8, v8, 0x1

    goto :goto_6a

    .line 1802
    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1809
    :cond_8b
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1811
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1813
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1814
    goto/16 :goto_494

    .line 1774
    :sswitch_98
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1777
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1778
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1779
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1780
    goto/16 :goto_494

    .line 1762
    :sswitch_aa
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v2

    .line 1765
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1766
    invoke-virtual {p0, v2, v1}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1767
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1768
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1769
    goto/16 :goto_494

    .line 1751
    :sswitch_c0
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1754
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1755
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1756
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1757
    goto/16 :goto_494

    .line 1740
    :sswitch_d2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1742
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssAntennaInfo()Landroid/hardware/gnss/V2_1/IGnssAntennaInfo;

    move-result-object v0

    .line 1743
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1744
    if-nez v0, :cond_df

    goto :goto_e3

    :cond_df
    invoke-interface {v0}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfo;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_e3
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1745
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1746
    goto/16 :goto_494

    .line 1729
    :sswitch_eb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1731
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionMeasurementCorrections_1_1()Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections;

    move-result-object v0

    .line 1732
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1733
    if-nez v0, :cond_f8

    goto :goto_fc

    :cond_f8
    invoke-interface {v0}, Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_fc
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1734
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1735
    goto/16 :goto_494

    .line 1718
    :sswitch_104
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1720
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssConfiguration_2_1()Landroid/hardware/gnss/V2_1/IGnssConfiguration;

    move-result-object v0

    .line 1721
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1722
    if-nez v0, :cond_111

    goto :goto_115

    :cond_111
    invoke-interface {v0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_115
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1723
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1724
    goto/16 :goto_494

    .line 1707
    :sswitch_11d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1709
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssMeasurement_2_1()Landroid/hardware/gnss/V2_1/IGnssMeasurement;

    move-result-object v0

    .line 1710
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1711
    if-nez v0, :cond_12a

    goto :goto_12e

    :cond_12a
    invoke-interface {v0}, Landroid/hardware/gnss/V2_1/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_12e
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1712
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1713
    goto/16 :goto_494

    .line 1695
    :sswitch_136
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1697
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/V2_1/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_1/IGnssCallback;

    move-result-object v1

    .line 1698
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setCallback_2_1(Landroid/hardware/gnss/V2_1/IGnssCallback;)Z

    move-result v0

    .line 1699
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1700
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1701
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1702
    goto/16 :goto_494

    .line 1682
    :sswitch_150
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    new-instance v2, Landroid/hardware/gnss/V2_0/GnssLocation;

    invoke-direct {v2}, Landroid/hardware/gnss/V2_0/GnssLocation;-><init>()V

    .line 1685
    invoke-virtual {v2, p2}, Landroid/hardware/gnss/V2_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1686
    invoke-virtual {p0, v2}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->injectBestLocation_2_0(Landroid/hardware/gnss/V2_0/GnssLocation;)Z

    move-result v0

    .line 1687
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1688
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1689
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1690
    goto/16 :goto_494

    .line 1671
    :sswitch_16a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssBatching_2_0()Landroid/hardware/gnss/V2_0/IGnssBatching;

    move-result-object v0

    .line 1674
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1675
    if-nez v0, :cond_177

    goto :goto_17b

    :cond_177
    invoke-interface {v0}, Landroid/hardware/gnss/V2_0/IGnssBatching;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_17b
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1676
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1677
    goto/16 :goto_494

    .line 1660
    :sswitch_183
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1662
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionVisibilityControl()Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;

    move-result-object v0

    .line 1663
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1664
    if-nez v0, :cond_190

    goto :goto_194

    :cond_190
    invoke-interface {v0}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_194
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1665
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1666
    goto/16 :goto_494

    .line 1649
    :sswitch_19c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1651
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionMeasurementCorrections()Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrections;

    move-result-object v0

    .line 1652
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1653
    if-nez v0, :cond_1a9

    goto :goto_1ad

    :cond_1a9
    invoke-interface {v0}, Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrections;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_1ad
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1654
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1655
    goto/16 :goto_494

    .line 1638
    :sswitch_1b5
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1640
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssMeasurement_2_0()Landroid/hardware/gnss/V2_0/IGnssMeasurement;

    move-result-object v0

    .line 1641
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1642
    if-nez v0, :cond_1c2

    goto :goto_1c6

    :cond_1c2
    invoke-interface {v0}, Landroid/hardware/gnss/V2_0/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_1c6
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1643
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1644
    goto/16 :goto_494

    .line 1627
    :sswitch_1ce
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1629
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionAGnssRil_2_0()Landroid/hardware/gnss/V2_0/IAGnssRil;

    move-result-object v0

    .line 1630
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1631
    if-nez v0, :cond_1db

    goto :goto_1df

    :cond_1db
    invoke-interface {v0}, Landroid/hardware/gnss/V2_0/IAGnssRil;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_1df
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1632
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1633
    goto/16 :goto_494

    .line 1616
    :sswitch_1e7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1618
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionAGnss_2_0()Landroid/hardware/gnss/V2_0/IAGnss;

    move-result-object v0

    .line 1619
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1620
    if-nez v0, :cond_1f4

    goto :goto_1f8

    :cond_1f4
    invoke-interface {v0}, Landroid/hardware/gnss/V2_0/IAGnss;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_1f8
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1621
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1622
    goto/16 :goto_494

    .line 1605
    :sswitch_200
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssDebug_2_0()Landroid/hardware/gnss/V2_0/IGnssDebug;

    move-result-object v0

    .line 1608
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1609
    if-nez v0, :cond_20d

    goto :goto_211

    :cond_20d
    invoke-interface {v0}, Landroid/hardware/gnss/V2_0/IGnssDebug;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_211
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1610
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1611
    goto/16 :goto_494

    .line 1594
    :sswitch_219
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1596
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssConfiguration_2_0()Landroid/hardware/gnss/V2_0/IGnssConfiguration;

    move-result-object v0

    .line 1597
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1598
    if-nez v0, :cond_226

    goto :goto_22a

    :cond_226
    invoke-interface {v0}, Landroid/hardware/gnss/V2_0/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_22a
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1599
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1600
    goto/16 :goto_494

    .line 1582
    :sswitch_232
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1584
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/V2_0/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_0/IGnssCallback;

    move-result-object v1

    .line 1585
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setCallback_2_0(Landroid/hardware/gnss/V2_0/IGnssCallback;)Z

    move-result v0

    .line 1586
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1587
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1589
    goto/16 :goto_494

    .line 1569
    :sswitch_24c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1571
    new-instance v2, Landroid/hardware/gnss/V1_0/GnssLocation;

    invoke-direct {v2}, Landroid/hardware/gnss/V1_0/GnssLocation;-><init>()V

    .line 1572
    invoke-virtual {v2, p2}, Landroid/hardware/gnss/V1_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1573
    invoke-virtual {p0, v2}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->injectBestLocation(Landroid/hardware/gnss/V1_0/GnssLocation;)Z

    move-result v0

    .line 1574
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1575
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1576
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1577
    goto/16 :goto_494

    .line 1558
    :sswitch_266
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1560
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssMeasurement_1_1()Landroid/hardware/gnss/V1_1/IGnssMeasurement;

    move-result-object v0

    .line 1561
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1562
    if-nez v0, :cond_273

    goto :goto_277

    :cond_273
    invoke-interface {v0}, Landroid/hardware/gnss/V1_1/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_277
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1563
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1564
    goto/16 :goto_494

    .line 1547
    :sswitch_27f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1549
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssConfiguration_1_1()Landroid/hardware/gnss/V1_1/IGnssConfiguration;

    move-result-object v0

    .line 1550
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1551
    if-nez v0, :cond_28c

    goto :goto_290

    :cond_28c
    invoke-interface {v0}, Landroid/hardware/gnss/V1_1/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_290
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1552
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1553
    goto/16 :goto_494

    .line 1530
    :sswitch_298
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 1533
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1534
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1535
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1536
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1537
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 1538
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setPositionMode_1_1(BIIIIZ)Z

    move-result v0

    .line 1539
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1540
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1541
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1542
    goto/16 :goto_494

    .line 1518
    :sswitch_2c3
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1520
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/V1_1/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_1/IGnssCallback;

    move-result-object v1

    .line 1521
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setCallback_1_1(Landroid/hardware/gnss/V1_1/IGnssCallback;)Z

    move-result v0

    .line 1522
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1523
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1524
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1525
    goto/16 :goto_494

    .line 1507
    :sswitch_2dd
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssBatching()Landroid/hardware/gnss/V1_0/IGnssBatching;

    move-result-object v0

    .line 1510
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1511
    if-nez v0, :cond_2ea

    goto :goto_2ee

    :cond_2ea
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssBatching;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_2ee
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1512
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1513
    goto/16 :goto_494

    .line 1496
    :sswitch_2f6
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssDebug()Landroid/hardware/gnss/V1_0/IGnssDebug;

    move-result-object v0

    .line 1499
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1500
    if-nez v0, :cond_303

    goto :goto_307

    :cond_303
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssDebug;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_307
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1501
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1502
    goto/16 :goto_494

    .line 1485
    :sswitch_30f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssConfiguration()Landroid/hardware/gnss/V1_0/IGnssConfiguration;

    move-result-object v0

    .line 1488
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1489
    if-nez v0, :cond_31c

    goto :goto_320

    :cond_31c
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_320
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1490
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1491
    goto/16 :goto_494

    .line 1474
    :sswitch_328
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionXtra()Landroid/hardware/gnss/V1_0/IGnssXtra;

    move-result-object v0

    .line 1477
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1478
    if-nez v0, :cond_335

    goto :goto_339

    :cond_335
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssXtra;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_339
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1479
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1480
    goto/16 :goto_494

    .line 1463
    :sswitch_341
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssNavigationMessage()Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;

    move-result-object v0

    .line 1466
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1467
    if-nez v0, :cond_34e

    goto :goto_352

    :cond_34e
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_352
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1468
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1469
    goto/16 :goto_494

    .line 1452
    :sswitch_35a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1454
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssMeasurement()Landroid/hardware/gnss/V1_0/IGnssMeasurement;

    move-result-object v0

    .line 1455
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1456
    if-nez v0, :cond_367

    goto :goto_36b

    :cond_367
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_36b
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1457
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1458
    goto/16 :goto_494

    .line 1441
    :sswitch_373
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssNi()Landroid/hardware/gnss/V1_0/IGnssNi;

    move-result-object v0

    .line 1444
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1445
    if-nez v0, :cond_380

    goto :goto_384

    :cond_380
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssNi;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_384
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1446
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1447
    goto/16 :goto_494

    .line 1430
    :sswitch_38c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionAGnss()Landroid/hardware/gnss/V1_0/IAGnss;

    move-result-object v0

    .line 1433
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1434
    if-nez v0, :cond_399

    goto :goto_39d

    :cond_399
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IAGnss;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_39d
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1435
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1436
    goto/16 :goto_494

    .line 1419
    :sswitch_3a5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssGeofencing()Landroid/hardware/gnss/V1_0/IGnssGeofencing;

    move-result-object v0

    .line 1422
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1423
    if-nez v0, :cond_3b2

    goto :goto_3b6

    :cond_3b2
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_3b6
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1424
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1425
    goto/16 :goto_494

    .line 1408
    :sswitch_3be
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1410
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionAGnssRil()Landroid/hardware/gnss/V1_0/IAGnssRil;

    move-result-object v0

    .line 1411
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1412
    if-nez v0, :cond_3cb

    goto :goto_3cf

    :cond_3cb
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IAGnssRil;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    :goto_3cf
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1413
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1414
    goto/16 :goto_494

    .line 1392
    :sswitch_3d7
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 1395
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1396
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1397
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1398
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1399
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setPositionMode(BIIII)Z

    move-result v0

    .line 1400
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1401
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1402
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1403
    goto/16 :goto_494

    .line 1381
    :sswitch_3fe
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v1

    .line 1384
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->deleteAidingData(S)V

    .line 1385
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1386
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1387
    goto/16 :goto_494

    .line 1367
    :sswitch_410
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v1

    .line 1370
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v3

    .line 1371
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v5

    .line 1372
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->injectLocation(DDF)Z

    move-result v0

    .line 1373
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1374
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1375
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1376
    goto :goto_494

    .line 1353
    :sswitch_42e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    .line 1356
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1357
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1358
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->injectTime(JJI)Z

    move-result v0

    .line 1359
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1360
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1361
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1362
    goto :goto_494

    .line 1343
    :sswitch_44c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->cleanup()V

    .line 1346
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1347
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1348
    goto :goto_494

    .line 1332
    :sswitch_459
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1334
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->stop()Z

    move-result v0

    .line 1335
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1336
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1337
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1338
    goto :goto_494

    .line 1321
    :sswitch_46a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->start()Z

    move-result v0

    .line 1324
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1325
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1326
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1327
    goto :goto_494

    .line 1309
    :sswitch_47b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssCallback;

    move-result-object v1

    .line 1312
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setCallback(Landroid/hardware/gnss/V1_0/IGnssCallback;)Z

    move-result v0

    .line 1313
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1314
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1315
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1316
    nop

    .line 1865
    :goto_494
    return-void

    nop

    :sswitch_data_496
    .sparse-switch
        0x1 -> :sswitch_47b
        0x2 -> :sswitch_46a
        0x3 -> :sswitch_459
        0x4 -> :sswitch_44c
        0x5 -> :sswitch_42e
        0x6 -> :sswitch_410
        0x7 -> :sswitch_3fe
        0x8 -> :sswitch_3d7
        0x9 -> :sswitch_3be
        0xa -> :sswitch_3a5
        0xb -> :sswitch_38c
        0xc -> :sswitch_373
        0xd -> :sswitch_35a
        0xe -> :sswitch_341
        0xf -> :sswitch_328
        0x10 -> :sswitch_30f
        0x11 -> :sswitch_2f6
        0x12 -> :sswitch_2dd
        0x13 -> :sswitch_2c3
        0x14 -> :sswitch_298
        0x15 -> :sswitch_27f
        0x16 -> :sswitch_266
        0x17 -> :sswitch_24c
        0x18 -> :sswitch_232
        0x19 -> :sswitch_219
        0x1a -> :sswitch_200
        0x1b -> :sswitch_1e7
        0x1c -> :sswitch_1ce
        0x1d -> :sswitch_1b5
        0x1e -> :sswitch_19c
        0x1f -> :sswitch_183
        0x20 -> :sswitch_16a
        0x21 -> :sswitch_150
        0x22 -> :sswitch_136
        0x23 -> :sswitch_11d
        0x24 -> :sswitch_104
        0x25 -> :sswitch_eb
        0x26 -> :sswitch_d2
        0xf43484e -> :sswitch_c0
        0xf444247 -> :sswitch_aa
        0xf445343 -> :sswitch_98
        0xf485348 -> :sswitch_43
        0xf494e54 -> :sswitch_3b
        0xf4c5444 -> :sswitch_39
        0xf504e47 -> :sswitch_2b
        0xf524546 -> :sswitch_19
        0xf535953 -> :sswitch_11
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 1260
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 1288
    const-string v0, "android.hardware.gnss@2.1::IGnss"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1289
    return-object p0

    .line 1291
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

    .line 1295
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->registerService(Ljava/lang/String;)V

    .line 1296
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1250
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1282
    const/4 p1, 0x1

    return p1
.end method
