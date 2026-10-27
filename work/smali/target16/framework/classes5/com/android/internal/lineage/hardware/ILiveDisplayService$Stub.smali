.class public abstract Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;
.super Landroid/os/Binder;
.source "ILiveDisplayService.java"

# interfaces
.implements Lcom/android/internal/lineage/hardware/ILiveDisplayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/lineage/hardware/ILiveDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getColorAdjustment:I = 0x4

.field static final blacklist TRANSACTION_getColorTemperature:I = 0x10

.field static final blacklist TRANSACTION_getConfig:I = 0x1

.field static final blacklist TRANSACTION_getDayColorTemperature:I = 0xc

.field static final blacklist TRANSACTION_getDefaultPictureAdjustment:I = 0x14

.field static final blacklist TRANSACTION_getMode:I = 0x2

.field static final blacklist TRANSACTION_getNightColorTemperature:I = 0xe

.field static final blacklist TRANSACTION_getPictureAdjustment:I = 0x13

.field static final blacklist TRANSACTION_isAntiFlickerEnabled:I = 0x17

.field static final blacklist TRANSACTION_isAutoContrastEnabled:I = 0x6

.field static final blacklist TRANSACTION_isAutomaticOutdoorModeEnabled:I = 0x11

.field static final blacklist TRANSACTION_isCABCEnabled:I = 0x8

.field static final blacklist TRANSACTION_isColorEnhancementEnabled:I = 0xa

.field static final blacklist TRANSACTION_isNight:I = 0x16

.field static final blacklist TRANSACTION_setAntiFlickerEnabled:I = 0x18

.field static final blacklist TRANSACTION_setAutoContrastEnabled:I = 0x7

.field static final blacklist TRANSACTION_setAutomaticOutdoorModeEnabled:I = 0x12

.field static final blacklist TRANSACTION_setCABCEnabled:I = 0x9

.field static final blacklist TRANSACTION_setColorAdjustment:I = 0x5

.field static final blacklist TRANSACTION_setColorEnhancementEnabled:I = 0xb

.field static final blacklist TRANSACTION_setDayColorTemperature:I = 0xd

.field static final blacklist TRANSACTION_setMode:I = 0x3

.field static final blacklist TRANSACTION_setNightColorTemperature:I = 0xf

.field static final blacklist TRANSACTION_setPictureAdjustment:I = 0x15


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 123
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 124
    const-string v0, "com.android.internal.lineage.hardware.ILiveDisplayService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/lineage/hardware/ILiveDisplayService;
    .registers 3

    .line 132
    if-nez p0, :cond_4

    .line 133
    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_4
    const-string v0, "com.android.internal.lineage.hardware.ILiveDisplayService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    if-eqz v1, :cond_13

    .line 137
    check-cast v0, Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    return-object v0

    .line 139
    :cond_13
    new-instance v0, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 148
    packed-switch p0, :pswitch_data_58

    .line 248
    const/4 p0, 0x0

    return-object p0

    .line 244
    :pswitch_5
    const-string/jumbo p0, "setAntiFlickerEnabled"

    return-object p0

    .line 240
    :pswitch_9
    const-string p0, "isAntiFlickerEnabled"

    return-object p0

    .line 236
    :pswitch_c
    const-string p0, "isNight"

    return-object p0

    .line 232
    :pswitch_f
    const-string/jumbo p0, "setPictureAdjustment"

    return-object p0

    .line 228
    :pswitch_13
    const-string p0, "getDefaultPictureAdjustment"

    return-object p0

    .line 224
    :pswitch_16
    const-string p0, "getPictureAdjustment"

    return-object p0

    .line 220
    :pswitch_19
    const-string/jumbo p0, "setAutomaticOutdoorModeEnabled"

    return-object p0

    .line 216
    :pswitch_1d
    const-string p0, "isAutomaticOutdoorModeEnabled"

    return-object p0

    .line 212
    :pswitch_20
    const-string p0, "getColorTemperature"

    return-object p0

    .line 208
    :pswitch_23
    const-string/jumbo p0, "setNightColorTemperature"

    return-object p0

    .line 204
    :pswitch_27
    const-string p0, "getNightColorTemperature"

    return-object p0

    .line 200
    :pswitch_2a
    const-string/jumbo p0, "setDayColorTemperature"

    return-object p0

    .line 196
    :pswitch_2e
    const-string p0, "getDayColorTemperature"

    return-object p0

    .line 192
    :pswitch_31
    const-string/jumbo p0, "setColorEnhancementEnabled"

    return-object p0

    .line 188
    :pswitch_35
    const-string p0, "isColorEnhancementEnabled"

    return-object p0

    .line 184
    :pswitch_38
    const-string/jumbo p0, "setCABCEnabled"

    return-object p0

    .line 180
    :pswitch_3c
    const-string p0, "isCABCEnabled"

    return-object p0

    .line 176
    :pswitch_3f
    const-string/jumbo p0, "setAutoContrastEnabled"

    return-object p0

    .line 172
    :pswitch_43
    const-string p0, "isAutoContrastEnabled"

    return-object p0

    .line 168
    :pswitch_46
    const-string/jumbo p0, "setColorAdjustment"

    return-object p0

    .line 164
    :pswitch_4a
    const-string p0, "getColorAdjustment"

    return-object p0

    .line 160
    :pswitch_4d
    const-string/jumbo p0, "setMode"

    return-object p0

    .line 156
    :pswitch_51
    const-string p0, "getMode"

    return-object p0

    .line 152
    :pswitch_54
    const-string p0, "getConfig"

    return-object p0

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_43
        :pswitch_3f
        :pswitch_3c
        :pswitch_38
        :pswitch_35
        :pswitch_31
        :pswitch_2e
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 143
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 935
    const/16 v0, 0x17

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 255
    invoke-static {p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    nop

    .line 260
    const-string v0, "com.android.internal.lineage.hardware.ILiveDisplayService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 261
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 264
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    return v1

    .line 267
    :cond_17
    packed-switch p1, :pswitch_data_182

    .line 469
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 460
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->setAntiFlickerEnabled(Z)Z

    move-result p1

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 465
    goto/16 :goto_180

    .line 452
    :pswitch_32
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->isAntiFlickerEnabled()Z

    move-result p1

    .line 453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 455
    goto/16 :goto_180

    .line 445
    :pswitch_3e
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->isNight()Z

    move-result p1

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 448
    goto/16 :goto_180

    .line 436
    :pswitch_4a
    sget-object p1, Lcom/android/internal/lineage/hardware/HSIC;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/lineage/hardware/HSIC;

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->setPictureAdjustment(Lcom/android/internal/lineage/hardware/HSIC;)Z

    move-result p1

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 441
    goto/16 :goto_180

    .line 428
    :pswitch_61
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->getDefaultPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object p1

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 431
    goto/16 :goto_180

    .line 421
    :pswitch_6d
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->getPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object p1

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 424
    goto/16 :goto_180

    .line 412
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->setAutomaticOutdoorModeEnabled(Z)Z

    move-result p1

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 417
    goto/16 :goto_180

    .line 404
    :pswitch_8c
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->isAutomaticOutdoorModeEnabled()Z

    move-result p1

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 407
    goto/16 :goto_180

    .line 397
    :pswitch_98
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->getColorTemperature()I

    move-result p1

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    goto/16 :goto_180

    .line 388
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->setNightColorTemperature(I)Z

    move-result p1

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 393
    goto/16 :goto_180

    .line 380
    :pswitch_b7
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->getNightColorTemperature()I

    move-result p1

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    goto/16 :goto_180

    .line 371
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->setDayColorTemperature(I)Z

    move-result p1

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 376
    goto/16 :goto_180

    .line 363
    :pswitch_d6
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->getDayColorTemperature()I

    move-result p1

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    goto/16 :goto_180

    .line 354
    :pswitch_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->setColorEnhancementEnabled(Z)Z

    move-result p1

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 359
    goto/16 :goto_180

    .line 346
    :pswitch_f5
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->isColorEnhancementEnabled()Z

    move-result p1

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 349
    goto/16 :goto_180

    .line 337
    :pswitch_101
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->setCABCEnabled(Z)Z

    move-result p1

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 342
    goto :goto_180

    .line 329
    :pswitch_113
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->isCABCEnabled()Z

    move-result p1

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 332
    goto :goto_180

    .line 320
    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->setAutoContrastEnabled(Z)Z

    move-result p1

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 325
    goto :goto_180

    .line 312
    :pswitch_130
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->isAutoContrastEnabled()Z

    move-result p1

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 315
    goto :goto_180

    .line 303
    :pswitch_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->setColorAdjustment([F)Z

    move-result p1

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 308
    goto :goto_180

    .line 295
    :pswitch_14d
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->getColorAdjustment()[F

    move-result-object p1

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 298
    goto :goto_180

    .line 286
    :pswitch_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->setMode(I)Z

    move-result p1

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 291
    goto :goto_180

    .line 278
    :pswitch_16a
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->getMode()I

    move-result p1

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    goto :goto_180

    .line 271
    :pswitch_175
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->getConfig()Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    move-result-object p1

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 274
    nop

    .line 472
    :goto_180
    return v1

    nop

    :pswitch_data_182
    .packed-switch 0x1
        :pswitch_175
        :pswitch_16a
        :pswitch_158
        :pswitch_14d
        :pswitch_13b
        :pswitch_130
        :pswitch_11e
        :pswitch_113
        :pswitch_101
        :pswitch_f5
        :pswitch_e2
        :pswitch_d6
        :pswitch_c3
        :pswitch_b7
        :pswitch_a4
        :pswitch_98
        :pswitch_8c
        :pswitch_79
        :pswitch_6d
        :pswitch_61
        :pswitch_4a
        :pswitch_3e
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
