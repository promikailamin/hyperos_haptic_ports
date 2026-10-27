.class public abstract Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;
.super Landroid/os/Binder;
.source "ILineageHardwareService.java"

# interfaces
.implements Lcom/android/internal/lineage/hardware/ILineageHardwareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/lineage/hardware/ILineageHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_get:I = 0x2

.field static final blacklist TRANSACTION_getColorBalance:I = 0xe

.field static final blacklist TRANSACTION_getColorBalanceMax:I = 0xd

.field static final blacklist TRANSACTION_getColorBalanceMin:I = 0xc

.field static final blacklist TRANSACTION_getCurrentDisplayMode:I = 0x8

.field static final blacklist TRANSACTION_getDefaultDisplayMode:I = 0x9

.field static final blacklist TRANSACTION_getDefaultPictureAdjustment:I = 0x11

.field static final blacklist TRANSACTION_getDisplayColorCalibration:I = 0x4

.field static final blacklist TRANSACTION_getDisplayModes:I = 0x7

.field static final blacklist TRANSACTION_getPictureAdjustment:I = 0x10

.field static final blacklist TRANSACTION_getPictureAdjustmentRanges:I = 0x13

.field static final blacklist TRANSACTION_getSupportedFeatures:I = 0x1

.field static final blacklist TRANSACTION_isSunlightEnhancementSelfManaged:I = 0xb

.field static final blacklist TRANSACTION_requireAdaptiveBacklightForSunlightEnhancement:I = 0x6

.field static final blacklist TRANSACTION_set:I = 0x3

.field static final blacklist TRANSACTION_setColorBalance:I = 0xf

.field static final blacklist TRANSACTION_setDisplayColorCalibration:I = 0x5

.field static final blacklist TRANSACTION_setDisplayMode:I = 0xa

.field static final blacklist TRANSACTION_setPictureAdjustment:I = 0x12


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 103
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 104
    const-string v0, "com.android.internal.lineage.hardware.ILineageHardwareService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/lineage/hardware/ILineageHardwareService;
    .registers 3

    .line 112
    if-nez p0, :cond_4

    .line 113
    const/4 p0, 0x0

    return-object p0

    .line 115
    :cond_4
    const-string v0, "com.android.internal.lineage.hardware.ILineageHardwareService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    if-eqz v1, :cond_13

    .line 117
    check-cast v0, Lcom/android/internal/lineage/hardware/ILineageHardwareService;

    return-object v0

    .line 119
    :cond_13
    new-instance v0, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 128
    packed-switch p0, :pswitch_data_44

    .line 208
    const/4 p0, 0x0

    return-object p0

    .line 204
    :pswitch_5
    const-string p0, "getPictureAdjustmentRanges"

    return-object p0

    .line 200
    :pswitch_8
    const-string/jumbo p0, "setPictureAdjustment"

    return-object p0

    .line 196
    :pswitch_c
    const-string p0, "getDefaultPictureAdjustment"

    return-object p0

    .line 192
    :pswitch_f
    const-string p0, "getPictureAdjustment"

    return-object p0

    .line 188
    :pswitch_12
    const-string/jumbo p0, "setColorBalance"

    return-object p0

    .line 184
    :pswitch_16
    const-string p0, "getColorBalance"

    return-object p0

    .line 180
    :pswitch_19
    const-string p0, "getColorBalanceMax"

    return-object p0

    .line 176
    :pswitch_1c
    const-string p0, "getColorBalanceMin"

    return-object p0

    .line 172
    :pswitch_1f
    const-string p0, "isSunlightEnhancementSelfManaged"

    return-object p0

    .line 168
    :pswitch_22
    const-string/jumbo p0, "setDisplayMode"

    return-object p0

    .line 164
    :pswitch_26
    const-string p0, "getDefaultDisplayMode"

    return-object p0

    .line 160
    :pswitch_29
    const-string p0, "getCurrentDisplayMode"

    return-object p0

    .line 156
    :pswitch_2c
    const-string p0, "getDisplayModes"

    return-object p0

    .line 152
    :pswitch_2f
    const-string/jumbo p0, "requireAdaptiveBacklightForSunlightEnhancement"

    return-object p0

    .line 148
    :pswitch_33
    const-string/jumbo p0, "setDisplayColorCalibration"

    return-object p0

    .line 144
    :pswitch_37
    const-string p0, "getDisplayColorCalibration"

    return-object p0

    .line 140
    :pswitch_3a
    const-string/jumbo p0, "set"

    return-object p0

    .line 136
    :pswitch_3e
    const-string p0, "get"

    return-object p0

    .line 132
    :pswitch_41
    const-string p0, "getSupportedFeatures"

    return-object p0

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3e
        :pswitch_3a
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 123
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 760
    const/16 v0, 0x12

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 215
    invoke-static {p1}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 219
    nop

    .line 220
    const-string v0, "com.android.internal.lineage.hardware.ILineageHardwareService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 221
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 224
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    return v1

    .line 227
    :cond_17
    packed-switch p1, :pswitch_data_136

    .line 386
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 379
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->getPictureAdjustmentRanges()[F

    move-result-object p1

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 382
    goto/16 :goto_135

    .line 370
    :pswitch_2b
    sget-object p1, Lcom/android/internal/lineage/hardware/HSIC;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/lineage/hardware/HSIC;

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->setPictureAdjustment(Lcom/android/internal/lineage/hardware/HSIC;)Z

    move-result p1

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 375
    goto/16 :goto_135

    .line 362
    :pswitch_42
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->getDefaultPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object p1

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 365
    goto/16 :goto_135

    .line 355
    :pswitch_4e
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->getPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object p1

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 358
    goto/16 :goto_135

    .line 346
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->setColorBalance(I)Z

    move-result p1

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 351
    goto/16 :goto_135

    .line 338
    :pswitch_6d
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->getColorBalance()I

    move-result p1

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    goto/16 :goto_135

    .line 331
    :pswitch_79
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->getColorBalanceMax()I

    move-result p1

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    goto/16 :goto_135

    .line 324
    :pswitch_85
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->getColorBalanceMin()I

    move-result p1

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    goto/16 :goto_135

    .line 317
    :pswitch_91
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->isSunlightEnhancementSelfManaged()Z

    move-result p1

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 320
    goto/16 :goto_135

    .line 306
    :pswitch_9d
    sget-object p1, Lcom/android/internal/lineage/hardware/DisplayMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/lineage/hardware/DisplayMode;

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->setDisplayMode(Lcom/android/internal/lineage/hardware/DisplayMode;Z)Z

    move-result p1

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 313
    goto/16 :goto_135

    .line 298
    :pswitch_b8
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->getDefaultDisplayMode()Lcom/android/internal/lineage/hardware/DisplayMode;

    move-result-object p1

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 301
    goto/16 :goto_135

    .line 291
    :pswitch_c4
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->getCurrentDisplayMode()Lcom/android/internal/lineage/hardware/DisplayMode;

    move-result-object p1

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 294
    goto :goto_135

    .line 284
    :pswitch_cf
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->getDisplayModes()[Lcom/android/internal/lineage/hardware/DisplayMode;

    move-result-object p1

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 287
    goto :goto_135

    .line 277
    :pswitch_da
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->requireAdaptiveBacklightForSunlightEnhancement()Z

    move-result p1

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 280
    goto :goto_135

    .line 268
    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->setDisplayColorCalibration([I)Z

    move-result p1

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 273
    goto :goto_135

    .line 260
    :pswitch_f7
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->getDisplayColorCalibration()[I

    move-result-object p1

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 263
    goto :goto_135

    .line 249
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->set(IZ)Z

    move-result p1

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 256
    goto :goto_135

    .line 239
    :pswitch_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->get(I)Z

    move-result p1

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 244
    goto :goto_135

    .line 231
    :pswitch_12a
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;->getSupportedFeatures()I

    move-result p1

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    nop

    .line 389
    :goto_135
    return v1

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_12a
        :pswitch_118
        :pswitch_102
        :pswitch_f7
        :pswitch_e5
        :pswitch_da
        :pswitch_cf
        :pswitch_c4
        :pswitch_b8
        :pswitch_9d
        :pswitch_91
        :pswitch_85
        :pswitch_79
        :pswitch_6d
        :pswitch_5a
        :pswitch_4e
        :pswitch_42
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
