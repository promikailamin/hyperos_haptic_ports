.class public abstract Landroid/hardware/radio/V1_0/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_0/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_0/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4158
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 4161
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

    .line 4174
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 4211
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4212
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 4213
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 4214
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 4215
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

    .line 4186
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

    .line 4166
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.0::IRadio"

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

    .line 4180
    const-string v0, "android.hardware.radio@1.0::IRadio"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 4199
    const/4 p1, 0x1

    return p1
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 4221
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 4223
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4251
    const-string v3, "android.hidl.base@1.0::IBase"

    const/4 v4, 0x0

    const-string v5, "android.hardware.radio@1.0::IRadio"

    sparse-switch p1, :sswitch_data_914

    goto/16 :goto_912

    .line 5665
    :sswitch_a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5667
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->notifySyspropsChanged()V

    .line 5668
    goto/16 :goto_912

    .line 5654
    :sswitch_12
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5656
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5657
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5658
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5659
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5660
    goto/16 :goto_912

    .line 5644
    :sswitch_24
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5646
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->ping()V

    .line 5647
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5648
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5649
    goto/16 :goto_912

    .line 5639
    :sswitch_32
    goto/16 :goto_912

    .line 5631
    :sswitch_34
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5633
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setHALInstrumentation()V

    .line 5634
    goto/16 :goto_912

    .line 5597
    :sswitch_3c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5599
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5600
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5602
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 5604
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5605
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5606
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5607
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v3, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 5608
    nop

    :goto_63
    if-ge v4, v3, :cond_84

    .line 5610
    mul-int/lit8 v6, v4, 0x20

    int-to-long v6, v6

    .line 5611
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 5613
    if-eqz v8, :cond_7c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_7c

    .line 5617
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5618
    nop

    .line 5608
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 5614
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5621
    :cond_84
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5623
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5625
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5626
    goto/16 :goto_912

    .line 5586
    :sswitch_91
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5588
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 5589
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5590
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5591
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5592
    goto/16 :goto_912

    .line 5574
    :sswitch_a3
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5576
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v3

    .line 5577
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5578
    invoke-virtual {p0, v3, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5579
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5580
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5581
    goto/16 :goto_912

    .line 5563
    :sswitch_b9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5565
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5566
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5567
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5568
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5569
    goto/16 :goto_912

    .line 5555
    :sswitch_cb
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5557
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->responseAcknowledgement()V

    .line 5558
    goto/16 :goto_912

    .line 5545
    :sswitch_d3
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5547
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5548
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5549
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSimCardPower(IZ)V

    .line 5550
    goto/16 :goto_912

    .line 5535
    :sswitch_e3
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5537
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5538
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5539
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setIndicationFilter(II)V

    .line 5540
    goto/16 :goto_912

    .line 5524
    :sswitch_f3
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5526
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5527
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5528
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5529
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 5530
    goto/16 :goto_912

    .line 5515
    :sswitch_107
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5517
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5518
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAllowedCarriers(I)V

    .line 5519
    goto/16 :goto_912

    .line 5503
    :sswitch_113
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5505
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5506
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5507
    new-instance v4, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v4}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 5508
    invoke-virtual {v4, p2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5509
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 5510
    goto/16 :goto_912

    .line 5494
    :sswitch_12b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5496
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5497
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getModemActivityInfo(I)V

    .line 5498
    goto/16 :goto_912

    .line 5485
    :sswitch_137
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5487
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5488
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->pullLceData(I)V

    .line 5489
    goto/16 :goto_912

    .line 5476
    :sswitch_143
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5478
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5479
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->stopLceService(I)V

    .line 5480
    goto/16 :goto_912

    .line 5465
    :sswitch_14f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5467
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5468
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5469
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5470
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->startLceService(IIZ)V

    .line 5471
    goto/16 :goto_912

    .line 5454
    :sswitch_163
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5456
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5457
    new-instance v3, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5458
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5459
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 5460
    goto/16 :goto_912

    .line 5445
    :sswitch_177
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5447
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5448
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getRadioCapability(I)V

    .line 5449
    goto/16 :goto_912

    .line 5436
    :sswitch_183
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5438
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5439
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestShutdown(I)V

    .line 5440
    goto/16 :goto_912

    .line 5425
    :sswitch_18f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5427
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5428
    invoke-static {p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5429
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5430
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 5431
    goto/16 :goto_912

    .line 5413
    :sswitch_1a3
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5415
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5416
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5417
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5418
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5419
    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 5420
    goto/16 :goto_912

    .line 5404
    :sswitch_1bb
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5406
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5407
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getHardwareConfig(I)V

    .line 5408
    goto/16 :goto_912

    .line 5394
    :sswitch_1c7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5396
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5397
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5398
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setDataAllowed(IZ)V

    .line 5399
    goto/16 :goto_912

    .line 5383
    :sswitch_1d7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5385
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5386
    new-instance v3, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 5387
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5388
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 5389
    goto/16 :goto_912

    .line 5373
    :sswitch_1eb
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5375
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5376
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5377
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvResetConfig(II)V

    .line 5378
    goto/16 :goto_912

    .line 5363
    :sswitch_1fb
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5365
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5366
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5367
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 5368
    goto/16 :goto_912

    .line 5352
    :sswitch_20b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5354
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5355
    new-instance v3, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 5356
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5357
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 5358
    goto/16 :goto_912

    .line 5342
    :sswitch_21f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5344
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5345
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5346
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvReadItem(II)V

    .line 5347
    goto/16 :goto_912

    .line 5331
    :sswitch_22f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5333
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5334
    new-instance v3, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 5335
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5336
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 5337
    goto/16 :goto_912

    .line 5321
    :sswitch_243
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5323
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5324
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5325
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 5326
    goto/16 :goto_912

    .line 5310
    :sswitch_253
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5312
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5313
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5314
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5315
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 5316
    goto/16 :goto_912

    .line 5299
    :sswitch_267
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5301
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5302
    new-instance v3, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 5303
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5304
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 5305
    goto/16 :goto_912

    .line 5288
    :sswitch_27b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5290
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5291
    new-instance v3, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 5292
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5293
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 5294
    goto/16 :goto_912

    .line 5279
    :sswitch_28f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5281
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5282
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getImsRegistrationState(I)V

    .line 5283
    goto/16 :goto_912

    .line 5266
    :sswitch_29b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5268
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5269
    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 5270
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5271
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 5272
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5273
    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 5274
    goto/16 :goto_912

    .line 5256
    :sswitch_2b7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5258
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5259
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5260
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCellInfoListRate(II)V

    .line 5261
    goto/16 :goto_912

    .line 5247
    :sswitch_2c7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5249
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5250
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCellInfoList(I)V

    .line 5251
    goto/16 :goto_912

    .line 5238
    :sswitch_2d3
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5240
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5241
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 5242
    goto/16 :goto_912

    .line 5228
    :sswitch_2df
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5230
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5231
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5232
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 5233
    goto/16 :goto_912

    .line 5217
    :sswitch_2ef
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5219
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5220
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5221
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5222
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 5223
    goto/16 :goto_912

    .line 5207
    :sswitch_303
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5209
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5210
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5211
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 5212
    goto/16 :goto_912

    .line 5198
    :sswitch_313
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5200
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5201
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 5202
    goto/16 :goto_912

    .line 5189
    :sswitch_31f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5191
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5192
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 5193
    goto/16 :goto_912

    .line 5179
    :sswitch_32b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5181
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5182
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5183
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 5184
    goto/16 :goto_912

    .line 5169
    :sswitch_33b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5171
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5172
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5173
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 5174
    goto/16 :goto_912

    .line 5160
    :sswitch_34b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5162
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5163
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getSmscAddress(I)V

    .line 5164
    goto/16 :goto_912

    .line 5151
    :sswitch_357
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5153
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5154
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 5155
    goto/16 :goto_912

    .line 5142
    :sswitch_363
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5144
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5145
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDeviceIdentity(I)V

    .line 5146
    goto/16 :goto_912

    .line 5132
    :sswitch_36f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5134
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5135
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5136
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 5137
    goto/16 :goto_912

    .line 5121
    :sswitch_37f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5123
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5124
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 5125
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5126
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 5127
    goto/16 :goto_912

    .line 5112
    :sswitch_393
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5114
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5115
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCDMASubscription(I)V

    .line 5116
    goto/16 :goto_912

    .line 5102
    :sswitch_39f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5104
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5105
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5106
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 5107
    goto/16 :goto_912

    .line 5092
    :sswitch_3af
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5094
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5095
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5096
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 5097
    goto/16 :goto_912

    .line 5083
    :sswitch_3bf
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5085
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5086
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 5087
    goto/16 :goto_912

    .line 5073
    :sswitch_3cb
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5075
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5076
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5077
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 5078
    goto/16 :goto_912

    .line 5063
    :sswitch_3db
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5065
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5066
    invoke-static {p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5067
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 5068
    goto/16 :goto_912

    .line 5054
    :sswitch_3eb
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5056
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5057
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 5058
    goto/16 :goto_912

    .line 5043
    :sswitch_3f7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5045
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5046
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 5047
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5048
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 5049
    goto/16 :goto_912

    .line 5032
    :sswitch_40b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5034
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5035
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 5036
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5037
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 5038
    goto/16 :goto_912

    .line 5020
    :sswitch_41f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5022
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5023
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5024
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 5025
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5026
    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 5027
    goto/16 :goto_912

    .line 5010
    :sswitch_437
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5012
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5013
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5014
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 5015
    goto/16 :goto_912

    .line 5001
    :sswitch_447
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5003
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5004
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 5005
    goto/16 :goto_912

    .line 4991
    :sswitch_453
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4993
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4994
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4995
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 4996
    goto/16 :goto_912

    .line 4982
    :sswitch_463
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4984
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4985
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getTTYMode(I)V

    .line 4986
    goto/16 :goto_912

    .line 4972
    :sswitch_46f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4974
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4975
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4976
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setTTYMode(II)V

    .line 4977
    goto/16 :goto_912

    .line 4963
    :sswitch_47f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4965
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4966
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 4967
    goto/16 :goto_912

    .line 4953
    :sswitch_48b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4955
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4956
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4957
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 4958
    goto/16 :goto_912

    .line 4943
    :sswitch_49b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4945
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4946
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4947
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 4948
    goto/16 :goto_912

    .line 4933
    :sswitch_4ab
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4935
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4936
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4937
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 4938
    goto/16 :goto_912

    .line 4924
    :sswitch_4bb
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4926
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4927
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getNeighboringCids(I)V

    .line 4928
    goto/16 :goto_912

    .line 4915
    :sswitch_4c7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4917
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4918
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 4919
    goto/16 :goto_912

    .line 4905
    :sswitch_4d3
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4908
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4909
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 4910
    goto/16 :goto_912

    .line 4896
    :sswitch_4e3
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4898
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4899
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->explicitCallTransfer(I)V

    .line 4900
    goto/16 :goto_912

    .line 4886
    :sswitch_4ef
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4888
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4889
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4890
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 4891
    goto/16 :goto_912

    .line 4876
    :sswitch_4ff
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4878
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4879
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4880
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 4881
    goto/16 :goto_912

    .line 4866
    :sswitch_50f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4868
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4869
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4870
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 4871
    goto/16 :goto_912

    .line 4857
    :sswitch_51f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4859
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4860
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAvailableBandModes(I)V

    .line 4861
    goto/16 :goto_912

    .line 4847
    :sswitch_52b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4849
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4850
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4851
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setBandMode(II)V

    .line 4852
    goto/16 :goto_912

    .line 4837
    :sswitch_53b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4839
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4840
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4841
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 4842
    goto/16 :goto_912

    .line 4826
    :sswitch_54b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4828
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4829
    new-instance v3, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 4830
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4831
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 4832
    goto/16 :goto_912

    .line 4816
    :sswitch_55f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4818
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4819
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4820
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 4821
    goto/16 :goto_912

    .line 4807
    :sswitch_56f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4809
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4810
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDataCallList(I)V

    .line 4811
    goto/16 :goto_912

    .line 4798
    :sswitch_57b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4800
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4801
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getClip(I)V

    .line 4802
    goto/16 :goto_912

    .line 4789
    :sswitch_587
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4791
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4792
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getMute(I)V

    .line 4793
    goto/16 :goto_912

    .line 4779
    :sswitch_593
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4781
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4782
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4783
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setMute(IZ)V

    .line 4784
    goto/16 :goto_912

    .line 4769
    :sswitch_5a3
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4771
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4772
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4773
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->separateConnection(II)V

    .line 4774
    goto/16 :goto_912

    .line 4760
    :sswitch_5b3
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4762
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4763
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getBasebandVersion(I)V

    .line 4764
    goto/16 :goto_912

    .line 4751
    :sswitch_5bf
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4753
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4754
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->stopDtmf(I)V

    .line 4755
    goto/16 :goto_912

    .line 4741
    :sswitch_5cb
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4743
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4744
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4745
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 4746
    goto/16 :goto_912

    .line 4732
    :sswitch_5db
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4734
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4735
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAvailableNetworks(I)V

    .line 4736
    goto/16 :goto_912

    .line 4722
    :sswitch_5e7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4724
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4725
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4726
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 4727
    goto/16 :goto_912

    .line 4713
    :sswitch_5f7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4715
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4716
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 4717
    goto/16 :goto_912

    .line 4704
    :sswitch_603
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4706
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4707
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 4708
    goto/16 :goto_912

    .line 4692
    :sswitch_60f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4694
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4695
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4696
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4697
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4698
    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4699
    goto/16 :goto_912

    .line 4678
    :sswitch_627
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4680
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4681
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4682
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4683
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4684
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4685
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 4686
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 4687
    goto/16 :goto_912

    .line 4665
    :sswitch_648
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4667
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4668
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4669
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4670
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 4671
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4672
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 4673
    goto/16 :goto_912

    .line 4654
    :sswitch_665
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4656
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4657
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4658
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4659
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 4660
    goto/16 :goto_912

    .line 4645
    :sswitch_679
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4647
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4648
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acceptCall(I)V

    .line 4649
    goto/16 :goto_912

    .line 4634
    :sswitch_685
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4636
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4637
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4638
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4639
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 4640
    goto/16 :goto_912

    .line 4623
    :sswitch_699
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4625
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4626
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4627
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4628
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCallWaiting(IZI)V

    .line 4629
    goto/16 :goto_912

    .line 4613
    :sswitch_6ad
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4615
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4616
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4617
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCallWaiting(II)V

    .line 4618
    goto/16 :goto_912

    .line 4602
    :sswitch_6bd
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4604
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4605
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4606
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4607
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 4608
    goto/16 :goto_912

    .line 4591
    :sswitch_6d1
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4593
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4594
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4595
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4596
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 4597
    goto/16 :goto_912

    .line 4581
    :sswitch_6e5
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4583
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4584
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4585
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setClir(II)V

    .line 4586
    goto/16 :goto_912

    .line 4572
    :sswitch_6f5
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4574
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4575
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getClir(I)V

    .line 4576
    goto/16 :goto_912

    .line 4563
    :sswitch_701
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4565
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4566
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->cancelPendingUssd(I)V

    .line 4567
    goto/16 :goto_912

    .line 4553
    :sswitch_70d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4555
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4556
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4557
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 4558
    goto/16 :goto_912

    .line 4542
    :sswitch_71d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4544
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4545
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 4546
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4547
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 4548
    goto/16 :goto_912

    .line 4527
    :sswitch_731
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4529
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4530
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4531
    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4532
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4533
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4534
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 4535
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 4536
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 4537
    goto/16 :goto_912

    .line 4516
    :sswitch_756
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4518
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4519
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4520
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4521
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 4522
    goto/16 :goto_912

    .line 4505
    :sswitch_76a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4507
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4508
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4509
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4510
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 4511
    goto/16 :goto_912

    .line 4495
    :sswitch_77e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4497
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4498
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4499
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 4500
    goto/16 :goto_912

    .line 4485
    :sswitch_78e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4487
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4488
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4489
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setRadioPower(IZ)V

    .line 4490
    goto/16 :goto_912

    .line 4476
    :sswitch_79e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4478
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4479
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getOperator(I)V

    .line 4480
    goto/16 :goto_912

    .line 4467
    :sswitch_7aa
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4469
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4470
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDataRegistrationState(I)V

    .line 4471
    goto/16 :goto_912

    .line 4458
    :sswitch_7b6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4460
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4461
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 4462
    goto/16 :goto_912

    .line 4449
    :sswitch_7c2
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4451
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4452
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getSignalStrength(I)V

    .line 4453
    goto/16 :goto_912

    .line 4440
    :sswitch_7ce
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4442
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4443
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getLastCallFailCause(I)V

    .line 4444
    goto/16 :goto_912

    .line 4431
    :sswitch_7da
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4433
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4434
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->rejectCall(I)V

    .line 4435
    goto/16 :goto_912

    .line 4422
    :sswitch_7e6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4424
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4425
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->conference(I)V

    .line 4426
    goto/16 :goto_912

    .line 4413
    :sswitch_7f2
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4415
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4416
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 4417
    goto/16 :goto_912

    .line 4404
    :sswitch_7fe
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4406
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4407
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 4408
    goto/16 :goto_912

    .line 4395
    :sswitch_80a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4397
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4398
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 4399
    goto/16 :goto_912

    .line 4385
    :sswitch_816
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4387
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4388
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4389
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangup(II)V

    .line 4390
    goto/16 :goto_912

    .line 4375
    :sswitch_826
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4377
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4378
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4379
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 4380
    goto/16 :goto_912

    .line 4364
    :sswitch_836
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4366
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4367
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 4368
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4369
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 4370
    goto/16 :goto_912

    .line 4355
    :sswitch_84a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4357
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4358
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCurrentCalls(I)V

    .line 4359
    goto/16 :goto_912

    .line 4345
    :sswitch_856
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4347
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4348
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4349
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 4350
    goto/16 :goto_912

    .line 4333
    :sswitch_866
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4335
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4336
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4337
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4338
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4339
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4340
    goto/16 :goto_912

    .line 4321
    :sswitch_87e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4323
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4324
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4325
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4326
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4327
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4328
    goto/16 :goto_912

    .line 4309
    :sswitch_896
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4311
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4312
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4313
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4314
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4315
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4316
    goto :goto_912

    .line 4298
    :sswitch_8ad
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4300
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4301
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4302
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4303
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 4304
    goto :goto_912

    .line 4286
    :sswitch_8c0
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4288
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4289
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4290
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4291
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4292
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4293
    goto :goto_912

    .line 4275
    :sswitch_8d7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4277
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4278
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4279
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4280
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 4281
    goto :goto_912

    .line 4266
    :sswitch_8ea
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4268
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4269
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getIccCardStatus(I)V

    .line 4270
    goto :goto_912

    .line 4254
    :sswitch_8f5
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4256
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 4257
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v3

    .line 4258
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 4259
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4260
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4261
    nop

    .line 5677
    :goto_912
    return-void

    nop

    :sswitch_data_914
    .sparse-switch
        0x1 -> :sswitch_8f5
        0x2 -> :sswitch_8ea
        0x3 -> :sswitch_8d7
        0x4 -> :sswitch_8c0
        0x5 -> :sswitch_8ad
        0x6 -> :sswitch_896
        0x7 -> :sswitch_87e
        0x8 -> :sswitch_866
        0x9 -> :sswitch_856
        0xa -> :sswitch_84a
        0xb -> :sswitch_836
        0xc -> :sswitch_826
        0xd -> :sswitch_816
        0xe -> :sswitch_80a
        0xf -> :sswitch_7fe
        0x10 -> :sswitch_7f2
        0x11 -> :sswitch_7e6
        0x12 -> :sswitch_7da
        0x13 -> :sswitch_7ce
        0x14 -> :sswitch_7c2
        0x15 -> :sswitch_7b6
        0x16 -> :sswitch_7aa
        0x17 -> :sswitch_79e
        0x18 -> :sswitch_78e
        0x19 -> :sswitch_77e
        0x1a -> :sswitch_76a
        0x1b -> :sswitch_756
        0x1c -> :sswitch_731
        0x1d -> :sswitch_71d
        0x1e -> :sswitch_70d
        0x1f -> :sswitch_701
        0x20 -> :sswitch_6f5
        0x21 -> :sswitch_6e5
        0x22 -> :sswitch_6d1
        0x23 -> :sswitch_6bd
        0x24 -> :sswitch_6ad
        0x25 -> :sswitch_699
        0x26 -> :sswitch_685
        0x27 -> :sswitch_679
        0x28 -> :sswitch_665
        0x29 -> :sswitch_648
        0x2a -> :sswitch_627
        0x2b -> :sswitch_60f
        0x2c -> :sswitch_603
        0x2d -> :sswitch_5f7
        0x2e -> :sswitch_5e7
        0x2f -> :sswitch_5db
        0x30 -> :sswitch_5cb
        0x31 -> :sswitch_5bf
        0x32 -> :sswitch_5b3
        0x33 -> :sswitch_5a3
        0x34 -> :sswitch_593
        0x35 -> :sswitch_587
        0x36 -> :sswitch_57b
        0x37 -> :sswitch_56f
        0x38 -> :sswitch_55f
        0x39 -> :sswitch_54b
        0x3a -> :sswitch_53b
        0x3b -> :sswitch_52b
        0x3c -> :sswitch_51f
        0x3d -> :sswitch_50f
        0x3e -> :sswitch_4ff
        0x3f -> :sswitch_4ef
        0x40 -> :sswitch_4e3
        0x41 -> :sswitch_4d3
        0x42 -> :sswitch_4c7
        0x43 -> :sswitch_4bb
        0x44 -> :sswitch_4ab
        0x45 -> :sswitch_49b
        0x46 -> :sswitch_48b
        0x47 -> :sswitch_47f
        0x48 -> :sswitch_46f
        0x49 -> :sswitch_463
        0x4a -> :sswitch_453
        0x4b -> :sswitch_447
        0x4c -> :sswitch_437
        0x4d -> :sswitch_41f
        0x4e -> :sswitch_40b
        0x4f -> :sswitch_3f7
        0x50 -> :sswitch_3eb
        0x51 -> :sswitch_3db
        0x52 -> :sswitch_3cb
        0x53 -> :sswitch_3bf
        0x54 -> :sswitch_3af
        0x55 -> :sswitch_39f
        0x56 -> :sswitch_393
        0x57 -> :sswitch_37f
        0x58 -> :sswitch_36f
        0x59 -> :sswitch_363
        0x5a -> :sswitch_357
        0x5b -> :sswitch_34b
        0x5c -> :sswitch_33b
        0x5d -> :sswitch_32b
        0x5e -> :sswitch_31f
        0x5f -> :sswitch_313
        0x60 -> :sswitch_303
        0x61 -> :sswitch_2ef
        0x62 -> :sswitch_2df
        0x63 -> :sswitch_2d3
        0x64 -> :sswitch_2c7
        0x65 -> :sswitch_2b7
        0x66 -> :sswitch_29b
        0x67 -> :sswitch_28f
        0x68 -> :sswitch_27b
        0x69 -> :sswitch_267
        0x6a -> :sswitch_253
        0x6b -> :sswitch_243
        0x6c -> :sswitch_22f
        0x6d -> :sswitch_21f
        0x6e -> :sswitch_20b
        0x6f -> :sswitch_1fb
        0x70 -> :sswitch_1eb
        0x71 -> :sswitch_1d7
        0x72 -> :sswitch_1c7
        0x73 -> :sswitch_1bb
        0x74 -> :sswitch_1a3
        0x75 -> :sswitch_18f
        0x76 -> :sswitch_183
        0x77 -> :sswitch_177
        0x78 -> :sswitch_163
        0x79 -> :sswitch_14f
        0x7a -> :sswitch_143
        0x7b -> :sswitch_137
        0x7c -> :sswitch_12b
        0x7d -> :sswitch_113
        0x7e -> :sswitch_107
        0x7f -> :sswitch_f3
        0x80 -> :sswitch_e3
        0x81 -> :sswitch_d3
        0x82 -> :sswitch_cb
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

    .line 4205
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 4233
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 4234
    return-object p0

    .line 4236
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

    .line 4240
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 4241
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 4195
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 4245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 4227
    const/4 p1, 0x1

    return p1
.end method
