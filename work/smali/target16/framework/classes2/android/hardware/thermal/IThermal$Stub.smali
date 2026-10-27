.class public abstract Landroid/hardware/thermal/IThermal$Stub;
.super Landroid/os/Binder;
.source "IThermal.java"

# interfaces
.implements Landroid/hardware/thermal/IThermal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/thermal/IThermal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/thermal/IThermal$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_forecastSkinTemperature:I = 0xc

.field static final blacklist TRANSACTION_getCoolingDevices:I = 0x1

.field static final blacklist TRANSACTION_getCoolingDevicesWithType:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getTemperatureThresholds:I = 0x5

.field static final blacklist TRANSACTION_getTemperatureThresholdsWithType:I = 0x6

.field static final blacklist TRANSACTION_getTemperatures:I = 0x3

.field static final blacklist TRANSACTION_getTemperaturesWithType:I = 0x4

.field static final blacklist TRANSACTION_registerCoolingDeviceChangedCallbackWithType:I = 0xa

.field static final blacklist TRANSACTION_registerThermalChangedCallback:I = 0x7

.field static final blacklist TRANSACTION_registerThermalChangedCallbackWithType:I = 0x8

.field static final blacklist TRANSACTION_unregisterCoolingDeviceChangedCallback:I = 0xb

.field static final blacklist TRANSACTION_unregisterThermalChangedCallback:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 87
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->markVintfStability()V

    .line 88
    sget-object v0, Landroid/hardware/thermal/IThermal$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/thermal/IThermal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermal;
    .registers 3

    .line 96
    if-nez p0, :cond_4

    .line 97
    const/4 p0, 0x0

    return-object p0

    .line 99
    :cond_4
    sget-object v0, Landroid/hardware/thermal/IThermal$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/thermal/IThermal;

    if-eqz v1, :cond_13

    .line 101
    check-cast v0, Landroid/hardware/thermal/IThermal;

    return-object v0

    .line 103
    :cond_13
    new-instance v0, Landroid/hardware/thermal/IThermal$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/thermal/IThermal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 112
    sparse-switch p0, :sswitch_data_30

    .line 172
    const/4 p0, 0x0

    return-object p0

    .line 164
    :sswitch_5
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 168
    :sswitch_8
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 160
    :sswitch_b
    const-string p0, "forecastSkinTemperature"

    return-object p0

    .line 156
    :sswitch_e
    const-string p0, "unregisterCoolingDeviceChangedCallback"

    return-object p0

    .line 152
    :sswitch_11
    const-string p0, "registerCoolingDeviceChangedCallbackWithType"

    return-object p0

    .line 148
    :sswitch_14
    const-string p0, "unregisterThermalChangedCallback"

    return-object p0

    .line 144
    :sswitch_17
    const-string p0, "registerThermalChangedCallbackWithType"

    return-object p0

    .line 140
    :sswitch_1a
    const-string p0, "registerThermalChangedCallback"

    return-object p0

    .line 136
    :sswitch_1d
    const-string p0, "getTemperatureThresholdsWithType"

    return-object p0

    .line 132
    :sswitch_20
    const-string p0, "getTemperatureThresholds"

    return-object p0

    .line 128
    :sswitch_23
    const-string p0, "getTemperaturesWithType"

    return-object p0

    .line 124
    :sswitch_26
    const-string p0, "getTemperatures"

    return-object p0

    .line 120
    :sswitch_29
    const-string p0, "getCoolingDevicesWithType"

    return-object p0

    .line 116
    :sswitch_2c
    const-string p0, "getCoolingDevices"

    return-object p0

    nop

    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_2c
        0x2 -> :sswitch_29
        0x3 -> :sswitch_26
        0x4 -> :sswitch_23
        0x5 -> :sswitch_20
        0x6 -> :sswitch_1d
        0x7 -> :sswitch_1a
        0x8 -> :sswitch_17
        0x9 -> :sswitch_14
        0xa -> :sswitch_11
        0xb -> :sswitch_e
        0xc -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 107
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 625
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 179
    invoke-static {p1}, Landroid/hardware/thermal/IThermal$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    sget-object v0, Landroid/hardware/thermal/IThermal$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 184
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 185
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 188
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    return v2

    .line 191
    :cond_16
    if-ne p1, v1, :cond_23

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    return v2

    .line 196
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    return v2

    .line 201
    :cond_33
    packed-switch p1, :pswitch_data_10c

    .line 315
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 306
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, p1}, Landroid/hardware/thermal/IThermal$Stub;->forecastSkinTemperature(I)F

    move-result p1

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 311
    goto/16 :goto_10a

    .line 297
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/thermal/ICoolingDeviceChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/ICoolingDeviceChangedCallback;

    move-result-object p1

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, p1}, Landroid/hardware/thermal/IThermal$Stub;->unregisterCoolingDeviceChangedCallback(Landroid/hardware/thermal/ICoolingDeviceChangedCallback;)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    goto/16 :goto_10a

    .line 286
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/thermal/ICoolingDeviceChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/ICoolingDeviceChangedCallback;

    move-result-object p1

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, p1, p4}, Landroid/hardware/thermal/IThermal$Stub;->registerCoolingDeviceChangedCallbackWithType(Landroid/hardware/thermal/ICoolingDeviceChangedCallback;I)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    goto/16 :goto_10a

    .line 277
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermalChangedCallback;

    move-result-object p1

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, p1}, Landroid/hardware/thermal/IThermal$Stub;->unregisterThermalChangedCallback(Landroid/hardware/thermal/IThermalChangedCallback;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    goto/16 :goto_10a

    .line 266
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermalChangedCallback;

    move-result-object p1

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, p1, p4}, Landroid/hardware/thermal/IThermal$Stub;->registerThermalChangedCallbackWithType(Landroid/hardware/thermal/IThermalChangedCallback;I)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto :goto_10a

    .line 257
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermalChangedCallback;

    move-result-object p1

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, p1}, Landroid/hardware/thermal/IThermal$Stub;->registerThermalChangedCallback(Landroid/hardware/thermal/IThermalChangedCallback;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto :goto_10a

    .line 247
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, p1}, Landroid/hardware/thermal/IThermal$Stub;->getTemperatureThresholdsWithType(I)[Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object p1

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 252
    goto :goto_10a

    .line 239
    :pswitch_c5
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->getTemperatureThresholds()[Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object p1

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 242
    goto :goto_10a

    .line 230
    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, p1}, Landroid/hardware/thermal/IThermal$Stub;->getTemperaturesWithType(I)[Landroid/hardware/thermal/Temperature;

    move-result-object p1

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 235
    goto :goto_10a

    .line 222
    :pswitch_e2
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->getTemperatures()[Landroid/hardware/thermal/Temperature;

    move-result-object p1

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 225
    goto :goto_10a

    .line 213
    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, p1}, Landroid/hardware/thermal/IThermal$Stub;->getCoolingDevicesWithType(I)[Landroid/hardware/thermal/CoolingDevice;

    move-result-object p1

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 218
    goto :goto_10a

    .line 205
    :pswitch_ff
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->getCoolingDevices()[Landroid/hardware/thermal/CoolingDevice;

    move-result-object p1

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 208
    nop

    .line 318
    :goto_10a
    return v2

    nop

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_ff
        :pswitch_ed
        :pswitch_e2
        :pswitch_d0
        :pswitch_c5
        :pswitch_b3
        :pswitch_a1
        :pswitch_8b
        :pswitch_78
        :pswitch_61
        :pswitch_4e
        :pswitch_3b
    .end packed-switch
.end method
