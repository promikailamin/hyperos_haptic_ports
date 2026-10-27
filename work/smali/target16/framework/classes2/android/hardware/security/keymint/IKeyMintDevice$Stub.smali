.class public abstract Landroid/hardware/security/keymint/IKeyMintDevice$Stub;
.super Landroid/os/Binder;
.source "IKeyMintDevice.java"

# interfaces
.implements Landroid/hardware/security/keymint/IKeyMintDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/keymint/IKeyMintDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addRngEntropy:I = 0x2

.field static final blacklist TRANSACTION_begin:I = 0xa

.field static final blacklist TRANSACTION_convertStorageKeyToEphemeral:I = 0xd

.field static final blacklist TRANSACTION_deleteAllKeys:I = 0x8

.field static final blacklist TRANSACTION_deleteKey:I = 0x7

.field static final blacklist TRANSACTION_destroyAttestationIds:I = 0x9

.field static final blacklist TRANSACTION_deviceLocked:I = 0xb

.field static final blacklist TRANSACTION_earlyBootEnded:I = 0xc

.field static final blacklist TRANSACTION_generateKey:I = 0x3

.field static final blacklist TRANSACTION_getHardwareInfo:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getKeyCharacteristics:I = 0xe

.field static final blacklist TRANSACTION_getRootOfTrust:I = 0x10

.field static final blacklist TRANSACTION_getRootOfTrustChallenge:I = 0xf

.field static final blacklist TRANSACTION_importKey:I = 0x4

.field static final blacklist TRANSACTION_importWrappedKey:I = 0x5

.field static final blacklist TRANSACTION_sendRootOfTrust:I = 0x11

.field static final blacklist TRANSACTION_setAdditionalAttestationInfo:I = 0x12

.field static final blacklist TRANSACTION_upgradeKey:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 108
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 109
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->markVintfStability()V

    .line 110
    sget-object v0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/security/keymint/IKeyMintDevice;
    .registers 3

    .line 118
    if-nez p0, :cond_4

    .line 119
    const/4 p0, 0x0

    return-object p0

    .line 121
    :cond_4
    sget-object v0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/security/keymint/IKeyMintDevice;

    if-eqz v1, :cond_13

    .line 123
    check-cast v0, Landroid/hardware/security/keymint/IKeyMintDevice;

    return-object v0

    .line 125
    :cond_13
    new-instance v0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 134
    sparse-switch p0, :sswitch_data_42

    .line 218
    const/4 p0, 0x0

    return-object p0

    .line 210
    :sswitch_5
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 214
    :sswitch_8
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 206
    :sswitch_b
    const-string p0, "setAdditionalAttestationInfo"

    return-object p0

    .line 202
    :sswitch_e
    const-string p0, "sendRootOfTrust"

    return-object p0

    .line 198
    :sswitch_11
    const-string p0, "getRootOfTrust"

    return-object p0

    .line 194
    :sswitch_14
    const-string p0, "getRootOfTrustChallenge"

    return-object p0

    .line 190
    :sswitch_17
    const-string p0, "getKeyCharacteristics"

    return-object p0

    .line 186
    :sswitch_1a
    const-string p0, "convertStorageKeyToEphemeral"

    return-object p0

    .line 182
    :sswitch_1d
    const-string p0, "earlyBootEnded"

    return-object p0

    .line 178
    :sswitch_20
    const-string p0, "deviceLocked"

    return-object p0

    .line 174
    :sswitch_23
    const-string p0, "begin"

    return-object p0

    .line 170
    :sswitch_26
    const-string p0, "destroyAttestationIds"

    return-object p0

    .line 166
    :sswitch_29
    const-string p0, "deleteAllKeys"

    return-object p0

    .line 162
    :sswitch_2c
    const-string p0, "deleteKey"

    return-object p0

    .line 158
    :sswitch_2f
    const-string p0, "upgradeKey"

    return-object p0

    .line 154
    :sswitch_32
    const-string p0, "importWrappedKey"

    return-object p0

    .line 150
    :sswitch_35
    const-string p0, "importKey"

    return-object p0

    .line 146
    :sswitch_38
    const-string p0, "generateKey"

    return-object p0

    .line 142
    :sswitch_3b
    const-string p0, "addRngEntropy"

    return-object p0

    .line 138
    :sswitch_3e
    const-string p0, "getHardwareInfo"

    return-object p0

    nop

    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_3e
        0x2 -> :sswitch_3b
        0x3 -> :sswitch_38
        0x4 -> :sswitch_35
        0x5 -> :sswitch_32
        0x6 -> :sswitch_2f
        0x7 -> :sswitch_2c
        0x8 -> :sswitch_29
        0x9 -> :sswitch_26
        0xa -> :sswitch_23
        0xb -> :sswitch_20
        0xc -> :sswitch_1d
        0xd -> :sswitch_1a
        0xe -> :sswitch_17
        0xf -> :sswitch_14
        0x10 -> :sswitch_11
        0x11 -> :sswitch_e
        0x12 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 129
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 904
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 225
    invoke-static {p1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    sget-object v3, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 230
    const v4, 0xffffff

    const/4 v9, 0x1

    if-lt p1, v9, :cond_d

    if-gt p1, v4, :cond_d

    .line 231
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    :cond_d
    const v5, 0x5f4e5446

    if-ne p1, v5, :cond_16

    .line 234
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    return v9

    .line 237
    :cond_16
    if-ne p1, v4, :cond_23

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    return v9

    .line 242
    :cond_23
    const v3, 0xfffffe

    if-ne p1, v3, :cond_33

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    return v9

    .line 247
    :cond_33
    const/16 v3, 0x10

    packed-switch p1, :pswitch_data_1c4

    .line 440
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 432
    :pswitch_3d
    sget-object v1, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/security/keymint/KeyParameter;

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {p0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->setAdditionalAttestationInfo([Landroid/hardware/security/keymint/KeyParameter;)V

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    goto/16 :goto_1c3

    .line 423
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->sendRootOfTrust([B)V

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    goto/16 :goto_1c3

    .line 413
    :pswitch_5f
    const-class v1, [B

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getRootOfTrust([B)[B

    move-result-object v0

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 418
    goto/16 :goto_1c3

    .line 405
    :pswitch_7a
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getRootOfTrustChallenge()[B

    move-result-object v0

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    filled-new-array {v3}, [I

    move-result-object v1

    invoke-virtual {p3, v0, v9, v1}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 408
    goto/16 :goto_1c3

    .line 392
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getKeyCharacteristics([B[B[B)[Landroid/hardware/security/keymint/KeyCharacteristics;

    move-result-object v0

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 401
    goto/16 :goto_1c3

    .line 382
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->convertStorageKeyToEphemeral([B)[B

    move-result-object v0

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 387
    goto/16 :goto_1c3

    .line 375
    :pswitch_b8
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->earlyBootEnded()V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    goto/16 :goto_1c3

    .line 365
    :pswitch_c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 367
    sget-object v3, Landroid/hardware/security/secureclock/TimeStampToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/security/secureclock/TimeStampToken;

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v1, v3}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->deviceLocked(ZLandroid/hardware/security/secureclock/TimeStampToken;)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    goto/16 :goto_1c3

    .line 349
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 353
    sget-object v4, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/security/keymint/KeyParameter;

    .line 355
    sget-object v5, Landroid/hardware/security/keymint/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/security/keymint/HardwareAuthToken;

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->begin(I[B[Landroid/hardware/security/keymint/KeyParameter;Landroid/hardware/security/keymint/HardwareAuthToken;)Landroid/hardware/security/keymint/BeginResult;

    move-result-object v0

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 360
    goto/16 :goto_1c3

    .line 342
    :pswitch_fe
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->destroyAttestationIds()V

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    goto/16 :goto_1c3

    .line 336
    :pswitch_106
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->deleteAllKeys()V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    goto/16 :goto_1c3

    .line 328
    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->deleteKey([B)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    goto/16 :goto_1c3

    .line 316
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 318
    sget-object v3, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/security/keymint/KeyParameter;

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, v1, v3}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->upgradeKey([B[Landroid/hardware/security/keymint/KeyParameter;)[B

    move-result-object v0

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 323
    goto/16 :goto_1c3

    .line 296
    :pswitch_138
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 300
    move-object v4, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 302
    sget-object v5, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/security/keymint/KeyParameter;

    .line 304
    move-object v2, v4

    move-object v4, v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->importWrappedKey([B[B[B[Landroid/hardware/security/keymint/KeyParameter;JJ)Landroid/hardware/security/keymint/KeyCreationResult;

    move-result-object v0

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 311
    goto :goto_1c3

    .line 280
    :pswitch_166
    sget-object v1, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/security/keymint/KeyParameter;

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 286
    sget-object v4, Landroid/hardware/security/keymint/AttestationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/security/keymint/AttestationKey;

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->importKey([Landroid/hardware/security/keymint/KeyParameter;I[BLandroid/hardware/security/keymint/AttestationKey;)Landroid/hardware/security/keymint/KeyCreationResult;

    move-result-object v0

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 291
    goto :goto_1c3

    .line 268
    :pswitch_18c
    sget-object v1, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/security/keymint/KeyParameter;

    .line 270
    sget-object v2, Landroid/hardware/security/keymint/AttestationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/security/keymint/AttestationKey;

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v1, v2}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->generateKey([Landroid/hardware/security/keymint/KeyParameter;Landroid/hardware/security/keymint/AttestationKey;)Landroid/hardware/security/keymint/KeyCreationResult;

    move-result-object v0

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 275
    goto :goto_1c3

    .line 259
    :pswitch_1aa
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->addRngEntropy([B)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto :goto_1c3

    .line 251
    :pswitch_1b8
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getHardwareInfo()Landroid/hardware/security/keymint/KeyMintHardwareInfo;

    move-result-object v0

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 254
    nop

    .line 443
    :goto_1c3
    return v9

    :pswitch_data_1c4
    .packed-switch 0x1
        :pswitch_1b8
        :pswitch_1aa
        :pswitch_18c
        :pswitch_166
        :pswitch_138
        :pswitch_11d
        :pswitch_10e
        :pswitch_106
        :pswitch_fe
        :pswitch_d7
        :pswitch_c0
        :pswitch_b8
        :pswitch_a5
        :pswitch_8a
        :pswitch_7a
        :pswitch_5f
        :pswitch_50
        :pswitch_3d
    .end packed-switch
.end method
