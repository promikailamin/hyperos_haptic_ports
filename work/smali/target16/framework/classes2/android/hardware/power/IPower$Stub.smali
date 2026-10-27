.class public abstract Landroid/hardware/power/IPower$Stub;
.super Landroid/os/Binder;
.source "IPower.java"

# interfaces
.implements Landroid/hardware/power/IPower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/IPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/power/IPower$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_closeSessionChannel:I = 0x9

.field static final blacklist TRANSACTION_createHintSession:I = 0x5

.field static final blacklist TRANSACTION_createHintSessionWithConfig:I = 0x7

.field static final blacklist TRANSACTION_getCpuHeadroom:I = 0xb

.field static final blacklist TRANSACTION_getGpuHeadroom:I = 0xc

.field static final blacklist TRANSACTION_getHintSessionPreferredRate:I = 0x6

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSessionChannel:I = 0x8

.field static final blacklist TRANSACTION_getSupportInfo:I = 0xa

.field static final blacklist TRANSACTION_isBoostSupported:I = 0x4

.field static final blacklist TRANSACTION_isModeSupported:I = 0x2

.field static final blacklist TRANSACTION_sendCompositionData:I = 0xd

.field static final blacklist TRANSACTION_sendCompositionUpdate:I = 0xe

.field static final blacklist TRANSACTION_setBoost:I = 0x3

.field static final blacklist TRANSACTION_setMode:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    invoke-virtual {p0}, Landroid/hardware/power/IPower$Stub;->markVintfStability()V

    .line 95
    sget-object v0, Landroid/hardware/power/IPower$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/power/IPower$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/power/IPower;
    .registers 3

    .line 103
    if-nez p0, :cond_4

    .line 104
    const/4 p0, 0x0

    return-object p0

    .line 106
    :cond_4
    sget-object v0, Landroid/hardware/power/IPower$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/power/IPower;

    if-eqz v1, :cond_13

    .line 108
    check-cast v0, Landroid/hardware/power/IPower;

    return-object v0

    .line 110
    :cond_13
    new-instance v0, Landroid/hardware/power/IPower$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/power/IPower$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 119
    sparse-switch p0, :sswitch_data_36

    .line 187
    const/4 p0, 0x0

    return-object p0

    .line 179
    :sswitch_5
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 183
    :sswitch_8
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 175
    :sswitch_b
    const-string p0, "sendCompositionUpdate"

    return-object p0

    .line 171
    :sswitch_e
    const-string p0, "sendCompositionData"

    return-object p0

    .line 167
    :sswitch_11
    const-string p0, "getGpuHeadroom"

    return-object p0

    .line 163
    :sswitch_14
    const-string p0, "getCpuHeadroom"

    return-object p0

    .line 159
    :sswitch_17
    const-string p0, "getSupportInfo"

    return-object p0

    .line 155
    :sswitch_1a
    const-string p0, "closeSessionChannel"

    return-object p0

    .line 151
    :sswitch_1d
    const-string p0, "getSessionChannel"

    return-object p0

    .line 147
    :sswitch_20
    const-string p0, "createHintSessionWithConfig"

    return-object p0

    .line 143
    :sswitch_23
    const-string p0, "getHintSessionPreferredRate"

    return-object p0

    .line 139
    :sswitch_26
    const-string p0, "createHintSession"

    return-object p0

    .line 135
    :sswitch_29
    const-string p0, "isBoostSupported"

    return-object p0

    .line 131
    :sswitch_2c
    const-string p0, "setBoost"

    return-object p0

    .line 127
    :sswitch_2f
    const-string p0, "isModeSupported"

    return-object p0

    .line 123
    :sswitch_32
    const-string p0, "setMode"

    return-object p0

    nop

    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_32
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_29
        0x5 -> :sswitch_26
        0x6 -> :sswitch_23
        0x7 -> :sswitch_20
        0x8 -> :sswitch_1d
        0x9 -> :sswitch_1a
        0xa -> :sswitch_17
        0xb -> :sswitch_14
        0xc -> :sswitch_11
        0xd -> :sswitch_e
        0xe -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 114
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 721
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 194
    invoke-static {p1}, Landroid/hardware/power/IPower$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    sget-object v0, Landroid/hardware/power/IPower$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 199
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 200
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 203
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    return v2

    .line 206
    :cond_16
    if-ne p1, v1, :cond_23

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p0}, Landroid/hardware/power/IPower$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return v2

    .line 211
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p0}, Landroid/hardware/power/IPower$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    return v2

    .line 216
    :cond_33
    packed-switch p1, :pswitch_data_15a

    .line 369
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 362
    :pswitch_3c
    sget-object p1, Landroid/hardware/power/CompositionUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/power/CompositionUpdate;

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, p1}, Landroid/hardware/power/IPower$Stub;->sendCompositionUpdate(Landroid/hardware/power/CompositionUpdate;)V

    .line 365
    goto/16 :goto_159

    .line 354
    :pswitch_4c
    sget-object p1, Landroid/hardware/power/CompositionData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/power/CompositionData;

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, p1}, Landroid/hardware/power/IPower$Stub;->sendCompositionData([Landroid/hardware/power/CompositionData;)V

    .line 357
    goto/16 :goto_159

    .line 344
    :pswitch_5c
    sget-object p1, Landroid/hardware/power/GpuHeadroomParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/power/GpuHeadroomParams;

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, p1}, Landroid/hardware/power/IPower$Stub;->getGpuHeadroom(Landroid/hardware/power/GpuHeadroomParams;)Landroid/hardware/power/GpuHeadroomResult;

    move-result-object p1

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 349
    goto/16 :goto_159

    .line 334
    :pswitch_73
    sget-object p1, Landroid/hardware/power/CpuHeadroomParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/power/CpuHeadroomParams;

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, p1}, Landroid/hardware/power/IPower$Stub;->getCpuHeadroom(Landroid/hardware/power/CpuHeadroomParams;)Landroid/hardware/power/CpuHeadroomResult;

    move-result-object p1

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 339
    goto/16 :goto_159

    .line 326
    :pswitch_8a
    invoke-virtual {p0}, Landroid/hardware/power/IPower$Stub;->getSupportInfo()Landroid/hardware/power/SupportInfo;

    move-result-object p1

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 329
    goto/16 :goto_159

    .line 317
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, p1, p3}, Landroid/hardware/power/IPower$Stub;->closeSessionChannel(II)V

    .line 322
    goto/16 :goto_159

    .line 305
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, p1, p4}, Landroid/hardware/power/IPower$Stub;->getSessionChannel(II)Landroid/hardware/power/ChannelConfig;

    move-result-object p1

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 312
    goto/16 :goto_159

    .line 284
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 294
    new-instance v10, Landroid/hardware/power/SessionConfig;

    invoke-direct {v10}, Landroid/hardware/power/SessionConfig;-><init>()V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/power/IPower$Stub;->createHintSessionWithConfig(II[IJILandroid/hardware/power/SessionConfig;)Landroid/hardware/power/IPowerHintSession;

    move-result-object p1

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 299
    invoke-virtual {p3, v10, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 300
    goto/16 :goto_159

    .line 276
    :pswitch_e9
    invoke-virtual {p0}, Landroid/hardware/power/IPower$Stub;->getHintSessionPreferredRate()J

    move-result-wide p1

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    goto :goto_159

    .line 261
    :pswitch_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/power/IPower$Stub;->createHintSession(II[IJ)Landroid/hardware/power/IPowerHintSession;

    move-result-object p1

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 272
    goto :goto_159

    .line 251
    :pswitch_113
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, p1}, Landroid/hardware/power/IPower$Stub;->isBoostSupported(I)Z

    move-result p1

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 256
    goto :goto_159

    .line 241
    :pswitch_126
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, p1, p3}, Landroid/hardware/power/IPower$Stub;->setBoost(II)V

    .line 246
    goto :goto_159

    .line 231
    :pswitch_136
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, p1}, Landroid/hardware/power/IPower$Stub;->isModeSupported(I)Z

    move-result p1

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 236
    goto :goto_159

    .line 221
    :pswitch_149
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, p1, p3}, Landroid/hardware/power/IPower$Stub;->setMode(IZ)V

    .line 226
    nop

    .line 372
    :goto_159
    return v2

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_149
        :pswitch_136
        :pswitch_126
        :pswitch_113
        :pswitch_f4
        :pswitch_e9
        :pswitch_bd
        :pswitch_a6
        :pswitch_96
        :pswitch_8a
        :pswitch_73
        :pswitch_5c
        :pswitch_4c
        :pswitch_3c
    .end packed-switch
.end method
