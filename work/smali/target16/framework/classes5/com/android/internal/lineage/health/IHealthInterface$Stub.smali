.class public abstract Lcom/android/internal/lineage/health/IHealthInterface$Stub;
.super Landroid/os/Binder;
.source "IHealthInterface.java"

# interfaces
.implements Lcom/android/internal/lineage/health/IHealthInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/lineage/health/IHealthInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/lineage/health/IHealthInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_allowFineGrainedSettings:I = 0xd

.field static final blacklist TRANSACTION_getChargingControlEnabled:I = 0x2

.field static final blacklist TRANSACTION_getChargingControlLimit:I = 0xa

.field static final blacklist TRANSACTION_getChargingControlMode:I = 0x4

.field static final blacklist TRANSACTION_getChargingControlStartTime:I = 0x6

.field static final blacklist TRANSACTION_getChargingControlTargetTime:I = 0x8

.field static final blacklist TRANSACTION_getFastChargeMode:I = 0x10

.field static final blacklist TRANSACTION_getSupportedFastChargeModes:I = 0xf

.field static final blacklist TRANSACTION_isChargingControlSupported:I = 0x1

.field static final blacklist TRANSACTION_isFastChargeSupported:I = 0xe

.field static final blacklist TRANSACTION_resetChargingControl:I = 0xc

.field static final blacklist TRANSACTION_setChargingControlEnabled:I = 0x3

.field static final blacklist TRANSACTION_setChargingControlLimit:I = 0xb

.field static final blacklist TRANSACTION_setChargingControlMode:I = 0x5

.field static final blacklist TRANSACTION_setChargingControlStartTime:I = 0x7

.field static final blacklist TRANSACTION_setChargingControlTargetTime:I = 0x9

.field static final blacklist TRANSACTION_setFastChargeMode:I = 0x11


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 96
    const-string v0, "com.android.internal.lineage.health.IHealthInterface"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/lineage/health/IHealthInterface;
    .registers 3

    .line 104
    if-nez p0, :cond_4

    .line 105
    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_4
    const-string v0, "com.android.internal.lineage.health.IHealthInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/lineage/health/IHealthInterface;

    if-eqz v1, :cond_13

    .line 109
    check-cast v0, Lcom/android/internal/lineage/health/IHealthInterface;

    return-object v0

    .line 111
    :cond_13
    new-instance v0, Lcom/android/internal/lineage/health/IHealthInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/lineage/health/IHealthInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 120
    packed-switch p0, :pswitch_data_40

    .line 192
    const/4 p0, 0x0

    return-object p0

    .line 188
    :pswitch_5
    const-string/jumbo p0, "setFastChargeMode"

    return-object p0

    .line 184
    :pswitch_9
    const-string p0, "getFastChargeMode"

    return-object p0

    .line 180
    :pswitch_c
    const-string p0, "getSupportedFastChargeModes"

    return-object p0

    .line 176
    :pswitch_f
    const-string p0, "isFastChargeSupported"

    return-object p0

    .line 172
    :pswitch_12
    const-string p0, "allowFineGrainedSettings"

    return-object p0

    .line 168
    :pswitch_15
    const-string/jumbo p0, "resetChargingControl"

    return-object p0

    .line 164
    :pswitch_19
    const-string/jumbo p0, "setChargingControlLimit"

    return-object p0

    .line 160
    :pswitch_1d
    const-string p0, "getChargingControlLimit"

    return-object p0

    .line 156
    :pswitch_20
    const-string/jumbo p0, "setChargingControlTargetTime"

    return-object p0

    .line 152
    :pswitch_24
    const-string p0, "getChargingControlTargetTime"

    return-object p0

    .line 148
    :pswitch_27
    const-string/jumbo p0, "setChargingControlStartTime"

    return-object p0

    .line 144
    :pswitch_2b
    const-string p0, "getChargingControlStartTime"

    return-object p0

    .line 140
    :pswitch_2e
    const-string/jumbo p0, "setChargingControlMode"

    return-object p0

    .line 136
    :pswitch_32
    const-string p0, "getChargingControlMode"

    return-object p0

    .line 132
    :pswitch_35
    const-string/jumbo p0, "setChargingControlEnabled"

    return-object p0

    .line 128
    :pswitch_39
    const-string p0, "getChargingControlEnabled"

    return-object p0

    .line 124
    :pswitch_3c
    const-string p0, "isChargingControlSupported"

    return-object p0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_39
        :pswitch_35
        :pswitch_32
        :pswitch_2e
        :pswitch_2b
        :pswitch_27
        :pswitch_24
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 115
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 688
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 199
    invoke-static {p1}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 203
    nop

    .line 204
    const-string v0, "com.android.internal.lineage.health.IHealthInterface"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 205
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 208
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    return v1

    .line 211
    :cond_17
    packed-switch p1, :pswitch_data_10e

    .line 352
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 343
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->setFastChargeMode(I)Z

    move-result p1

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 348
    goto/16 :goto_10c

    .line 335
    :pswitch_32
    invoke-virtual {p0}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->getFastChargeMode()I

    move-result p1

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    goto/16 :goto_10c

    .line 328
    :pswitch_3e
    invoke-virtual {p0}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->getSupportedFastChargeModes()[I

    move-result-object p1

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 331
    goto/16 :goto_10c

    .line 321
    :pswitch_4a
    invoke-virtual {p0}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->isFastChargeSupported()Z

    move-result p1

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 324
    goto/16 :goto_10c

    .line 314
    :pswitch_56
    invoke-virtual {p0}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->allowFineGrainedSettings()Z

    move-result p1

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 317
    goto/16 :goto_10c

    .line 307
    :pswitch_62
    invoke-virtual {p0}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->resetChargingControl()Z

    move-result p1

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 310
    goto/16 :goto_10c

    .line 298
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->setChargingControlLimit(I)Z

    move-result p1

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 303
    goto/16 :goto_10c

    .line 290
    :pswitch_81
    invoke-virtual {p0}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->getChargingControlLimit()I

    move-result p1

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    goto/16 :goto_10c

    .line 281
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->setChargingControlTargetTime(I)Z

    move-result p1

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 286
    goto :goto_10c

    .line 273
    :pswitch_9f
    invoke-virtual {p0}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->getChargingControlTargetTime()I

    move-result p1

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    goto :goto_10c

    .line 264
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->setChargingControlStartTime(I)Z

    move-result p1

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 269
    goto :goto_10c

    .line 256
    :pswitch_bc
    invoke-virtual {p0}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->getChargingControlStartTime()I

    move-result p1

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    goto :goto_10c

    .line 247
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->setChargingControlMode(I)Z

    move-result p1

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 252
    goto :goto_10c

    .line 239
    :pswitch_d9
    invoke-virtual {p0}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->getChargingControlMode()I

    move-result p1

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    goto :goto_10c

    .line 230
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->setChargingControlEnabled(Z)Z

    move-result p1

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 235
    goto :goto_10c

    .line 222
    :pswitch_f6
    invoke-virtual {p0}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->getChargingControlEnabled()Z

    move-result p1

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 225
    goto :goto_10c

    .line 215
    :pswitch_101
    invoke-virtual {p0}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->isChargingControlSupported()Z

    move-result p1

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 218
    nop

    .line 355
    :goto_10c
    return v1

    nop

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_101
        :pswitch_f6
        :pswitch_e4
        :pswitch_d9
        :pswitch_c7
        :pswitch_bc
        :pswitch_aa
        :pswitch_9f
        :pswitch_8d
        :pswitch_81
        :pswitch_6e
        :pswitch_62
        :pswitch_56
        :pswitch_4a
        :pswitch_3e
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
