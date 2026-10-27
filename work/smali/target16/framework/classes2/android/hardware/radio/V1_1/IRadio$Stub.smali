.class public abstract Landroid/hardware/radio/V1_1/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_1/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_1/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2799
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 2802
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

    .line 2816
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 2854
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2855
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2856
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2857
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2858
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

    .line 2828
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

    :array_34
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

    .line 2807
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.0::IRadio"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.radio@1.1::IRadio"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 2822
    const-string v0, "android.hardware.radio@1.1::IRadio"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 2842
    const/4 p1, 0x1

    return p1
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 2864
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2866
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2894
    const-string v3, "android.hardware.radio@1.1::IRadio"

    const-string v4, "android.hidl.base@1.0::IBase"

    const/4 v5, 0x0

    const-string v6, "android.hardware.radio@1.0::IRadio"

    sparse-switch p1, :sswitch_data_97e

    goto/16 :goto_97c

    .line 4370
    :sswitch_c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4372
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->notifySyspropsChanged()V

    .line 4373
    goto/16 :goto_97c

    .line 4359
    :sswitch_14
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4361
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 4362
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4363
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4364
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4365
    goto/16 :goto_97c

    .line 4349
    :sswitch_26
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4351
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->ping()V

    .line 4352
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4353
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4354
    goto/16 :goto_97c

    .line 4344
    :sswitch_34
    goto/16 :goto_97c

    .line 4336
    :sswitch_36
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4338
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setHALInstrumentation()V

    .line 4339
    goto/16 :goto_97c

    .line 4302
    :sswitch_3e
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4304
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4305
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4307
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 4309
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4310
    const-wide/16 v6, 0x8

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4311
    const-wide/16 v6, 0xc

    invoke-virtual {v1, v6, v7, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4312
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v6, v3, 0x20

    invoke-direct {v4, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 4313
    nop

    :goto_65
    if-ge v5, v3, :cond_86

    .line 4315
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 4316
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 4318
    if-eqz v8, :cond_7e

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_7e

    .line 4322
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4323
    nop

    .line 4313
    add-int/lit8 v5, v5, 0x1

    goto :goto_65

    .line 4319
    :cond_7e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4326
    :cond_86
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4328
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4330
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4331
    goto/16 :goto_97c

    .line 4291
    :sswitch_93
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4293
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 4294
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4295
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4296
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4297
    goto/16 :goto_97c

    .line 4279
    :sswitch_a5
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4281
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v3

    .line 4282
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4283
    invoke-virtual {p0, v3, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 4284
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4285
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4286
    goto/16 :goto_97c

    .line 4268
    :sswitch_bb
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4270
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4271
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4272
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4273
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4274
    goto/16 :goto_97c

    .line 4258
    :sswitch_cd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4260
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4261
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4262
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->stopKeepalive(II)V

    .line 4263
    goto/16 :goto_97c

    .line 4247
    :sswitch_dd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4249
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4250
    new-instance v3, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v3}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 4251
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4252
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 4253
    goto/16 :goto_97c

    .line 4238
    :sswitch_f1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4240
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4241
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->stopNetworkScan(I)V

    .line 4242
    goto/16 :goto_97c

    .line 4227
    :sswitch_fd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4229
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4230
    new-instance v3, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v3}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 4231
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4232
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 4233
    goto/16 :goto_97c

    .line 4217
    :sswitch_111
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4219
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4220
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4221
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 4222
    goto/16 :goto_97c

    .line 4206
    :sswitch_121
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4208
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4209
    new-instance v3, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 4210
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4211
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 4212
    goto/16 :goto_97c

    .line 4198
    :sswitch_135
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4200
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->responseAcknowledgement()V

    .line 4201
    goto/16 :goto_97c

    .line 4188
    :sswitch_13d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4190
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4191
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4192
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setSimCardPower(IZ)V

    .line 4193
    goto/16 :goto_97c

    .line 4178
    :sswitch_14d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4180
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4181
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4182
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setIndicationFilter(II)V

    .line 4183
    goto/16 :goto_97c

    .line 4167
    :sswitch_15d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4169
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4170
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4171
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4172
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 4173
    goto/16 :goto_97c

    .line 4158
    :sswitch_171
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4160
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4161
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getAllowedCarriers(I)V

    .line 4162
    goto/16 :goto_97c

    .line 4146
    :sswitch_17d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4148
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4149
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4150
    new-instance v4, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v4}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4151
    invoke-virtual {v4, p2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4152
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4153
    goto/16 :goto_97c

    .line 4137
    :sswitch_195
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4139
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4140
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getModemActivityInfo(I)V

    .line 4141
    goto/16 :goto_97c

    .line 4128
    :sswitch_1a1
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4130
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4131
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->pullLceData(I)V

    .line 4132
    goto/16 :goto_97c

    .line 4119
    :sswitch_1ad
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4121
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4122
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->stopLceService(I)V

    .line 4123
    goto/16 :goto_97c

    .line 4108
    :sswitch_1b9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4110
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4111
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4112
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4113
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->startLceService(IIZ)V

    .line 4114
    goto/16 :goto_97c

    .line 4097
    :sswitch_1cd
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4099
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4100
    new-instance v3, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4101
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4102
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4103
    goto/16 :goto_97c

    .line 4088
    :sswitch_1e1
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4090
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4091
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getRadioCapability(I)V

    .line 4092
    goto/16 :goto_97c

    .line 4079
    :sswitch_1ed
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4081
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4082
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->requestShutdown(I)V

    .line 4083
    goto/16 :goto_97c

    .line 4068
    :sswitch_1f9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4070
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4071
    invoke-static {p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4072
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4073
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 4074
    goto/16 :goto_97c

    .line 4056
    :sswitch_20d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4058
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4059
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4060
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4061
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4062
    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 4063
    goto/16 :goto_97c

    .line 4047
    :sswitch_225
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4049
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4050
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getHardwareConfig(I)V

    .line 4051
    goto/16 :goto_97c

    .line 4037
    :sswitch_231
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4039
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4040
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4041
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setDataAllowed(IZ)V

    .line 4042
    goto/16 :goto_97c

    .line 4026
    :sswitch_241
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4028
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4029
    new-instance v3, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 4030
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4031
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 4032
    goto/16 :goto_97c

    .line 4016
    :sswitch_255
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4018
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4019
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4020
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->nvResetConfig(II)V

    .line 4021
    goto/16 :goto_97c

    .line 4006
    :sswitch_265
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4008
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4010
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 4011
    goto/16 :goto_97c

    .line 3995
    :sswitch_275
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3997
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3998
    new-instance v3, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 3999
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4000
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 4001
    goto/16 :goto_97c

    .line 3985
    :sswitch_289
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3987
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3988
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3989
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->nvReadItem(II)V

    .line 3990
    goto/16 :goto_97c

    .line 3974
    :sswitch_299
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3976
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3977
    new-instance v3, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 3978
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3979
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 3980
    goto/16 :goto_97c

    .line 3964
    :sswitch_2ad
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3966
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3967
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3968
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 3969
    goto/16 :goto_97c

    .line 3953
    :sswitch_2bd
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3955
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3956
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3957
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3958
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 3959
    goto/16 :goto_97c

    .line 3942
    :sswitch_2d1
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3944
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3945
    new-instance v3, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 3946
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3947
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 3948
    goto/16 :goto_97c

    .line 3931
    :sswitch_2e5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3933
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3934
    new-instance v3, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 3935
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3936
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 3937
    goto/16 :goto_97c

    .line 3922
    :sswitch_2f9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3924
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3925
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getImsRegistrationState(I)V

    .line 3926
    goto/16 :goto_97c

    .line 3909
    :sswitch_305
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3912
    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 3913
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3914
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 3915
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3916
    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 3917
    goto/16 :goto_97c

    .line 3899
    :sswitch_321
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3901
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3902
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3903
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCellInfoListRate(II)V

    .line 3904
    goto/16 :goto_97c

    .line 3890
    :sswitch_331
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3892
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3893
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCellInfoList(I)V

    .line 3894
    goto/16 :goto_97c

    .line 3881
    :sswitch_33d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3884
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 3885
    goto/16 :goto_97c

    .line 3871
    :sswitch_349
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3873
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3874
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3875
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 3876
    goto/16 :goto_97c

    .line 3860
    :sswitch_359
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3862
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3863
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3864
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3865
    invoke-virtual {p0, v2, v3, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 3866
    goto/16 :goto_97c

    .line 3850
    :sswitch_36d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3852
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3853
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3854
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 3855
    goto/16 :goto_97c

    .line 3841
    :sswitch_37d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3843
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3844
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 3845
    goto/16 :goto_97c

    .line 3832
    :sswitch_389
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3834
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3835
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 3836
    goto/16 :goto_97c

    .line 3822
    :sswitch_395
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3824
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3825
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3826
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 3827
    goto/16 :goto_97c

    .line 3812
    :sswitch_3a5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3814
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3815
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3816
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 3817
    goto/16 :goto_97c

    .line 3803
    :sswitch_3b5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3805
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3806
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getSmscAddress(I)V

    .line 3807
    goto/16 :goto_97c

    .line 3794
    :sswitch_3c1
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3796
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3797
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 3798
    goto/16 :goto_97c

    .line 3785
    :sswitch_3cd
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3787
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3788
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getDeviceIdentity(I)V

    .line 3789
    goto/16 :goto_97c

    .line 3775
    :sswitch_3d9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3777
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3778
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3779
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 3780
    goto/16 :goto_97c

    .line 3764
    :sswitch_3e9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3766
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3767
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 3768
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3769
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 3770
    goto/16 :goto_97c

    .line 3755
    :sswitch_3fd
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3757
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3758
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCDMASubscription(I)V

    .line 3759
    goto/16 :goto_97c

    .line 3745
    :sswitch_409
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3747
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3748
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3749
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 3750
    goto/16 :goto_97c

    .line 3735
    :sswitch_419
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3737
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3738
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3739
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 3740
    goto/16 :goto_97c

    .line 3726
    :sswitch_429
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3728
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3729
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 3730
    goto/16 :goto_97c

    .line 3716
    :sswitch_435
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3718
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3719
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3720
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 3721
    goto/16 :goto_97c

    .line 3706
    :sswitch_445
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3708
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3709
    invoke-static {p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3710
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 3711
    goto/16 :goto_97c

    .line 3697
    :sswitch_455
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3699
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3700
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 3701
    goto/16 :goto_97c

    .line 3686
    :sswitch_461
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3688
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3689
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 3690
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3691
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 3692
    goto/16 :goto_97c

    .line 3675
    :sswitch_475
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3677
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3678
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3679
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3680
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 3681
    goto/16 :goto_97c

    .line 3663
    :sswitch_489
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3665
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3666
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3667
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3668
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3669
    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 3670
    goto/16 :goto_97c

    .line 3653
    :sswitch_4a1
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3655
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3656
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3657
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 3658
    goto/16 :goto_97c

    .line 3644
    :sswitch_4b1
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3646
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3647
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 3648
    goto/16 :goto_97c

    .line 3634
    :sswitch_4bd
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3636
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3637
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3638
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 3639
    goto/16 :goto_97c

    .line 3625
    :sswitch_4cd
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3627
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3628
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getTTYMode(I)V

    .line 3629
    goto/16 :goto_97c

    .line 3615
    :sswitch_4d9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3617
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3618
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3619
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setTTYMode(II)V

    .line 3620
    goto/16 :goto_97c

    .line 3606
    :sswitch_4e9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3608
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3609
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 3610
    goto/16 :goto_97c

    .line 3596
    :sswitch_4f5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3598
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3599
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3600
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 3601
    goto/16 :goto_97c

    .line 3586
    :sswitch_505
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3588
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3589
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3590
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 3591
    goto/16 :goto_97c

    .line 3576
    :sswitch_515
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3578
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3579
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3580
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 3581
    goto/16 :goto_97c

    .line 3567
    :sswitch_525
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3569
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3570
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getNeighboringCids(I)V

    .line 3571
    goto/16 :goto_97c

    .line 3558
    :sswitch_531
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3560
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3561
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 3562
    goto/16 :goto_97c

    .line 3548
    :sswitch_53d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3550
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3551
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3552
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 3553
    goto/16 :goto_97c

    .line 3539
    :sswitch_54d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3541
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3542
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->explicitCallTransfer(I)V

    .line 3543
    goto/16 :goto_97c

    .line 3529
    :sswitch_559
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3531
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3532
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3533
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 3534
    goto/16 :goto_97c

    .line 3519
    :sswitch_569
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3521
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3522
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3523
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 3524
    goto/16 :goto_97c

    .line 3509
    :sswitch_579
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3511
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3512
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3513
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 3514
    goto/16 :goto_97c

    .line 3500
    :sswitch_589
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3502
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3503
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getAvailableBandModes(I)V

    .line 3504
    goto/16 :goto_97c

    .line 3490
    :sswitch_595
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3492
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3493
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3494
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setBandMode(II)V

    .line 3495
    goto/16 :goto_97c

    .line 3480
    :sswitch_5a5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3482
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3483
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3484
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 3485
    goto/16 :goto_97c

    .line 3469
    :sswitch_5b5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3471
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3472
    new-instance v3, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 3473
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3474
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 3475
    goto/16 :goto_97c

    .line 3459
    :sswitch_5c9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3461
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3462
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3463
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 3464
    goto/16 :goto_97c

    .line 3450
    :sswitch_5d9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3452
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3453
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getDataCallList(I)V

    .line 3454
    goto/16 :goto_97c

    .line 3441
    :sswitch_5e5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3443
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3444
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getClip(I)V

    .line 3445
    goto/16 :goto_97c

    .line 3432
    :sswitch_5f1
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3434
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3435
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getMute(I)V

    .line 3436
    goto/16 :goto_97c

    .line 3422
    :sswitch_5fd
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3424
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3425
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3426
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setMute(IZ)V

    .line 3427
    goto/16 :goto_97c

    .line 3412
    :sswitch_60d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3414
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3415
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3416
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->separateConnection(II)V

    .line 3417
    goto/16 :goto_97c

    .line 3403
    :sswitch_61d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3405
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3406
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getBasebandVersion(I)V

    .line 3407
    goto/16 :goto_97c

    .line 3394
    :sswitch_629
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3396
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3397
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->stopDtmf(I)V

    .line 3398
    goto/16 :goto_97c

    .line 3384
    :sswitch_635
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3386
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3387
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3388
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 3389
    goto/16 :goto_97c

    .line 3375
    :sswitch_645
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3377
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3378
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getAvailableNetworks(I)V

    .line 3379
    goto/16 :goto_97c

    .line 3365
    :sswitch_651
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3367
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3368
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3369
    invoke-virtual {p0, v2, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 3370
    goto/16 :goto_97c

    .line 3356
    :sswitch_661
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3358
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3359
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 3360
    goto/16 :goto_97c

    .line 3347
    :sswitch_66d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3349
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3350
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 3351
    goto/16 :goto_97c

    .line 3335
    :sswitch_679
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3337
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3338
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3339
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3340
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3341
    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    goto/16 :goto_97c

    .line 3321
    :sswitch_691
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3323
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3324
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3325
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3326
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3327
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3328
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3329
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 3330
    goto/16 :goto_97c

    .line 3308
    :sswitch_6b2
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3310
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3311
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3312
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3313
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3314
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3315
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3316
    goto/16 :goto_97c

    .line 3297
    :sswitch_6cf
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3299
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3300
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3301
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3302
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 3303
    goto/16 :goto_97c

    .line 3288
    :sswitch_6e3
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3290
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3291
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->acceptCall(I)V

    .line 3292
    goto/16 :goto_97c

    .line 3277
    :sswitch_6ef
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3279
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3280
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3281
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3282
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 3283
    goto/16 :goto_97c

    .line 3266
    :sswitch_703
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3268
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3269
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3270
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3271
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCallWaiting(IZI)V

    .line 3272
    goto/16 :goto_97c

    .line 3256
    :sswitch_717
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3258
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3259
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3260
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCallWaiting(II)V

    .line 3261
    goto/16 :goto_97c

    .line 3245
    :sswitch_727
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3247
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3248
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3249
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3250
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3251
    goto/16 :goto_97c

    .line 3234
    :sswitch_73b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3236
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3237
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3238
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3239
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3240
    goto/16 :goto_97c

    .line 3224
    :sswitch_74f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3226
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3227
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3228
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setClir(II)V

    .line 3229
    goto/16 :goto_97c

    .line 3215
    :sswitch_75f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3217
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3218
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getClir(I)V

    .line 3219
    goto/16 :goto_97c

    .line 3206
    :sswitch_76b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3208
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3209
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->cancelPendingUssd(I)V

    .line 3210
    goto/16 :goto_97c

    .line 3196
    :sswitch_777
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3198
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3199
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3200
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 3201
    goto/16 :goto_97c

    .line 3185
    :sswitch_787
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3187
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3188
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 3189
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3190
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 3191
    goto/16 :goto_97c

    .line 3170
    :sswitch_79b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3172
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3173
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3174
    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 3175
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3176
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 3177
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 3178
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 3179
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 3180
    goto/16 :goto_97c

    .line 3159
    :sswitch_7c0
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3161
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3162
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3163
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3164
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3165
    goto/16 :goto_97c

    .line 3148
    :sswitch_7d4
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3150
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3151
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3152
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3153
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3154
    goto/16 :goto_97c

    .line 3138
    :sswitch_7e8
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3140
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3141
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3142
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 3143
    goto/16 :goto_97c

    .line 3128
    :sswitch_7f8
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3130
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3131
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3132
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setRadioPower(IZ)V

    .line 3133
    goto/16 :goto_97c

    .line 3119
    :sswitch_808
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3121
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3122
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getOperator(I)V

    .line 3123
    goto/16 :goto_97c

    .line 3110
    :sswitch_814
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3112
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3113
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getDataRegistrationState(I)V

    .line 3114
    goto/16 :goto_97c

    .line 3101
    :sswitch_820
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3103
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3104
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 3105
    goto/16 :goto_97c

    .line 3092
    :sswitch_82c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3094
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3095
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getSignalStrength(I)V

    .line 3096
    goto/16 :goto_97c

    .line 3083
    :sswitch_838
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3085
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3086
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getLastCallFailCause(I)V

    .line 3087
    goto/16 :goto_97c

    .line 3074
    :sswitch_844
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3076
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3077
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->rejectCall(I)V

    .line 3078
    goto/16 :goto_97c

    .line 3065
    :sswitch_850
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3067
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3068
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->conference(I)V

    .line 3069
    goto/16 :goto_97c

    .line 3056
    :sswitch_85c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3058
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3059
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 3060
    goto/16 :goto_97c

    .line 3047
    :sswitch_868
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3049
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3050
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 3051
    goto/16 :goto_97c

    .line 3038
    :sswitch_874
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3040
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3041
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 3042
    goto/16 :goto_97c

    .line 3028
    :sswitch_880
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3030
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3031
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3032
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->hangup(II)V

    .line 3033
    goto/16 :goto_97c

    .line 3018
    :sswitch_890
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3020
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3021
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3022
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 3023
    goto/16 :goto_97c

    .line 3007
    :sswitch_8a0
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3010
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 3011
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3012
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 3013
    goto/16 :goto_97c

    .line 2998
    :sswitch_8b4
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3000
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3001
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCurrentCalls(I)V

    .line 3002
    goto/16 :goto_97c

    .line 2988
    :sswitch_8c0
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2990
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2991
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2992
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 2993
    goto/16 :goto_97c

    .line 2976
    :sswitch_8d0
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2978
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2979
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2980
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2981
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2982
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_1/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2983
    goto/16 :goto_97c

    .line 2964
    :sswitch_8e8
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2966
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2967
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2968
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2969
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2970
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_1/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    goto/16 :goto_97c

    .line 2952
    :sswitch_900
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2954
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2955
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2956
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2957
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2958
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_1/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2959
    goto :goto_97c

    .line 2941
    :sswitch_917
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2943
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2944
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2945
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2946
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 2947
    goto :goto_97c

    .line 2929
    :sswitch_92a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2931
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2932
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2933
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2934
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2935
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_1/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    goto :goto_97c

    .line 2918
    :sswitch_941
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2920
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2921
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2922
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2923
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 2924
    goto :goto_97c

    .line 2909
    :sswitch_954
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2912
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getIccCardStatus(I)V

    .line 2913
    goto :goto_97c

    .line 2897
    :sswitch_95f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2899
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 2900
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v3

    .line 2901
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 2902
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2903
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2904
    nop

    .line 4382
    :goto_97c
    return-void

    nop

    :sswitch_data_97e
    .sparse-switch
        0x1 -> :sswitch_95f
        0x2 -> :sswitch_954
        0x3 -> :sswitch_941
        0x4 -> :sswitch_92a
        0x5 -> :sswitch_917
        0x6 -> :sswitch_900
        0x7 -> :sswitch_8e8
        0x8 -> :sswitch_8d0
        0x9 -> :sswitch_8c0
        0xa -> :sswitch_8b4
        0xb -> :sswitch_8a0
        0xc -> :sswitch_890
        0xd -> :sswitch_880
        0xe -> :sswitch_874
        0xf -> :sswitch_868
        0x10 -> :sswitch_85c
        0x11 -> :sswitch_850
        0x12 -> :sswitch_844
        0x13 -> :sswitch_838
        0x14 -> :sswitch_82c
        0x15 -> :sswitch_820
        0x16 -> :sswitch_814
        0x17 -> :sswitch_808
        0x18 -> :sswitch_7f8
        0x19 -> :sswitch_7e8
        0x1a -> :sswitch_7d4
        0x1b -> :sswitch_7c0
        0x1c -> :sswitch_79b
        0x1d -> :sswitch_787
        0x1e -> :sswitch_777
        0x1f -> :sswitch_76b
        0x20 -> :sswitch_75f
        0x21 -> :sswitch_74f
        0x22 -> :sswitch_73b
        0x23 -> :sswitch_727
        0x24 -> :sswitch_717
        0x25 -> :sswitch_703
        0x26 -> :sswitch_6ef
        0x27 -> :sswitch_6e3
        0x28 -> :sswitch_6cf
        0x29 -> :sswitch_6b2
        0x2a -> :sswitch_691
        0x2b -> :sswitch_679
        0x2c -> :sswitch_66d
        0x2d -> :sswitch_661
        0x2e -> :sswitch_651
        0x2f -> :sswitch_645
        0x30 -> :sswitch_635
        0x31 -> :sswitch_629
        0x32 -> :sswitch_61d
        0x33 -> :sswitch_60d
        0x34 -> :sswitch_5fd
        0x35 -> :sswitch_5f1
        0x36 -> :sswitch_5e5
        0x37 -> :sswitch_5d9
        0x38 -> :sswitch_5c9
        0x39 -> :sswitch_5b5
        0x3a -> :sswitch_5a5
        0x3b -> :sswitch_595
        0x3c -> :sswitch_589
        0x3d -> :sswitch_579
        0x3e -> :sswitch_569
        0x3f -> :sswitch_559
        0x40 -> :sswitch_54d
        0x41 -> :sswitch_53d
        0x42 -> :sswitch_531
        0x43 -> :sswitch_525
        0x44 -> :sswitch_515
        0x45 -> :sswitch_505
        0x46 -> :sswitch_4f5
        0x47 -> :sswitch_4e9
        0x48 -> :sswitch_4d9
        0x49 -> :sswitch_4cd
        0x4a -> :sswitch_4bd
        0x4b -> :sswitch_4b1
        0x4c -> :sswitch_4a1
        0x4d -> :sswitch_489
        0x4e -> :sswitch_475
        0x4f -> :sswitch_461
        0x50 -> :sswitch_455
        0x51 -> :sswitch_445
        0x52 -> :sswitch_435
        0x53 -> :sswitch_429
        0x54 -> :sswitch_419
        0x55 -> :sswitch_409
        0x56 -> :sswitch_3fd
        0x57 -> :sswitch_3e9
        0x58 -> :sswitch_3d9
        0x59 -> :sswitch_3cd
        0x5a -> :sswitch_3c1
        0x5b -> :sswitch_3b5
        0x5c -> :sswitch_3a5
        0x5d -> :sswitch_395
        0x5e -> :sswitch_389
        0x5f -> :sswitch_37d
        0x60 -> :sswitch_36d
        0x61 -> :sswitch_359
        0x62 -> :sswitch_349
        0x63 -> :sswitch_33d
        0x64 -> :sswitch_331
        0x65 -> :sswitch_321
        0x66 -> :sswitch_305
        0x67 -> :sswitch_2f9
        0x68 -> :sswitch_2e5
        0x69 -> :sswitch_2d1
        0x6a -> :sswitch_2bd
        0x6b -> :sswitch_2ad
        0x6c -> :sswitch_299
        0x6d -> :sswitch_289
        0x6e -> :sswitch_275
        0x6f -> :sswitch_265
        0x70 -> :sswitch_255
        0x71 -> :sswitch_241
        0x72 -> :sswitch_231
        0x73 -> :sswitch_225
        0x74 -> :sswitch_20d
        0x75 -> :sswitch_1f9
        0x76 -> :sswitch_1ed
        0x77 -> :sswitch_1e1
        0x78 -> :sswitch_1cd
        0x79 -> :sswitch_1b9
        0x7a -> :sswitch_1ad
        0x7b -> :sswitch_1a1
        0x7c -> :sswitch_195
        0x7d -> :sswitch_17d
        0x7e -> :sswitch_171
        0x7f -> :sswitch_15d
        0x80 -> :sswitch_14d
        0x81 -> :sswitch_13d
        0x82 -> :sswitch_135
        0x83 -> :sswitch_121
        0x84 -> :sswitch_111
        0x85 -> :sswitch_fd
        0x86 -> :sswitch_f1
        0x87 -> :sswitch_dd
        0x88 -> :sswitch_cd
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

    .line 2848
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 2876
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2877
    return-object p0

    .line 2879
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

    .line 2883
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 2884
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 2838
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2870
    const/4 p1, 0x1

    return p1
.end method
