.class public abstract Landroid/hardware/radio/V1_3/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_3/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_3/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2930
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 2933
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

    .line 2949
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 2989
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2990
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2991
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2992
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2993
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

    .line 2961
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

    :array_3e
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

    :array_52
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

    :array_66
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

    .line 2938
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.0::IRadio"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.radio@1.3::IRadio"

    const-string v4, "android.hardware.radio@1.2::IRadio"

    const-string v5, "android.hardware.radio@1.1::IRadio"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 2955
    const-string v0, "android.hardware.radio@1.3::IRadio"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 2977
    const/4 p1, 0x1

    return p1
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 2999
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3001
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3029
    const-string v3, "android.hardware.radio@1.3::IRadio"

    const-string v4, "android.hardware.radio@1.2::IRadio"

    const-string v5, "android.hardware.radio@1.1::IRadio"

    const-string v6, "android.hidl.base@1.0::IBase"

    const/4 v7, 0x0

    const-string v8, "android.hardware.radio@1.0::IRadio"

    sparse-switch p1, :sswitch_data_a60

    goto/16 :goto_a5e

    .line 4613
    :sswitch_10
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4615
    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->notifySyspropsChanged()V

    .line 4616
    goto/16 :goto_a5e

    .line 4602
    :sswitch_18
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4604
    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 4605
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4606
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4607
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4608
    goto/16 :goto_a5e

    .line 4592
    :sswitch_2a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4594
    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->ping()V

    .line 4595
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4596
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4597
    goto/16 :goto_a5e

    .line 4587
    :sswitch_38
    goto/16 :goto_a5e

    .line 4579
    :sswitch_3a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4581
    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setHALInstrumentation()V

    .line 4582
    goto/16 :goto_a5e

    .line 4545
    :sswitch_42
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4547
    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4548
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4550
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 4552
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4553
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4554
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4555
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 4556
    nop

    :goto_69
    if-ge v7, v3, :cond_8a

    .line 4558
    mul-int/lit8 v5, v7, 0x20

    int-to-long v5, v5

    .line 4559
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 4561
    if-eqz v8, :cond_82

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_82

    .line 4565
    invoke-virtual {v4, v5, v6, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4566
    nop

    .line 4556
    add-int/lit8 v7, v7, 0x1

    goto :goto_69

    .line 4562
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4569
    :cond_8a
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4571
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4573
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4574
    goto/16 :goto_a5e

    .line 4534
    :sswitch_97
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4536
    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 4537
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4538
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4539
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4540
    goto/16 :goto_a5e

    .line 4522
    :sswitch_a9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4524
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v3

    .line 4525
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4526
    invoke-virtual {p0, v3, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 4527
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4528
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4529
    goto/16 :goto_a5e

    .line 4511
    :sswitch_bf
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4513
    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4514
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4515
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4516
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4517
    goto/16 :goto_a5e

    .line 4502
    :sswitch_d1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4504
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4505
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getModemStackStatus(I)V

    .line 4506
    goto/16 :goto_a5e

    .line 4492
    :sswitch_dd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4494
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4495
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4496
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->enableModem(IZ)V

    .line 4497
    goto/16 :goto_a5e

    .line 4481
    :sswitch_ed
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4483
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4484
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4485
    invoke-static {p2}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4486
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSystemSelectionChannels(IZLjava/util/ArrayList;)V

    .line 4487
    goto/16 :goto_a5e

    .line 4470
    :sswitch_101
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4472
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4473
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4474
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4475
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 4476
    goto/16 :goto_a5e

    .line 4452
    :sswitch_115
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4454
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4455
    move v3, v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4456
    move v4, v3

    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4457
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4458
    move v1, v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4459
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 4460
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 4461
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 4462
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v8

    .line 4463
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v9

    .line 4464
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4465
    goto/16 :goto_a5e

    .line 4437
    :sswitch_149
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4439
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4440
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4441
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4442
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 4443
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v5

    .line 4444
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v6

    .line 4445
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 4446
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 4447
    goto/16 :goto_a5e

    .line 4424
    :sswitch_16e
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4426
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4427
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4428
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4429
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 4430
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4431
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 4432
    goto/16 :goto_a5e

    .line 4414
    :sswitch_18b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4416
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4417
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4418
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 4419
    goto/16 :goto_a5e

    .line 4403
    :sswitch_19b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4405
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4406
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 4407
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4408
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 4409
    goto/16 :goto_a5e

    .line 4393
    :sswitch_1af
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4395
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4396
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4397
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->stopKeepalive(II)V

    .line 4398
    goto/16 :goto_a5e

    .line 4382
    :sswitch_1bf
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4384
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4385
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 4386
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4387
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 4388
    goto/16 :goto_a5e

    .line 4373
    :sswitch_1d3
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4375
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4376
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->stopNetworkScan(I)V

    .line 4377
    goto/16 :goto_a5e

    .line 4362
    :sswitch_1df
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4364
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4365
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 4366
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4367
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 4368
    goto/16 :goto_a5e

    .line 4352
    :sswitch_1f3
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4354
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4355
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4356
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 4357
    goto/16 :goto_a5e

    .line 4341
    :sswitch_203
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4343
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4344
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 4345
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4346
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 4347
    goto/16 :goto_a5e

    .line 4333
    :sswitch_217
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4335
    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->responseAcknowledgement()V

    .line 4336
    goto/16 :goto_a5e

    .line 4323
    :sswitch_21f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4325
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4326
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4327
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSimCardPower(IZ)V

    .line 4328
    goto/16 :goto_a5e

    .line 4313
    :sswitch_22f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4315
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4316
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4317
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setIndicationFilter(II)V

    .line 4318
    goto/16 :goto_a5e

    .line 4302
    :sswitch_23f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4304
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4305
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4306
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4307
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 4308
    goto/16 :goto_a5e

    .line 4293
    :sswitch_253
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4295
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4296
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getAllowedCarriers(I)V

    .line 4297
    goto/16 :goto_a5e

    .line 4281
    :sswitch_25f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4283
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4284
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4285
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4286
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4287
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4288
    goto/16 :goto_a5e

    .line 4272
    :sswitch_277
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4274
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4275
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getModemActivityInfo(I)V

    .line 4276
    goto/16 :goto_a5e

    .line 4263
    :sswitch_283
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4265
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4266
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->pullLceData(I)V

    .line 4267
    goto/16 :goto_a5e

    .line 4254
    :sswitch_28f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4256
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4257
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->stopLceService(I)V

    .line 4258
    goto/16 :goto_a5e

    .line 4243
    :sswitch_29b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4245
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4246
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4247
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4248
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startLceService(IIZ)V

    .line 4249
    goto/16 :goto_a5e

    .line 4232
    :sswitch_2af
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4234
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4235
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4236
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4237
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4238
    goto/16 :goto_a5e

    .line 4223
    :sswitch_2c3
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4225
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4226
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getRadioCapability(I)V

    .line 4227
    goto/16 :goto_a5e

    .line 4214
    :sswitch_2cf
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4216
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4217
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->requestShutdown(I)V

    .line 4218
    goto/16 :goto_a5e

    .line 4203
    :sswitch_2db
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4205
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4206
    invoke-static {p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4207
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4208
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 4209
    goto/16 :goto_a5e

    .line 4191
    :sswitch_2ef
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4193
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4194
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4195
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4196
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4197
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 4198
    goto/16 :goto_a5e

    .line 4182
    :sswitch_307
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4184
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4185
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getHardwareConfig(I)V

    .line 4186
    goto/16 :goto_a5e

    .line 4172
    :sswitch_313
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4174
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4175
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4176
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setDataAllowed(IZ)V

    .line 4177
    goto/16 :goto_a5e

    .line 4161
    :sswitch_323
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4163
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4164
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 4165
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4166
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 4167
    goto/16 :goto_a5e

    .line 4151
    :sswitch_337
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4153
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4154
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4155
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->nvResetConfig(II)V

    .line 4156
    goto/16 :goto_a5e

    .line 4141
    :sswitch_347
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4143
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4144
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4145
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 4146
    goto/16 :goto_a5e

    .line 4130
    :sswitch_357
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4132
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4133
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 4134
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4135
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 4136
    goto/16 :goto_a5e

    .line 4120
    :sswitch_36b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4122
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4123
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4124
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->nvReadItem(II)V

    .line 4125
    goto/16 :goto_a5e

    .line 4109
    :sswitch_37b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4111
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4112
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4113
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4114
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4115
    goto/16 :goto_a5e

    .line 4099
    :sswitch_38f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4101
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4102
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4103
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 4104
    goto/16 :goto_a5e

    .line 4088
    :sswitch_39f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4090
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4091
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4092
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4093
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 4094
    goto/16 :goto_a5e

    .line 4077
    :sswitch_3b3
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4079
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4080
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4081
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4082
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4083
    goto/16 :goto_a5e

    .line 4066
    :sswitch_3c7
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4068
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4069
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 4070
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4071
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 4072
    goto/16 :goto_a5e

    .line 4057
    :sswitch_3db
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4059
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4060
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getImsRegistrationState(I)V

    .line 4061
    goto/16 :goto_a5e

    .line 4044
    :sswitch_3e7
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4046
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4047
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4048
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4049
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4050
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4051
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 4052
    goto/16 :goto_a5e

    .line 4034
    :sswitch_403
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4036
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4037
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4038
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCellInfoListRate(II)V

    .line 4039
    goto/16 :goto_a5e

    .line 4025
    :sswitch_413
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4027
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4028
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCellInfoList(I)V

    .line 4029
    goto/16 :goto_a5e

    .line 4016
    :sswitch_41f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4018
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4019
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 4020
    goto/16 :goto_a5e

    .line 4006
    :sswitch_42b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4008
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4010
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 4011
    goto/16 :goto_a5e

    .line 3995
    :sswitch_43b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3997
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3998
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3999
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4000
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 4001
    goto/16 :goto_a5e

    .line 3985
    :sswitch_44f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3987
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3988
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3989
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 3990
    goto/16 :goto_a5e

    .line 3976
    :sswitch_45f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3978
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3979
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 3980
    goto/16 :goto_a5e

    .line 3967
    :sswitch_46b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3969
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3970
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 3971
    goto/16 :goto_a5e

    .line 3957
    :sswitch_477
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3959
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3960
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3961
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 3962
    goto/16 :goto_a5e

    .line 3947
    :sswitch_487
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3949
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3950
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3951
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 3952
    goto/16 :goto_a5e

    .line 3938
    :sswitch_497
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3940
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3941
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getSmscAddress(I)V

    .line 3942
    goto/16 :goto_a5e

    .line 3929
    :sswitch_4a3
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3931
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3932
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 3933
    goto/16 :goto_a5e

    .line 3920
    :sswitch_4af
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3922
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3923
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getDeviceIdentity(I)V

    .line 3924
    goto/16 :goto_a5e

    .line 3910
    :sswitch_4bb
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3912
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3913
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3914
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 3915
    goto/16 :goto_a5e

    .line 3899
    :sswitch_4cb
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3901
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3902
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 3903
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3904
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 3905
    goto/16 :goto_a5e

    .line 3890
    :sswitch_4df
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3892
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3893
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCDMASubscription(I)V

    .line 3894
    goto/16 :goto_a5e

    .line 3880
    :sswitch_4eb
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3882
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3884
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 3885
    goto/16 :goto_a5e

    .line 3870
    :sswitch_4fb
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3872
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3873
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3874
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 3875
    goto/16 :goto_a5e

    .line 3861
    :sswitch_50b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3863
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3864
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 3865
    goto/16 :goto_a5e

    .line 3851
    :sswitch_517
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3853
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3854
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3855
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 3856
    goto/16 :goto_a5e

    .line 3841
    :sswitch_527
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3843
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3844
    invoke-static {p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3845
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 3846
    goto/16 :goto_a5e

    .line 3832
    :sswitch_537
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3834
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3835
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 3836
    goto/16 :goto_a5e

    .line 3821
    :sswitch_543
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3823
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3824
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 3825
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3826
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 3827
    goto/16 :goto_a5e

    .line 3810
    :sswitch_557
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3812
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3813
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3814
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3815
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 3816
    goto/16 :goto_a5e

    .line 3798
    :sswitch_56b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3800
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3801
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3802
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3803
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3804
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 3805
    goto/16 :goto_a5e

    .line 3788
    :sswitch_583
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3790
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3791
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3792
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 3793
    goto/16 :goto_a5e

    .line 3779
    :sswitch_593
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3781
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3782
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 3783
    goto/16 :goto_a5e

    .line 3769
    :sswitch_59f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3771
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3772
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3773
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 3774
    goto/16 :goto_a5e

    .line 3760
    :sswitch_5af
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3762
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3763
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getTTYMode(I)V

    .line 3764
    goto/16 :goto_a5e

    .line 3750
    :sswitch_5bb
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3752
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3753
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3754
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setTTYMode(II)V

    .line 3755
    goto/16 :goto_a5e

    .line 3741
    :sswitch_5cb
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3743
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3744
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 3745
    goto/16 :goto_a5e

    .line 3731
    :sswitch_5d7
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3733
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3734
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3735
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 3736
    goto/16 :goto_a5e

    .line 3721
    :sswitch_5e7
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3723
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3724
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3725
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 3726
    goto/16 :goto_a5e

    .line 3711
    :sswitch_5f7
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3713
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3714
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3715
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 3716
    goto/16 :goto_a5e

    .line 3702
    :sswitch_607
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3704
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3705
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getNeighboringCids(I)V

    .line 3706
    goto/16 :goto_a5e

    .line 3693
    :sswitch_613
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3695
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3696
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 3697
    goto/16 :goto_a5e

    .line 3683
    :sswitch_61f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3685
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3686
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3687
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 3688
    goto/16 :goto_a5e

    .line 3674
    :sswitch_62f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3676
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3677
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->explicitCallTransfer(I)V

    .line 3678
    goto/16 :goto_a5e

    .line 3664
    :sswitch_63b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3666
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3667
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3668
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 3669
    goto/16 :goto_a5e

    .line 3654
    :sswitch_64b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3656
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3657
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3658
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 3659
    goto/16 :goto_a5e

    .line 3644
    :sswitch_65b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3646
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3647
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3648
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 3649
    goto/16 :goto_a5e

    .line 3635
    :sswitch_66b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3637
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3638
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getAvailableBandModes(I)V

    .line 3639
    goto/16 :goto_a5e

    .line 3625
    :sswitch_677
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3627
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3628
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3629
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setBandMode(II)V

    .line 3630
    goto/16 :goto_a5e

    .line 3615
    :sswitch_687
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3617
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3618
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3619
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 3620
    goto/16 :goto_a5e

    .line 3604
    :sswitch_697
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3606
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3607
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 3608
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3609
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 3610
    goto/16 :goto_a5e

    .line 3594
    :sswitch_6ab
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3596
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3597
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3598
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 3599
    goto/16 :goto_a5e

    .line 3585
    :sswitch_6bb
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3587
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3588
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getDataCallList(I)V

    .line 3589
    goto/16 :goto_a5e

    .line 3576
    :sswitch_6c7
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3578
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3579
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getClip(I)V

    .line 3580
    goto/16 :goto_a5e

    .line 3567
    :sswitch_6d3
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3569
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3570
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getMute(I)V

    .line 3571
    goto/16 :goto_a5e

    .line 3557
    :sswitch_6df
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3559
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3560
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3561
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setMute(IZ)V

    .line 3562
    goto/16 :goto_a5e

    .line 3547
    :sswitch_6ef
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3549
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3550
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3551
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->separateConnection(II)V

    .line 3552
    goto/16 :goto_a5e

    .line 3538
    :sswitch_6ff
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3540
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3541
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getBasebandVersion(I)V

    .line 3542
    goto/16 :goto_a5e

    .line 3529
    :sswitch_70b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3531
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3532
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->stopDtmf(I)V

    .line 3533
    goto/16 :goto_a5e

    .line 3519
    :sswitch_717
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3521
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3522
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3523
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 3524
    goto/16 :goto_a5e

    .line 3510
    :sswitch_727
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3512
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3513
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getAvailableNetworks(I)V

    .line 3514
    goto/16 :goto_a5e

    .line 3500
    :sswitch_733
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3502
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3503
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3504
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 3505
    goto/16 :goto_a5e

    .line 3491
    :sswitch_743
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3493
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3494
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 3495
    goto/16 :goto_a5e

    .line 3482
    :sswitch_74f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3484
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3485
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 3486
    goto/16 :goto_a5e

    .line 3470
    :sswitch_75b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3472
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3473
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3474
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3475
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3476
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    goto/16 :goto_a5e

    .line 3456
    :sswitch_773
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3458
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3459
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3460
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3461
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3462
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3463
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3464
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 3465
    goto/16 :goto_a5e

    .line 3443
    :sswitch_794
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3445
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3446
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3447
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3448
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3449
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3450
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3451
    goto/16 :goto_a5e

    .line 3432
    :sswitch_7b1
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3434
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3435
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3436
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3437
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 3438
    goto/16 :goto_a5e

    .line 3423
    :sswitch_7c5
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3425
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3426
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->acceptCall(I)V

    .line 3427
    goto/16 :goto_a5e

    .line 3412
    :sswitch_7d1
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3414
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3415
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3416
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3417
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 3418
    goto/16 :goto_a5e

    .line 3401
    :sswitch_7e5
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3403
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3404
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3405
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3406
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCallWaiting(IZI)V

    .line 3407
    goto/16 :goto_a5e

    .line 3391
    :sswitch_7f9
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3393
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3394
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3395
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCallWaiting(II)V

    .line 3396
    goto/16 :goto_a5e

    .line 3380
    :sswitch_809
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3382
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3383
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3384
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3385
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3386
    goto/16 :goto_a5e

    .line 3369
    :sswitch_81d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3371
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3372
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3373
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3374
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3375
    goto/16 :goto_a5e

    .line 3359
    :sswitch_831
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3361
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3362
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3363
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setClir(II)V

    .line 3364
    goto/16 :goto_a5e

    .line 3350
    :sswitch_841
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3352
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3353
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getClir(I)V

    .line 3354
    goto/16 :goto_a5e

    .line 3341
    :sswitch_84d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3343
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3344
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->cancelPendingUssd(I)V

    .line 3345
    goto/16 :goto_a5e

    .line 3331
    :sswitch_859
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3333
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3334
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3335
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 3336
    goto/16 :goto_a5e

    .line 3320
    :sswitch_869
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3322
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3323
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 3324
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3325
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 3326
    goto/16 :goto_a5e

    .line 3305
    :sswitch_87d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3307
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3308
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3309
    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 3310
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3311
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 3312
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 3313
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 3314
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 3315
    goto/16 :goto_a5e

    .line 3294
    :sswitch_8a2
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3296
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3297
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3298
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3299
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3300
    goto/16 :goto_a5e

    .line 3283
    :sswitch_8b6
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3285
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3286
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3287
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3288
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3289
    goto/16 :goto_a5e

    .line 3273
    :sswitch_8ca
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3275
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3276
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3277
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 3278
    goto/16 :goto_a5e

    .line 3263
    :sswitch_8da
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3265
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3266
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3267
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setRadioPower(IZ)V

    .line 3268
    goto/16 :goto_a5e

    .line 3254
    :sswitch_8ea
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3256
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3257
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getOperator(I)V

    .line 3258
    goto/16 :goto_a5e

    .line 3245
    :sswitch_8f6
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3247
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3248
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getDataRegistrationState(I)V

    .line 3249
    goto/16 :goto_a5e

    .line 3236
    :sswitch_902
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3238
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3239
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 3240
    goto/16 :goto_a5e

    .line 3227
    :sswitch_90e
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3229
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3230
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getSignalStrength(I)V

    .line 3231
    goto/16 :goto_a5e

    .line 3218
    :sswitch_91a
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3220
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3221
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getLastCallFailCause(I)V

    .line 3222
    goto/16 :goto_a5e

    .line 3209
    :sswitch_926
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3211
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3212
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->rejectCall(I)V

    .line 3213
    goto/16 :goto_a5e

    .line 3200
    :sswitch_932
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3202
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3203
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->conference(I)V

    .line 3204
    goto/16 :goto_a5e

    .line 3191
    :sswitch_93e
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3193
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3194
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 3195
    goto/16 :goto_a5e

    .line 3182
    :sswitch_94a
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3184
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3185
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 3186
    goto/16 :goto_a5e

    .line 3173
    :sswitch_956
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3175
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3176
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 3177
    goto/16 :goto_a5e

    .line 3163
    :sswitch_962
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3165
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3166
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3167
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->hangup(II)V

    .line 3168
    goto/16 :goto_a5e

    .line 3153
    :sswitch_972
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3155
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3156
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3157
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 3158
    goto/16 :goto_a5e

    .line 3142
    :sswitch_982
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3144
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3145
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 3146
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3147
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 3148
    goto/16 :goto_a5e

    .line 3133
    :sswitch_996
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3135
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3136
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCurrentCalls(I)V

    .line 3137
    goto/16 :goto_a5e

    .line 3123
    :sswitch_9a2
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3125
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3126
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3127
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 3128
    goto/16 :goto_a5e

    .line 3111
    :sswitch_9b2
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3113
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3114
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3115
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3116
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3117
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3118
    goto/16 :goto_a5e

    .line 3099
    :sswitch_9ca
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3101
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3102
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3103
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3104
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3105
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3106
    goto/16 :goto_a5e

    .line 3087
    :sswitch_9e2
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3089
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3090
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3091
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3092
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3093
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3094
    goto :goto_a5e

    .line 3076
    :sswitch_9f9
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3078
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3079
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3080
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3081
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3082
    goto :goto_a5e

    .line 3064
    :sswitch_a0c
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3066
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3067
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3068
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3069
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3070
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3071
    goto :goto_a5e

    .line 3053
    :sswitch_a23
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3055
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3056
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3057
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3058
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3059
    goto :goto_a5e

    .line 3044
    :sswitch_a36
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3046
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3047
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getIccCardStatus(I)V

    .line 3048
    goto :goto_a5e

    .line 3032
    :sswitch_a41
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3034
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 3035
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v3

    .line 3036
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 3037
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3038
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3039
    nop

    .line 4625
    :goto_a5e
    return-void

    nop

    :sswitch_data_a60
    .sparse-switch
        0x1 -> :sswitch_a41
        0x2 -> :sswitch_a36
        0x3 -> :sswitch_a23
        0x4 -> :sswitch_a0c
        0x5 -> :sswitch_9f9
        0x6 -> :sswitch_9e2
        0x7 -> :sswitch_9ca
        0x8 -> :sswitch_9b2
        0x9 -> :sswitch_9a2
        0xa -> :sswitch_996
        0xb -> :sswitch_982
        0xc -> :sswitch_972
        0xd -> :sswitch_962
        0xe -> :sswitch_956
        0xf -> :sswitch_94a
        0x10 -> :sswitch_93e
        0x11 -> :sswitch_932
        0x12 -> :sswitch_926
        0x13 -> :sswitch_91a
        0x14 -> :sswitch_90e
        0x15 -> :sswitch_902
        0x16 -> :sswitch_8f6
        0x17 -> :sswitch_8ea
        0x18 -> :sswitch_8da
        0x19 -> :sswitch_8ca
        0x1a -> :sswitch_8b6
        0x1b -> :sswitch_8a2
        0x1c -> :sswitch_87d
        0x1d -> :sswitch_869
        0x1e -> :sswitch_859
        0x1f -> :sswitch_84d
        0x20 -> :sswitch_841
        0x21 -> :sswitch_831
        0x22 -> :sswitch_81d
        0x23 -> :sswitch_809
        0x24 -> :sswitch_7f9
        0x25 -> :sswitch_7e5
        0x26 -> :sswitch_7d1
        0x27 -> :sswitch_7c5
        0x28 -> :sswitch_7b1
        0x29 -> :sswitch_794
        0x2a -> :sswitch_773
        0x2b -> :sswitch_75b
        0x2c -> :sswitch_74f
        0x2d -> :sswitch_743
        0x2e -> :sswitch_733
        0x2f -> :sswitch_727
        0x30 -> :sswitch_717
        0x31 -> :sswitch_70b
        0x32 -> :sswitch_6ff
        0x33 -> :sswitch_6ef
        0x34 -> :sswitch_6df
        0x35 -> :sswitch_6d3
        0x36 -> :sswitch_6c7
        0x37 -> :sswitch_6bb
        0x38 -> :sswitch_6ab
        0x39 -> :sswitch_697
        0x3a -> :sswitch_687
        0x3b -> :sswitch_677
        0x3c -> :sswitch_66b
        0x3d -> :sswitch_65b
        0x3e -> :sswitch_64b
        0x3f -> :sswitch_63b
        0x40 -> :sswitch_62f
        0x41 -> :sswitch_61f
        0x42 -> :sswitch_613
        0x43 -> :sswitch_607
        0x44 -> :sswitch_5f7
        0x45 -> :sswitch_5e7
        0x46 -> :sswitch_5d7
        0x47 -> :sswitch_5cb
        0x48 -> :sswitch_5bb
        0x49 -> :sswitch_5af
        0x4a -> :sswitch_59f
        0x4b -> :sswitch_593
        0x4c -> :sswitch_583
        0x4d -> :sswitch_56b
        0x4e -> :sswitch_557
        0x4f -> :sswitch_543
        0x50 -> :sswitch_537
        0x51 -> :sswitch_527
        0x52 -> :sswitch_517
        0x53 -> :sswitch_50b
        0x54 -> :sswitch_4fb
        0x55 -> :sswitch_4eb
        0x56 -> :sswitch_4df
        0x57 -> :sswitch_4cb
        0x58 -> :sswitch_4bb
        0x59 -> :sswitch_4af
        0x5a -> :sswitch_4a3
        0x5b -> :sswitch_497
        0x5c -> :sswitch_487
        0x5d -> :sswitch_477
        0x5e -> :sswitch_46b
        0x5f -> :sswitch_45f
        0x60 -> :sswitch_44f
        0x61 -> :sswitch_43b
        0x62 -> :sswitch_42b
        0x63 -> :sswitch_41f
        0x64 -> :sswitch_413
        0x65 -> :sswitch_403
        0x66 -> :sswitch_3e7
        0x67 -> :sswitch_3db
        0x68 -> :sswitch_3c7
        0x69 -> :sswitch_3b3
        0x6a -> :sswitch_39f
        0x6b -> :sswitch_38f
        0x6c -> :sswitch_37b
        0x6d -> :sswitch_36b
        0x6e -> :sswitch_357
        0x6f -> :sswitch_347
        0x70 -> :sswitch_337
        0x71 -> :sswitch_323
        0x72 -> :sswitch_313
        0x73 -> :sswitch_307
        0x74 -> :sswitch_2ef
        0x75 -> :sswitch_2db
        0x76 -> :sswitch_2cf
        0x77 -> :sswitch_2c3
        0x78 -> :sswitch_2af
        0x79 -> :sswitch_29b
        0x7a -> :sswitch_28f
        0x7b -> :sswitch_283
        0x7c -> :sswitch_277
        0x7d -> :sswitch_25f
        0x7e -> :sswitch_253
        0x7f -> :sswitch_23f
        0x80 -> :sswitch_22f
        0x81 -> :sswitch_21f
        0x82 -> :sswitch_217
        0x83 -> :sswitch_203
        0x84 -> :sswitch_1f3
        0x85 -> :sswitch_1df
        0x86 -> :sswitch_1d3
        0x87 -> :sswitch_1bf
        0x88 -> :sswitch_1af
        0x89 -> :sswitch_19b
        0x8a -> :sswitch_18b
        0x8b -> :sswitch_16e
        0x8c -> :sswitch_149
        0x8d -> :sswitch_115
        0x8e -> :sswitch_101
        0x8f -> :sswitch_ed
        0x90 -> :sswitch_dd
        0x91 -> :sswitch_d1
        0xf43484e -> :sswitch_bf
        0xf444247 -> :sswitch_a9
        0xf445343 -> :sswitch_97
        0xf485348 -> :sswitch_42
        0xf494e54 -> :sswitch_3a
        0xf4c5444 -> :sswitch_38
        0xf504e47 -> :sswitch_2a
        0xf524546 -> :sswitch_18
        0xf535953 -> :sswitch_10
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 2983
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 3011
    const-string v0, "android.hardware.radio@1.3::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3012
    return-object p0

    .line 3014
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

    .line 3018
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 3019
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 2973
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 3023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3005
    const/4 p1, 0x1

    return p1
.end method
