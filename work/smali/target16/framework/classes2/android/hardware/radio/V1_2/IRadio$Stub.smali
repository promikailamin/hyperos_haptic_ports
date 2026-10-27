.class public abstract Landroid/hardware/radio/V1_2/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_2/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_2/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2982
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 2985
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

    .line 3000
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 3039
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3040
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3041
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3042
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3043
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

    .line 3012
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

    :array_38
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

    :array_4c
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

    .line 2990
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.0::IRadio"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.radio@1.2::IRadio"

    const-string v4, "android.hardware.radio@1.1::IRadio"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 3006
    const-string v0, "android.hardware.radio@1.2::IRadio"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 3027
    const/4 p1, 0x1

    return p1
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 3049
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3051
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3079
    const-string v3, "android.hardware.radio@1.2::IRadio"

    const-string v4, "android.hardware.radio@1.1::IRadio"

    const-string v5, "android.hidl.base@1.0::IBase"

    const/4 v6, 0x0

    const-string v7, "android.hardware.radio@1.0::IRadio"

    sparse-switch p1, :sswitch_data_a2e

    goto/16 :goto_a2c

    .line 4633
    :sswitch_e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4635
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->notifySyspropsChanged()V

    .line 4636
    goto/16 :goto_a2c

    .line 4622
    :sswitch_16
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4624
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 4625
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4626
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4627
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4628
    goto/16 :goto_a2c

    .line 4612
    :sswitch_28
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4614
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->ping()V

    .line 4615
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4616
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4617
    goto/16 :goto_a2c

    .line 4607
    :sswitch_36
    goto/16 :goto_a2c

    .line 4599
    :sswitch_38
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4601
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setHALInstrumentation()V

    .line 4602
    goto/16 :goto_a2c

    .line 4565
    :sswitch_40
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4567
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4568
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4570
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 4572
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4573
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4574
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4575
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 4576
    nop

    :goto_67
    if-ge v6, v3, :cond_88

    .line 4578
    mul-int/lit8 v5, v6, 0x20

    int-to-long v7, v5

    .line 4579
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 4581
    if-eqz v5, :cond_80

    array-length v9, v5

    const/16 v10, 0x20

    if-ne v9, v10, :cond_80

    .line 4585
    invoke-virtual {v4, v7, v8, v5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4586
    nop

    .line 4576
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 4582
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4589
    :cond_88
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4591
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4593
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4594
    goto/16 :goto_a2c

    .line 4554
    :sswitch_95
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4556
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 4557
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4558
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4559
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4560
    goto/16 :goto_a2c

    .line 4542
    :sswitch_a7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4544
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v3

    .line 4545
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4546
    invoke-virtual {p0, v3, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 4547
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4548
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4549
    goto/16 :goto_a2c

    .line 4531
    :sswitch_bd
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4533
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4534
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4535
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4536
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4537
    goto/16 :goto_a2c

    .line 4520
    :sswitch_cf
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4522
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4523
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4524
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4525
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 4526
    goto/16 :goto_a2c

    .line 4502
    :sswitch_e3
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4504
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4505
    move v3, v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4506
    move v4, v3

    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4507
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4508
    move v1, v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4509
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 4510
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 4511
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 4512
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v8

    .line 4513
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v9

    .line 4514
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4515
    goto/16 :goto_a2c

    .line 4487
    :sswitch_117
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4489
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4490
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4491
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4492
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 4493
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v5

    .line 4494
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v6

    .line 4495
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 4496
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 4497
    goto/16 :goto_a2c

    .line 4474
    :sswitch_13c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4476
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4477
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4478
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4479
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 4480
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4481
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 4482
    goto/16 :goto_a2c

    .line 4464
    :sswitch_159
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4466
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4467
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4468
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 4469
    goto/16 :goto_a2c

    .line 4453
    :sswitch_169
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4455
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4456
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 4457
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4458
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 4459
    goto/16 :goto_a2c

    .line 4443
    :sswitch_17d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4445
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4446
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4447
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->stopKeepalive(II)V

    .line 4448
    goto/16 :goto_a2c

    .line 4432
    :sswitch_18d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4434
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4435
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 4436
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4437
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 4438
    goto/16 :goto_a2c

    .line 4423
    :sswitch_1a1
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4425
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4426
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->stopNetworkScan(I)V

    .line 4427
    goto/16 :goto_a2c

    .line 4412
    :sswitch_1ad
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4414
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4415
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 4416
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4417
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 4418
    goto/16 :goto_a2c

    .line 4402
    :sswitch_1c1
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4404
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4405
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4406
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 4407
    goto/16 :goto_a2c

    .line 4391
    :sswitch_1d1
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4393
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4394
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 4395
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4396
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 4397
    goto/16 :goto_a2c

    .line 4383
    :sswitch_1e5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4385
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->responseAcknowledgement()V

    .line 4386
    goto/16 :goto_a2c

    .line 4373
    :sswitch_1ed
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4375
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4376
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4377
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSimCardPower(IZ)V

    .line 4378
    goto/16 :goto_a2c

    .line 4363
    :sswitch_1fd
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4365
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4366
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4367
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setIndicationFilter(II)V

    .line 4368
    goto/16 :goto_a2c

    .line 4352
    :sswitch_20d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4354
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4355
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4356
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4357
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 4358
    goto/16 :goto_a2c

    .line 4343
    :sswitch_221
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4345
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4346
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getAllowedCarriers(I)V

    .line 4347
    goto/16 :goto_a2c

    .line 4331
    :sswitch_22d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4333
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4334
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4335
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4336
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4337
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4338
    goto/16 :goto_a2c

    .line 4322
    :sswitch_245
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4324
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4325
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getModemActivityInfo(I)V

    .line 4326
    goto/16 :goto_a2c

    .line 4313
    :sswitch_251
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4315
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4316
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->pullLceData(I)V

    .line 4317
    goto/16 :goto_a2c

    .line 4304
    :sswitch_25d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4306
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4307
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->stopLceService(I)V

    .line 4308
    goto/16 :goto_a2c

    .line 4293
    :sswitch_269
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4295
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4296
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4297
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4298
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startLceService(IIZ)V

    .line 4299
    goto/16 :goto_a2c

    .line 4282
    :sswitch_27d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4284
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4285
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4286
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4287
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4288
    goto/16 :goto_a2c

    .line 4273
    :sswitch_291
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4275
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4276
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getRadioCapability(I)V

    .line 4277
    goto/16 :goto_a2c

    .line 4264
    :sswitch_29d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4266
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4267
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->requestShutdown(I)V

    .line 4268
    goto/16 :goto_a2c

    .line 4253
    :sswitch_2a9
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4255
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4256
    invoke-static {p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4257
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4258
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 4259
    goto/16 :goto_a2c

    .line 4241
    :sswitch_2bd
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4243
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4244
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4245
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4246
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4247
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 4248
    goto/16 :goto_a2c

    .line 4232
    :sswitch_2d5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4234
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4235
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getHardwareConfig(I)V

    .line 4236
    goto/16 :goto_a2c

    .line 4222
    :sswitch_2e1
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4224
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4225
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4226
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setDataAllowed(IZ)V

    .line 4227
    goto/16 :goto_a2c

    .line 4211
    :sswitch_2f1
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4213
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4214
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 4215
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4216
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 4217
    goto/16 :goto_a2c

    .line 4201
    :sswitch_305
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4203
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4204
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4205
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->nvResetConfig(II)V

    .line 4206
    goto/16 :goto_a2c

    .line 4191
    :sswitch_315
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4193
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4194
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4195
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 4196
    goto/16 :goto_a2c

    .line 4180
    :sswitch_325
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4182
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4183
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 4184
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4185
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 4186
    goto/16 :goto_a2c

    .line 4170
    :sswitch_339
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4172
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4173
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4174
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->nvReadItem(II)V

    .line 4175
    goto/16 :goto_a2c

    .line 4159
    :sswitch_349
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4161
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4162
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4163
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4164
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4165
    goto/16 :goto_a2c

    .line 4149
    :sswitch_35d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4151
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4152
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4153
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 4154
    goto/16 :goto_a2c

    .line 4138
    :sswitch_36d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4140
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4141
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4142
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4143
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 4144
    goto/16 :goto_a2c

    .line 4127
    :sswitch_381
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4129
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4130
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4131
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4132
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4133
    goto/16 :goto_a2c

    .line 4116
    :sswitch_395
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4118
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4119
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 4120
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4121
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 4122
    goto/16 :goto_a2c

    .line 4107
    :sswitch_3a9
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4109
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4110
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getImsRegistrationState(I)V

    .line 4111
    goto/16 :goto_a2c

    .line 4094
    :sswitch_3b5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4096
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4097
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4098
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4099
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4100
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4101
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 4102
    goto/16 :goto_a2c

    .line 4084
    :sswitch_3d1
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4086
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4087
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4088
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCellInfoListRate(II)V

    .line 4089
    goto/16 :goto_a2c

    .line 4075
    :sswitch_3e1
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4077
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4078
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCellInfoList(I)V

    .line 4079
    goto/16 :goto_a2c

    .line 4066
    :sswitch_3ed
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4068
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4069
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 4070
    goto/16 :goto_a2c

    .line 4056
    :sswitch_3f9
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4058
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4059
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4060
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 4061
    goto/16 :goto_a2c

    .line 4045
    :sswitch_409
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4047
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4048
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4049
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4050
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 4051
    goto/16 :goto_a2c

    .line 4035
    :sswitch_41d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4037
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4038
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4039
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 4040
    goto/16 :goto_a2c

    .line 4026
    :sswitch_42d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4028
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4029
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 4030
    goto/16 :goto_a2c

    .line 4017
    :sswitch_439
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4019
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4020
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 4021
    goto/16 :goto_a2c

    .line 4007
    :sswitch_445
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4010
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4011
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 4012
    goto/16 :goto_a2c

    .line 3997
    :sswitch_455
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3999
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4000
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4001
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 4002
    goto/16 :goto_a2c

    .line 3988
    :sswitch_465
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3990
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3991
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getSmscAddress(I)V

    .line 3992
    goto/16 :goto_a2c

    .line 3979
    :sswitch_471
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3981
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3982
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 3983
    goto/16 :goto_a2c

    .line 3970
    :sswitch_47d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3972
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3973
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getDeviceIdentity(I)V

    .line 3974
    goto/16 :goto_a2c

    .line 3960
    :sswitch_489
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3962
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3963
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3964
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 3965
    goto/16 :goto_a2c

    .line 3949
    :sswitch_499
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3951
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3952
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 3953
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3954
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 3955
    goto/16 :goto_a2c

    .line 3940
    :sswitch_4ad
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3942
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3943
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCDMASubscription(I)V

    .line 3944
    goto/16 :goto_a2c

    .line 3930
    :sswitch_4b9
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3932
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3933
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3934
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 3935
    goto/16 :goto_a2c

    .line 3920
    :sswitch_4c9
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3922
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3923
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3924
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 3925
    goto/16 :goto_a2c

    .line 3911
    :sswitch_4d9
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3913
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3914
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 3915
    goto/16 :goto_a2c

    .line 3901
    :sswitch_4e5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3903
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3904
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3905
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 3906
    goto/16 :goto_a2c

    .line 3891
    :sswitch_4f5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3893
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3894
    invoke-static {p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3895
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 3896
    goto/16 :goto_a2c

    .line 3882
    :sswitch_505
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3884
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3885
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 3886
    goto/16 :goto_a2c

    .line 3871
    :sswitch_511
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3873
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3874
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 3875
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3876
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 3877
    goto/16 :goto_a2c

    .line 3860
    :sswitch_525
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3862
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3863
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3864
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3865
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 3866
    goto/16 :goto_a2c

    .line 3848
    :sswitch_539
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3850
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3851
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3852
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3853
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3854
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 3855
    goto/16 :goto_a2c

    .line 3838
    :sswitch_551
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3840
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3841
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3842
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 3843
    goto/16 :goto_a2c

    .line 3829
    :sswitch_561
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3831
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3832
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 3833
    goto/16 :goto_a2c

    .line 3819
    :sswitch_56d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3821
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3822
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3823
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 3824
    goto/16 :goto_a2c

    .line 3810
    :sswitch_57d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3812
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3813
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getTTYMode(I)V

    .line 3814
    goto/16 :goto_a2c

    .line 3800
    :sswitch_589
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3802
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3803
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3804
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setTTYMode(II)V

    .line 3805
    goto/16 :goto_a2c

    .line 3791
    :sswitch_599
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3793
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3794
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 3795
    goto/16 :goto_a2c

    .line 3781
    :sswitch_5a5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3783
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3784
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3785
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 3786
    goto/16 :goto_a2c

    .line 3771
    :sswitch_5b5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3773
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3774
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3775
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 3776
    goto/16 :goto_a2c

    .line 3761
    :sswitch_5c5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3763
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3764
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3765
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 3766
    goto/16 :goto_a2c

    .line 3752
    :sswitch_5d5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3754
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3755
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getNeighboringCids(I)V

    .line 3756
    goto/16 :goto_a2c

    .line 3743
    :sswitch_5e1
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3745
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3746
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 3747
    goto/16 :goto_a2c

    .line 3733
    :sswitch_5ed
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3735
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3736
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3737
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 3738
    goto/16 :goto_a2c

    .line 3724
    :sswitch_5fd
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3726
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3727
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->explicitCallTransfer(I)V

    .line 3728
    goto/16 :goto_a2c

    .line 3714
    :sswitch_609
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3716
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3717
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3718
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 3719
    goto/16 :goto_a2c

    .line 3704
    :sswitch_619
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3706
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3707
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3708
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 3709
    goto/16 :goto_a2c

    .line 3694
    :sswitch_629
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3696
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3697
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3698
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 3699
    goto/16 :goto_a2c

    .line 3685
    :sswitch_639
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3687
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3688
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getAvailableBandModes(I)V

    .line 3689
    goto/16 :goto_a2c

    .line 3675
    :sswitch_645
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3677
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3678
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3679
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setBandMode(II)V

    .line 3680
    goto/16 :goto_a2c

    .line 3665
    :sswitch_655
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3667
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3668
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3669
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 3670
    goto/16 :goto_a2c

    .line 3654
    :sswitch_665
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3656
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3657
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 3658
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3659
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 3660
    goto/16 :goto_a2c

    .line 3644
    :sswitch_679
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3646
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3647
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3648
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 3649
    goto/16 :goto_a2c

    .line 3635
    :sswitch_689
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3637
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3638
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getDataCallList(I)V

    .line 3639
    goto/16 :goto_a2c

    .line 3626
    :sswitch_695
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3628
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3629
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getClip(I)V

    .line 3630
    goto/16 :goto_a2c

    .line 3617
    :sswitch_6a1
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3619
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3620
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getMute(I)V

    .line 3621
    goto/16 :goto_a2c

    .line 3607
    :sswitch_6ad
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3609
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3610
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3611
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setMute(IZ)V

    .line 3612
    goto/16 :goto_a2c

    .line 3597
    :sswitch_6bd
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3599
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3600
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3601
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->separateConnection(II)V

    .line 3602
    goto/16 :goto_a2c

    .line 3588
    :sswitch_6cd
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3590
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3591
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getBasebandVersion(I)V

    .line 3592
    goto/16 :goto_a2c

    .line 3579
    :sswitch_6d9
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3581
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3582
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->stopDtmf(I)V

    .line 3583
    goto/16 :goto_a2c

    .line 3569
    :sswitch_6e5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3571
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3572
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3573
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 3574
    goto/16 :goto_a2c

    .line 3560
    :sswitch_6f5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3562
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3563
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getAvailableNetworks(I)V

    .line 3564
    goto/16 :goto_a2c

    .line 3550
    :sswitch_701
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3552
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3553
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3554
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 3555
    goto/16 :goto_a2c

    .line 3541
    :sswitch_711
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3543
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3544
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 3545
    goto/16 :goto_a2c

    .line 3532
    :sswitch_71d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3534
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3535
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 3536
    goto/16 :goto_a2c

    .line 3520
    :sswitch_729
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3522
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3523
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3524
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3525
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3526
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3527
    goto/16 :goto_a2c

    .line 3506
    :sswitch_741
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3508
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3509
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3510
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3511
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3512
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3513
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3514
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 3515
    goto/16 :goto_a2c

    .line 3493
    :sswitch_762
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3495
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3496
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3497
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3498
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3499
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3500
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3501
    goto/16 :goto_a2c

    .line 3482
    :sswitch_77f
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3484
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3485
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3486
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3487
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 3488
    goto/16 :goto_a2c

    .line 3473
    :sswitch_793
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3475
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3476
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->acceptCall(I)V

    .line 3477
    goto/16 :goto_a2c

    .line 3462
    :sswitch_79f
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3464
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3465
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3466
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3467
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 3468
    goto/16 :goto_a2c

    .line 3451
    :sswitch_7b3
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3453
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3454
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3455
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3456
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCallWaiting(IZI)V

    .line 3457
    goto/16 :goto_a2c

    .line 3441
    :sswitch_7c7
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3443
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3444
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3445
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCallWaiting(II)V

    .line 3446
    goto/16 :goto_a2c

    .line 3430
    :sswitch_7d7
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3432
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3433
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3434
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3435
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3436
    goto/16 :goto_a2c

    .line 3419
    :sswitch_7eb
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3421
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3422
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3423
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3424
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3425
    goto/16 :goto_a2c

    .line 3409
    :sswitch_7ff
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3411
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3412
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3413
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setClir(II)V

    .line 3414
    goto/16 :goto_a2c

    .line 3400
    :sswitch_80f
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3402
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3403
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getClir(I)V

    .line 3404
    goto/16 :goto_a2c

    .line 3391
    :sswitch_81b
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3393
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3394
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->cancelPendingUssd(I)V

    .line 3395
    goto/16 :goto_a2c

    .line 3381
    :sswitch_827
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3383
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3384
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3385
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 3386
    goto/16 :goto_a2c

    .line 3370
    :sswitch_837
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3372
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3373
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 3374
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3375
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 3376
    goto/16 :goto_a2c

    .line 3355
    :sswitch_84b
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3357
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3358
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3359
    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 3360
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3361
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 3362
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 3363
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 3364
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 3365
    goto/16 :goto_a2c

    .line 3344
    :sswitch_870
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3346
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3347
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3348
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3349
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3350
    goto/16 :goto_a2c

    .line 3333
    :sswitch_884
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3335
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3336
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3337
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3338
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3339
    goto/16 :goto_a2c

    .line 3323
    :sswitch_898
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3325
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3326
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3327
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 3328
    goto/16 :goto_a2c

    .line 3313
    :sswitch_8a8
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3315
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3316
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3317
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setRadioPower(IZ)V

    .line 3318
    goto/16 :goto_a2c

    .line 3304
    :sswitch_8b8
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3306
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3307
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getOperator(I)V

    .line 3308
    goto/16 :goto_a2c

    .line 3295
    :sswitch_8c4
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3297
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3298
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getDataRegistrationState(I)V

    .line 3299
    goto/16 :goto_a2c

    .line 3286
    :sswitch_8d0
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3288
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3289
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 3290
    goto/16 :goto_a2c

    .line 3277
    :sswitch_8dc
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3279
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3280
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getSignalStrength(I)V

    .line 3281
    goto/16 :goto_a2c

    .line 3268
    :sswitch_8e8
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3270
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3271
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getLastCallFailCause(I)V

    .line 3272
    goto/16 :goto_a2c

    .line 3259
    :sswitch_8f4
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3261
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3262
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->rejectCall(I)V

    .line 3263
    goto/16 :goto_a2c

    .line 3250
    :sswitch_900
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3252
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3253
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->conference(I)V

    .line 3254
    goto/16 :goto_a2c

    .line 3241
    :sswitch_90c
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3243
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3244
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 3245
    goto/16 :goto_a2c

    .line 3232
    :sswitch_918
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3234
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3235
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 3236
    goto/16 :goto_a2c

    .line 3223
    :sswitch_924
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3225
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3226
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 3227
    goto/16 :goto_a2c

    .line 3213
    :sswitch_930
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3215
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3216
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3217
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->hangup(II)V

    .line 3218
    goto/16 :goto_a2c

    .line 3203
    :sswitch_940
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3205
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3206
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3207
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 3208
    goto/16 :goto_a2c

    .line 3192
    :sswitch_950
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3194
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3195
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 3196
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3197
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 3198
    goto/16 :goto_a2c

    .line 3183
    :sswitch_964
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3185
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3186
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCurrentCalls(I)V

    .line 3187
    goto/16 :goto_a2c

    .line 3173
    :sswitch_970
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3175
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3176
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3177
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 3178
    goto/16 :goto_a2c

    .line 3161
    :sswitch_980
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3163
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3164
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3165
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3166
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3167
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3168
    goto/16 :goto_a2c

    .line 3149
    :sswitch_998
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3151
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3152
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3153
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3154
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3155
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3156
    goto/16 :goto_a2c

    .line 3137
    :sswitch_9b0
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3139
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3140
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3141
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3142
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3143
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    goto :goto_a2c

    .line 3126
    :sswitch_9c7
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3128
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3129
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3130
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3131
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3132
    goto :goto_a2c

    .line 3114
    :sswitch_9da
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3116
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3117
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3118
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3119
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3120
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3121
    goto :goto_a2c

    .line 3103
    :sswitch_9f1
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3105
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3106
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3107
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3108
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3109
    goto :goto_a2c

    .line 3094
    :sswitch_a04
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3096
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3097
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getIccCardStatus(I)V

    .line 3098
    goto :goto_a2c

    .line 3082
    :sswitch_a0f
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3084
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 3085
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v3

    .line 3086
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 3087
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3088
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3089
    nop

    .line 4645
    :goto_a2c
    return-void

    nop

    :sswitch_data_a2e
    .sparse-switch
        0x1 -> :sswitch_a0f
        0x2 -> :sswitch_a04
        0x3 -> :sswitch_9f1
        0x4 -> :sswitch_9da
        0x5 -> :sswitch_9c7
        0x6 -> :sswitch_9b0
        0x7 -> :sswitch_998
        0x8 -> :sswitch_980
        0x9 -> :sswitch_970
        0xa -> :sswitch_964
        0xb -> :sswitch_950
        0xc -> :sswitch_940
        0xd -> :sswitch_930
        0xe -> :sswitch_924
        0xf -> :sswitch_918
        0x10 -> :sswitch_90c
        0x11 -> :sswitch_900
        0x12 -> :sswitch_8f4
        0x13 -> :sswitch_8e8
        0x14 -> :sswitch_8dc
        0x15 -> :sswitch_8d0
        0x16 -> :sswitch_8c4
        0x17 -> :sswitch_8b8
        0x18 -> :sswitch_8a8
        0x19 -> :sswitch_898
        0x1a -> :sswitch_884
        0x1b -> :sswitch_870
        0x1c -> :sswitch_84b
        0x1d -> :sswitch_837
        0x1e -> :sswitch_827
        0x1f -> :sswitch_81b
        0x20 -> :sswitch_80f
        0x21 -> :sswitch_7ff
        0x22 -> :sswitch_7eb
        0x23 -> :sswitch_7d7
        0x24 -> :sswitch_7c7
        0x25 -> :sswitch_7b3
        0x26 -> :sswitch_79f
        0x27 -> :sswitch_793
        0x28 -> :sswitch_77f
        0x29 -> :sswitch_762
        0x2a -> :sswitch_741
        0x2b -> :sswitch_729
        0x2c -> :sswitch_71d
        0x2d -> :sswitch_711
        0x2e -> :sswitch_701
        0x2f -> :sswitch_6f5
        0x30 -> :sswitch_6e5
        0x31 -> :sswitch_6d9
        0x32 -> :sswitch_6cd
        0x33 -> :sswitch_6bd
        0x34 -> :sswitch_6ad
        0x35 -> :sswitch_6a1
        0x36 -> :sswitch_695
        0x37 -> :sswitch_689
        0x38 -> :sswitch_679
        0x39 -> :sswitch_665
        0x3a -> :sswitch_655
        0x3b -> :sswitch_645
        0x3c -> :sswitch_639
        0x3d -> :sswitch_629
        0x3e -> :sswitch_619
        0x3f -> :sswitch_609
        0x40 -> :sswitch_5fd
        0x41 -> :sswitch_5ed
        0x42 -> :sswitch_5e1
        0x43 -> :sswitch_5d5
        0x44 -> :sswitch_5c5
        0x45 -> :sswitch_5b5
        0x46 -> :sswitch_5a5
        0x47 -> :sswitch_599
        0x48 -> :sswitch_589
        0x49 -> :sswitch_57d
        0x4a -> :sswitch_56d
        0x4b -> :sswitch_561
        0x4c -> :sswitch_551
        0x4d -> :sswitch_539
        0x4e -> :sswitch_525
        0x4f -> :sswitch_511
        0x50 -> :sswitch_505
        0x51 -> :sswitch_4f5
        0x52 -> :sswitch_4e5
        0x53 -> :sswitch_4d9
        0x54 -> :sswitch_4c9
        0x55 -> :sswitch_4b9
        0x56 -> :sswitch_4ad
        0x57 -> :sswitch_499
        0x58 -> :sswitch_489
        0x59 -> :sswitch_47d
        0x5a -> :sswitch_471
        0x5b -> :sswitch_465
        0x5c -> :sswitch_455
        0x5d -> :sswitch_445
        0x5e -> :sswitch_439
        0x5f -> :sswitch_42d
        0x60 -> :sswitch_41d
        0x61 -> :sswitch_409
        0x62 -> :sswitch_3f9
        0x63 -> :sswitch_3ed
        0x64 -> :sswitch_3e1
        0x65 -> :sswitch_3d1
        0x66 -> :sswitch_3b5
        0x67 -> :sswitch_3a9
        0x68 -> :sswitch_395
        0x69 -> :sswitch_381
        0x6a -> :sswitch_36d
        0x6b -> :sswitch_35d
        0x6c -> :sswitch_349
        0x6d -> :sswitch_339
        0x6e -> :sswitch_325
        0x6f -> :sswitch_315
        0x70 -> :sswitch_305
        0x71 -> :sswitch_2f1
        0x72 -> :sswitch_2e1
        0x73 -> :sswitch_2d5
        0x74 -> :sswitch_2bd
        0x75 -> :sswitch_2a9
        0x76 -> :sswitch_29d
        0x77 -> :sswitch_291
        0x78 -> :sswitch_27d
        0x79 -> :sswitch_269
        0x7a -> :sswitch_25d
        0x7b -> :sswitch_251
        0x7c -> :sswitch_245
        0x7d -> :sswitch_22d
        0x7e -> :sswitch_221
        0x7f -> :sswitch_20d
        0x80 -> :sswitch_1fd
        0x81 -> :sswitch_1ed
        0x82 -> :sswitch_1e5
        0x83 -> :sswitch_1d1
        0x84 -> :sswitch_1c1
        0x85 -> :sswitch_1ad
        0x86 -> :sswitch_1a1
        0x87 -> :sswitch_18d
        0x88 -> :sswitch_17d
        0x89 -> :sswitch_169
        0x8a -> :sswitch_159
        0x8b -> :sswitch_13c
        0x8c -> :sswitch_117
        0x8d -> :sswitch_e3
        0x8e -> :sswitch_cf
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

    .line 3033
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 3061
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3062
    return-object p0

    .line 3064
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

    .line 3068
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 3069
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 3023
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 3073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3055
    const/4 p1, 0x1

    return p1
.end method
