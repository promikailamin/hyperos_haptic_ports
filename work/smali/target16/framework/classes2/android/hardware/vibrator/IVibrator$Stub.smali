.class public abstract Landroid/hardware/vibrator/IVibrator$Stub;
.super Landroid/os/Binder;
.source "IVibrator.java"

# interfaces
.implements Landroid/hardware/vibrator/IVibrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/vibrator/IVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_alwaysOnDisable:I = 0xf

.field static final blacklist TRANSACTION_alwaysOnEnable:I = 0xe

.field static final blacklist TRANSACTION_compose:I = 0xc

.field static final blacklist TRANSACTION_composePwle:I = 0x18

.field static final blacklist TRANSACTION_composePwleV2:I = 0x1e

.field static final blacklist TRANSACTION_getBandwidthAmplitudeMap:I = 0x14

.field static final blacklist TRANSACTION_getCapabilities:I = 0x1

.field static final blacklist TRANSACTION_getCompositionDelayMax:I = 0x8

.field static final blacklist TRANSACTION_getCompositionSizeMax:I = 0x9

.field static final blacklist TRANSACTION_getFrequencyMinimum:I = 0x13

.field static final blacklist TRANSACTION_getFrequencyResolution:I = 0x12

.field static final blacklist TRANSACTION_getFrequencyToOutputAccelerationMap:I = 0x1a

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getPrimitiveDuration:I = 0xb

.field static final blacklist TRANSACTION_getPwleCompositionSizeMax:I = 0x16

.field static final blacklist TRANSACTION_getPwlePrimitiveDurationMax:I = 0x15

.field static final blacklist TRANSACTION_getPwleV2CompositionSizeMax:I = 0x1c

.field static final blacklist TRANSACTION_getPwleV2PrimitiveDurationMaxMillis:I = 0x1b

.field static final blacklist TRANSACTION_getPwleV2PrimitiveDurationMinMillis:I = 0x1d

.field static final blacklist TRANSACTION_getQFactor:I = 0x11

.field static final blacklist TRANSACTION_getResonantFrequency:I = 0x10

.field static final blacklist TRANSACTION_getSupportedAlwaysOnEffects:I = 0xd

.field static final blacklist TRANSACTION_getSupportedBraking:I = 0x17

.field static final blacklist TRANSACTION_getSupportedEffects:I = 0x5

.field static final blacklist TRANSACTION_getSupportedPrimitives:I = 0xa

.field static final blacklist TRANSACTION_off:I = 0x2

.field static final blacklist TRANSACTION_on:I = 0x3

.field static final blacklist TRANSACTION_perform:I = 0x4

.field static final blacklist TRANSACTION_performVendorEffect:I = 0x19

.field static final blacklist TRANSACTION_setAmplitude:I = 0x6

.field static final blacklist TRANSACTION_setExternalControl:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 159
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 160
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->markVintfStability()V

    .line 161
    sget-object v0, Landroid/hardware/vibrator/IVibrator$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/vibrator/IVibrator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibrator;
    .registers 3

    .line 169
    if-nez p0, :cond_4

    .line 170
    const/4 p0, 0x0

    return-object p0

    .line 172
    :cond_4
    sget-object v0, Landroid/hardware/vibrator/IVibrator$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/vibrator/IVibrator;

    if-eqz v1, :cond_13

    .line 174
    check-cast v0, Landroid/hardware/vibrator/IVibrator;

    return-object v0

    .line 176
    :cond_13
    new-instance v0, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 180
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    sget-object v0, Landroid/hardware/vibrator/IVibrator$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 185
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 186
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 189
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    return v2

    .line 192
    :cond_16
    if-ne p1, v1, :cond_23

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    return v2

    .line 197
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    return v2

    .line 202
    :cond_33
    packed-switch p1, :pswitch_data_20e

    .line 457
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 447
    :pswitch_3b
    sget-object p1, Landroid/hardware/vibrator/CompositePwleV2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/vibrator/CompositePwleV2;

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object p4

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, p1, p4}, Landroid/hardware/vibrator/IVibrator$Stub;->composePwleV2(Landroid/hardware/vibrator/CompositePwleV2;Landroid/hardware/vibrator/IVibratorCallback;)V

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    goto/16 :goto_20c

    .line 439
    :pswitch_56
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getPwleV2PrimitiveDurationMinMillis()I

    move-result p1

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    goto/16 :goto_20c

    .line 432
    :pswitch_62
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getPwleV2CompositionSizeMax()I

    move-result p1

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    goto/16 :goto_20c

    .line 425
    :pswitch_6e
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getPwleV2PrimitiveDurationMaxMillis()I

    move-result p1

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    goto/16 :goto_20c

    .line 418
    :pswitch_7a
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getFrequencyToOutputAccelerationMap()Ljava/util/List;

    move-result-object p1

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 421
    goto/16 :goto_20c

    .line 408
    :pswitch_86
    sget-object p1, Landroid/hardware/vibrator/VendorEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/vibrator/VendorEffect;

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object p4

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, p1, p4}, Landroid/hardware/vibrator/IVibrator$Stub;->performVendorEffect(Landroid/hardware/vibrator/VendorEffect;Landroid/hardware/vibrator/IVibratorCallback;)V

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    goto/16 :goto_20c

    .line 397
    :pswitch_a1
    sget-object p1, Landroid/hardware/vibrator/PrimitivePwle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/vibrator/PrimitivePwle;

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object p4

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {p0, p1, p4}, Landroid/hardware/vibrator/IVibrator$Stub;->composePwle([Landroid/hardware/vibrator/PrimitivePwle;Landroid/hardware/vibrator/IVibratorCallback;)V

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    goto/16 :goto_20c

    .line 389
    :pswitch_bc
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getSupportedBraking()[I

    move-result-object p1

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 392
    goto/16 :goto_20c

    .line 382
    :pswitch_c8
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getPwleCompositionSizeMax()I

    move-result p1

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    goto/16 :goto_20c

    .line 375
    :pswitch_d4
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getPwlePrimitiveDurationMax()I

    move-result p1

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    goto/16 :goto_20c

    .line 368
    :pswitch_e0
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getBandwidthAmplitudeMap()[F

    move-result-object p1

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 371
    goto/16 :goto_20c

    .line 361
    :pswitch_ec
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getFrequencyMinimum()F

    move-result p1

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 364
    goto/16 :goto_20c

    .line 354
    :pswitch_f8
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getFrequencyResolution()F

    move-result p1

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 357
    goto/16 :goto_20c

    .line 347
    :pswitch_104
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getQFactor()F

    move-result p1

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 350
    goto/16 :goto_20c

    .line 340
    :pswitch_110
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getResonantFrequency()F

    move-result p1

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 343
    goto/16 :goto_20c

    .line 332
    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, p1}, Landroid/hardware/vibrator/IVibrator$Stub;->alwaysOnDisable(I)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    goto/16 :goto_20c

    .line 319
    :pswitch_12b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/vibrator/IVibrator$Stub;->alwaysOnEnable(IIB)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    goto/16 :goto_20c

    .line 311
    :pswitch_142
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getSupportedAlwaysOnEffects()[I

    move-result-object p1

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 314
    goto/16 :goto_20c

    .line 301
    :pswitch_14e
    sget-object p1, Landroid/hardware/vibrator/CompositeEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/vibrator/CompositeEffect;

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object p4

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, p1, p4}, Landroid/hardware/vibrator/IVibrator$Stub;->compose([Landroid/hardware/vibrator/CompositeEffect;Landroid/hardware/vibrator/IVibratorCallback;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    goto/16 :goto_20c

    .line 291
    :pswitch_169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, p1}, Landroid/hardware/vibrator/IVibrator$Stub;->getPrimitiveDuration(I)I

    move-result p1

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    goto/16 :goto_20c

    .line 283
    :pswitch_17c
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getSupportedPrimitives()[I

    move-result-object p1

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 286
    goto/16 :goto_20c

    .line 276
    :pswitch_188
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getCompositionSizeMax()I

    move-result p1

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    goto/16 :goto_20c

    .line 269
    :pswitch_194
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getCompositionDelayMax()I

    move-result p1

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    goto :goto_20c

    .line 261
    :pswitch_19f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, p1}, Landroid/hardware/vibrator/IVibrator$Stub;->setExternalControl(Z)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto :goto_20c

    .line 252
    :pswitch_1ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, p1}, Landroid/hardware/vibrator/IVibrator$Stub;->setAmplitude(F)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto :goto_20c

    .line 244
    :pswitch_1bb
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getSupportedEffects()[I

    move-result-object p1

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 247
    goto :goto_20c

    .line 231
    :pswitch_1c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v0

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/vibrator/IVibrator$Stub;->perform(IBLandroid/hardware/vibrator/IVibratorCallback;)I

    move-result p1

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    goto :goto_20c

    .line 220
    :pswitch_1e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object p4

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, p1, p4}, Landroid/hardware/vibrator/IVibrator$Stub;->on(ILandroid/hardware/vibrator/IVibratorCallback;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    goto :goto_20c

    .line 213
    :pswitch_1fa
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->off()V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    goto :goto_20c

    .line 206
    :pswitch_201
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getCapabilities()I

    move-result p1

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    nop

    .line 460
    :goto_20c
    return v2

    nop

    :pswitch_data_20e
    .packed-switch 0x1
        :pswitch_201
        :pswitch_1fa
        :pswitch_1e4
        :pswitch_1c6
        :pswitch_1bb
        :pswitch_1ad
        :pswitch_19f
        :pswitch_194
        :pswitch_188
        :pswitch_17c
        :pswitch_169
        :pswitch_14e
        :pswitch_142
        :pswitch_12b
        :pswitch_11c
        :pswitch_110
        :pswitch_104
        :pswitch_f8
        :pswitch_ec
        :pswitch_e0
        :pswitch_d4
        :pswitch_c8
        :pswitch_bc
        :pswitch_a1
        :pswitch_86
        :pswitch_7a
        :pswitch_6e
        :pswitch_62
        :pswitch_56
        :pswitch_3b
    .end packed-switch
.end method
