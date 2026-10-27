.class public abstract Landroid/hardware/radio/V1_5/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Landroid/hardware/radio/V1_5/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1600
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1603
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

    .line 1621
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1663
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1664
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1665
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1666
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1667
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

    .line 1633
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

    :array_48
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

    :array_5c
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

    :array_70
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

    :array_84
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

    :array_98
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

    .line 1608
    new-instance v0, Ljava/util/ArrayList;

    const-string v6, "android.hardware.radio@1.0::IRadioIndication"

    const-string v7, "android.hidl.base@1.0::IBase"

    const-string v1, "android.hardware.radio@1.5::IRadioIndication"

    const-string v2, "android.hardware.radio@1.4::IRadioIndication"

    const-string v3, "android.hardware.radio@1.3::IRadioIndication"

    const-string v4, "android.hardware.radio@1.2::IRadioIndication"

    const-string v5, "android.hardware.radio@1.1::IRadioIndication"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1627
    const-string v0, "android.hardware.radio@1.5::IRadioIndication"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 1651
    const/4 p1, 0x1

    return p1
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1673
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1675
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1703
    const-string p4, "android.hardware.radio@1.1::IRadioIndication"

    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    const-string v1, "android.hardware.radio@1.5::IRadioIndication"

    const-string v2, "android.hardware.radio@1.4::IRadioIndication"

    const/4 v3, 0x0

    const-string v4, "android.hidl.base@1.0::IBase"

    const-string v5, "android.hardware.radio@1.0::IRadioIndication"

    sparse-switch p1, :sswitch_data_55e

    goto/16 :goto_55d

    .line 2475
    :sswitch_12
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2477
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->notifySyspropsChanged()V

    .line 2478
    goto/16 :goto_55d

    .line 2464
    :sswitch_1a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2466
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 2467
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2468
    invoke-virtual {p1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2469
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2470
    goto/16 :goto_55d

    .line 2454
    :sswitch_2c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2456
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->ping()V

    .line 2457
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2458
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2459
    goto/16 :goto_55d

    .line 2449
    :sswitch_3a
    goto/16 :goto_55d

    .line 2441
    :sswitch_3c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2443
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->setHALInstrumentation()V

    .line 2444
    goto/16 :goto_55d

    .line 2407
    :sswitch_44
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2409
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 2410
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2412
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2414
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 2415
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2416
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2417
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 2418
    nop

    :goto_6b
    if-ge v3, p4, :cond_8c

    .line 2420
    mul-int/lit8 v1, v3, 0x20

    int-to-long v1, v1

    .line 2421
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 2423
    if-eqz v4, :cond_84

    array-length v5, v4

    const/16 v6, 0x20

    if-ne v5, v6, :cond_84

    .line 2427
    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2428
    nop

    .line 2418
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 2424
    :cond_84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2431
    :cond_8c
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2433
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2435
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2436
    goto/16 :goto_55d

    .line 2396
    :sswitch_99
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2398
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 2399
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2400
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2401
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2402
    goto/16 :goto_55d

    .line 2384
    :sswitch_ab
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2386
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 2387
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2388
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2389
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2390
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2391
    goto/16 :goto_55d

    .line 2373
    :sswitch_c1
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2375
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 2376
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2377
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2378
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2379
    goto/16 :goto_55d

    .line 2363
    :sswitch_d3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2365
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2366
    invoke-static {p2}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2367
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->dataCallListChanged_1_5(ILjava/util/ArrayList;)V

    .line 2368
    goto/16 :goto_55d

    .line 2352
    :sswitch_e3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2354
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2355
    new-instance p3, Landroid/hardware/radio/V1_5/NetworkScanResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_5/NetworkScanResult;-><init>()V

    .line 2356
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_5/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2357
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->networkScanResult_1_5(ILandroid/hardware/radio/V1_5/NetworkScanResult;)V

    .line 2358
    goto/16 :goto_55d

    .line 2342
    :sswitch_f7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2344
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2345
    invoke-static {p2}, Landroid/hardware/radio/V1_5/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2346
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cellInfoList_1_5(ILjava/util/ArrayList;)V

    .line 2347
    goto/16 :goto_55d

    .line 2330
    :sswitch_107
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2332
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2333
    new-instance p3, Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-direct {p3}, Landroid/hardware/radio/V1_5/CellIdentity;-><init>()V

    .line 2334
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_5/CellIdentity;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2335
    invoke-static {p2}, Landroid/hardware/radio/V1_5/BarringInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2336
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->barringInfoChanged(ILandroid/hardware/radio/V1_5/CellIdentity;Ljava/util/ArrayList;)V

    .line 2337
    goto/16 :goto_55d

    .line 2315
    :sswitch_11f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2317
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2318
    new-instance v2, Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-direct {v2}, Landroid/hardware/radio/V1_5/CellIdentity;-><init>()V

    .line 2319
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_5/CellIdentity;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2320
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2321
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 2322
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2323
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 2324
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->registrationFailed(ILandroid/hardware/radio/V1_5/CellIdentity;Ljava/lang/String;III)V

    .line 2325
    goto/16 :goto_55d

    .line 2305
    :sswitch_144
    move-object p1, p0

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2307
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2308
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 2309
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->uiccApplicationsEnablementChanged(IZ)V

    .line 2310
    goto/16 :goto_55d

    .line 2294
    :sswitch_155
    move-object p1, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2296
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2297
    new-instance p4, Landroid/hardware/radio/V1_4/SignalStrength;

    invoke-direct {p4}, Landroid/hardware/radio/V1_4/SignalStrength;-><init>()V

    .line 2298
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_4/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2299
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->currentSignalStrength_1_4(ILandroid/hardware/radio/V1_4/SignalStrength;)V

    .line 2300
    goto/16 :goto_55d

    .line 2284
    :sswitch_16a
    move-object p1, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2286
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2287
    invoke-static {p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2288
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->dataCallListChanged_1_4(ILjava/util/ArrayList;)V

    .line 2289
    goto/16 :goto_55d

    .line 2274
    :sswitch_17b
    move-object p1, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2277
    invoke-static {p2}, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2278
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->currentPhysicalChannelConfigs_1_4(ILjava/util/ArrayList;)V

    .line 2279
    goto/16 :goto_55d

    .line 2263
    :sswitch_18c
    move-object p1, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2265
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2266
    new-instance p4, Landroid/hardware/radio/V1_4/NetworkScanResult;

    invoke-direct {p4}, Landroid/hardware/radio/V1_4/NetworkScanResult;-><init>()V

    .line 2267
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_4/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2268
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->networkScanResult_1_4(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V

    .line 2269
    goto/16 :goto_55d

    .line 2253
    :sswitch_1a1
    move-object p1, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2255
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2256
    invoke-static {p2}, Landroid/hardware/radio/V1_4/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2257
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cellInfoList_1_4(ILjava/util/ArrayList;)V

    .line 2258
    goto/16 :goto_55d

    .line 2243
    :sswitch_1b2
    move-object p1, p0

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2245
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2246
    invoke-static {p2}, Landroid/hardware/radio/V1_4/EmergencyNumber;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2247
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->currentEmergencyNumberList(ILjava/util/ArrayList;)V

    .line 2248
    goto/16 :goto_55d

    .line 2232
    :sswitch_1c3
    move-object p1, p0

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2234
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2235
    new-instance p4, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {p4}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 2236
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2237
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V

    .line 2238
    goto/16 :goto_55d

    .line 2222
    :sswitch_1d8
    move-object p1, p0

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2224
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2225
    invoke-static {p2}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2226
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V

    .line 2227
    goto/16 :goto_55d

    .line 2211
    :sswitch_1e9
    move-object p1, p0

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2213
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2214
    new-instance p4, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    invoke-direct {p4}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;-><init>()V

    .line 2215
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2216
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V

    .line 2217
    goto/16 :goto_55d

    .line 2201
    :sswitch_1fe
    move-object p1, p0

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2203
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2204
    invoke-static {p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2205
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cellInfoList_1_2(ILjava/util/ArrayList;)V

    .line 2206
    goto/16 :goto_55d

    .line 2190
    :sswitch_20f
    move-object p1, p0

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2192
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2193
    new-instance p4, Landroid/hardware/radio/V1_2/NetworkScanResult;

    invoke-direct {p4}, Landroid/hardware/radio/V1_2/NetworkScanResult;-><init>()V

    .line 2194
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_2/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2195
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 2196
    goto/16 :goto_55d

    .line 2179
    :sswitch_224
    move-object p1, p0

    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2181
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2182
    new-instance p4, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {p4}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 2183
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2184
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 2185
    goto/16 :goto_55d

    .line 2168
    :sswitch_239
    move-object p1, p0

    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2170
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2171
    new-instance p4, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {p4}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 2172
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2173
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 2174
    goto/16 :goto_55d

    .line 2159
    :sswitch_24e
    move-object p1, p0

    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2161
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2162
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 2163
    goto/16 :goto_55d

    .line 2149
    :sswitch_25b
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2152
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2153
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 2154
    goto/16 :goto_55d

    .line 2138
    :sswitch_26c
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2140
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2141
    new-instance p4, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 2142
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2143
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 2144
    goto/16 :goto_55d

    .line 2127
    :sswitch_281
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2129
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2130
    new-instance p4, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 2131
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2132
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 2133
    goto/16 :goto_55d

    .line 2117
    :sswitch_296
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2119
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2120
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2121
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 2122
    goto/16 :goto_55d

    .line 2106
    :sswitch_2a7
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2109
    new-instance p4, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 2110
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2111
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 2112
    goto/16 :goto_55d

    .line 2095
    :sswitch_2bc
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2097
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2098
    new-instance p4, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 2099
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2100
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 2101
    goto/16 :goto_55d

    .line 2085
    :sswitch_2d1
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2087
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2088
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2089
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 2090
    goto/16 :goto_55d

    .line 2075
    :sswitch_2e2
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2077
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2078
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2079
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->srvccStateNotify(II)V

    .line 2080
    goto/16 :goto_55d

    .line 2065
    :sswitch_2f3
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2068
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 2069
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 2070
    goto/16 :goto_55d

    .line 2056
    :sswitch_304
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2058
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2059
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 2060
    goto/16 :goto_55d

    .line 2046
    :sswitch_311
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2048
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2049
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2050
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 2051
    goto/16 :goto_55d

    .line 2036
    :sswitch_322
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2039
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2040
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 2041
    goto/16 :goto_55d

    .line 2027
    :sswitch_333
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2029
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2030
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->rilConnected(I)V

    .line 2031
    goto/16 :goto_55d

    .line 2018
    :sswitch_340
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2020
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2021
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 2022
    goto/16 :goto_55d

    .line 2008
    :sswitch_34d
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2010
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2011
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2012
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 2013
    goto/16 :goto_55d

    .line 1998
    :sswitch_35e
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2000
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2001
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2002
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 2003
    goto/16 :goto_55d

    .line 1989
    :sswitch_36f
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1991
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1992
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->resendIncallMute(I)V

    .line 1993
    goto/16 :goto_55d

    .line 1979
    :sswitch_37c
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1981
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1982
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 1983
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 1984
    goto/16 :goto_55d

    .line 1968
    :sswitch_38d
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1970
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1971
    new-instance p4, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 1972
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1973
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 1974
    goto/16 :goto_55d

    .line 1958
    :sswitch_3a2
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1960
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1961
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1962
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 1963
    goto/16 :goto_55d

    .line 1947
    :sswitch_3b3
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1949
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1950
    new-instance p4, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 1951
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1952
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 1953
    goto/16 :goto_55d

    .line 1938
    :sswitch_3c8
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1940
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1941
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 1942
    goto/16 :goto_55d

    .line 1928
    :sswitch_3d5
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1930
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1931
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1932
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 1933
    goto/16 :goto_55d

    .line 1919
    :sswitch_3e6
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1921
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1922
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 1923
    goto/16 :goto_55d

    .line 1909
    :sswitch_3f3
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1912
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1913
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 1914
    goto/16 :goto_55d

    .line 1898
    :sswitch_404
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1900
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1901
    new-instance p4, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1902
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1903
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 1904
    goto/16 :goto_55d

    .line 1889
    :sswitch_419
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1891
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1892
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->simStatusChanged(I)V

    .line 1893
    goto/16 :goto_55d

    .line 1877
    :sswitch_426
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1880
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p4

    .line 1881
    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 1882
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1883
    invoke-virtual {p0, p3, p4, v0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 1884
    goto/16 :goto_55d

    .line 1866
    :sswitch_43f
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1868
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1869
    new-instance p4, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 1870
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1871
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 1872
    goto/16 :goto_55d

    .line 1857
    :sswitch_454
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1859
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1860
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 1861
    goto/16 :goto_55d

    .line 1847
    :sswitch_461
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1850
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1851
    invoke-virtual {p0, p3, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 1852
    goto/16 :goto_55d

    .line 1837
    :sswitch_472
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1840
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1841
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 1842
    goto/16 :goto_55d

    .line 1827
    :sswitch_483
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1829
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1830
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1831
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 1832
    goto/16 :goto_55d

    .line 1818
    :sswitch_494
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1820
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1821
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->stkSessionEnd(I)V

    .line 1822
    goto/16 :goto_55d

    .line 1807
    :sswitch_4a1
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1809
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1810
    new-instance p4, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 1811
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1812
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 1813
    goto/16 :goto_55d

    .line 1797
    :sswitch_4b6
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1799
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1800
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1801
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 1802
    goto/16 :goto_55d

    .line 1786
    :sswitch_4c7
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1788
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1789
    new-instance p4, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {p4}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 1790
    invoke-virtual {p4, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1791
    invoke-virtual {p0, p3, p4}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 1792
    goto/16 :goto_55d

    .line 1775
    :sswitch_4dc
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1777
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1778
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1779
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1780
    invoke-virtual {p0, p3, p4, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 1781
    goto/16 :goto_55d

    .line 1764
    :sswitch_4f1
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1767
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1768
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1769
    invoke-virtual {p0, p3, p4, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 1770
    goto :goto_55d

    .line 1754
    :sswitch_505
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1756
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1757
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1758
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->newSmsOnSim(II)V

    .line 1759
    goto :goto_55d

    .line 1744
    :sswitch_515
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1746
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1747
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1748
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 1749
    goto :goto_55d

    .line 1734
    :sswitch_525
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1737
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1738
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 1739
    goto :goto_55d

    .line 1725
    :sswitch_535
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1727
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1728
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->networkStateChanged(I)V

    .line 1729
    goto :goto_55d

    .line 1716
    :sswitch_541
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1718
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1719
    invoke-virtual {p0, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->callStateChanged(I)V

    .line 1720
    goto :goto_55d

    .line 1706
    :sswitch_54d
    move-object p1, p0

    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1709
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1710
    invoke-virtual {p0, p3, p2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->radioStateChanged(II)V

    .line 1711
    nop

    .line 2487
    :goto_55d
    return-void

    :sswitch_data_55e
    .sparse-switch
        0x1 -> :sswitch_54d
        0x2 -> :sswitch_541
        0x3 -> :sswitch_535
        0x4 -> :sswitch_525
        0x5 -> :sswitch_515
        0x6 -> :sswitch_505
        0x7 -> :sswitch_4f1
        0x8 -> :sswitch_4dc
        0x9 -> :sswitch_4c7
        0xa -> :sswitch_4b6
        0xb -> :sswitch_4a1
        0xc -> :sswitch_494
        0xd -> :sswitch_483
        0xe -> :sswitch_472
        0xf -> :sswitch_461
        0x10 -> :sswitch_454
        0x11 -> :sswitch_43f
        0x12 -> :sswitch_426
        0x13 -> :sswitch_419
        0x14 -> :sswitch_404
        0x15 -> :sswitch_3f3
        0x16 -> :sswitch_3e6
        0x17 -> :sswitch_3d5
        0x18 -> :sswitch_3c8
        0x19 -> :sswitch_3b3
        0x1a -> :sswitch_3a2
        0x1b -> :sswitch_38d
        0x1c -> :sswitch_37c
        0x1d -> :sswitch_36f
        0x1e -> :sswitch_35e
        0x1f -> :sswitch_34d
        0x20 -> :sswitch_340
        0x21 -> :sswitch_333
        0x22 -> :sswitch_322
        0x23 -> :sswitch_311
        0x24 -> :sswitch_304
        0x25 -> :sswitch_2f3
        0x26 -> :sswitch_2e2
        0x27 -> :sswitch_2d1
        0x28 -> :sswitch_2bc
        0x29 -> :sswitch_2a7
        0x2a -> :sswitch_296
        0x2b -> :sswitch_281
        0x2c -> :sswitch_26c
        0x2d -> :sswitch_25b
        0x2e -> :sswitch_24e
        0x2f -> :sswitch_239
        0x30 -> :sswitch_224
        0x31 -> :sswitch_20f
        0x32 -> :sswitch_1fe
        0x33 -> :sswitch_1e9
        0x34 -> :sswitch_1d8
        0x35 -> :sswitch_1c3
        0x36 -> :sswitch_1b2
        0x37 -> :sswitch_1a1
        0x38 -> :sswitch_18c
        0x39 -> :sswitch_17b
        0x3a -> :sswitch_16a
        0x3b -> :sswitch_155
        0x3c -> :sswitch_144
        0x3d -> :sswitch_11f
        0x3e -> :sswitch_107
        0x3f -> :sswitch_f7
        0x40 -> :sswitch_e3
        0x41 -> :sswitch_d3
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

    .line 1657
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 1685
    const-string v0, "android.hardware.radio@1.5::IRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1686
    return-object p0

    .line 1688
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

    .line 1692
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1693
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1647
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1679
    const/4 p1, 0x1

    return p1
.end method
