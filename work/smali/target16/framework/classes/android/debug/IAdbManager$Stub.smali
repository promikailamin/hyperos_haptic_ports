.class public abstract Landroid/debug/IAdbManager$Stub;
.super Landroid/os/Binder;
.source "IAdbManager.java"

# interfaces
.implements Landroid/debug/IAdbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/debug/IAdbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/debug/IAdbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_allowDebugging:I = 0x1

.field static final blacklist TRANSACTION_allowWirelessDebugging:I = 0x4

.field static final blacklist TRANSACTION_clearDebuggingKeys:I = 0x3

.field static final blacklist TRANSACTION_denyDebugging:I = 0x2

.field static final blacklist TRANSACTION_denyWirelessDebugging:I = 0x5

.field static final blacklist TRANSACTION_disablePairing:I = 0xb

.field static final blacklist TRANSACTION_enablePairingByPairingCode:I = 0x8

.field static final blacklist TRANSACTION_enablePairingByQrCode:I = 0x9

.field static final blacklist TRANSACTION_getAdbWirelessPort:I = 0xa

.field static final blacklist TRANSACTION_getPairedDevices:I = 0x6

.field static final blacklist TRANSACTION_isAdbWifiQrSupported:I = 0xd

.field static final blacklist TRANSACTION_isAdbWifiSupported:I = 0xc

.field static final blacklist TRANSACTION_registerCallback:I = 0xe

.field static final blacklist TRANSACTION_unpairDevice:I = 0x7

.field static final blacklist TRANSACTION_unregisterCallback:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 132
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 133
    const-string v0, "android.debug.IAdbManager"

    invoke-virtual {p0, p0, v0}, Landroid/debug/IAdbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;
    .registers 3

    .line 141
    if-nez p0, :cond_4

    .line 142
    const/4 p0, 0x0

    return-object p0

    .line 144
    :cond_4
    const-string v0, "android.debug.IAdbManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/debug/IAdbManager;

    if-eqz v1, :cond_13

    .line 146
    check-cast v0, Landroid/debug/IAdbManager;

    return-object v0

    .line 148
    :cond_13
    new-instance v0, Landroid/debug/IAdbManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/debug/IAdbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 157
    packed-switch p0, :pswitch_data_36

    .line 221
    const/4 p0, 0x0

    return-object p0

    .line 217
    :pswitch_5
    const-string/jumbo p0, "unregisterCallback"

    return-object p0

    .line 213
    :pswitch_9
    const-string/jumbo p0, "registerCallback"

    return-object p0

    .line 209
    :pswitch_d
    const-string p0, "isAdbWifiQrSupported"

    return-object p0

    .line 205
    :pswitch_10
    const-string p0, "isAdbWifiSupported"

    return-object p0

    .line 201
    :pswitch_13
    const-string p0, "disablePairing"

    return-object p0

    .line 197
    :pswitch_16
    const-string p0, "getAdbWirelessPort"

    return-object p0

    .line 193
    :pswitch_19
    const-string p0, "enablePairingByQrCode"

    return-object p0

    .line 189
    :pswitch_1c
    const-string p0, "enablePairingByPairingCode"

    return-object p0

    .line 185
    :pswitch_1f
    const-string/jumbo p0, "unpairDevice"

    return-object p0

    .line 181
    :pswitch_23
    const-string p0, "getPairedDevices"

    return-object p0

    .line 177
    :pswitch_26
    const-string p0, "denyWirelessDebugging"

    return-object p0

    .line 173
    :pswitch_29
    const-string p0, "allowWirelessDebugging"

    return-object p0

    .line 169
    :pswitch_2c
    const-string p0, "clearDebuggingKeys"

    return-object p0

    .line 165
    :pswitch_2f
    const-string p0, "denyDebugging"

    return-object p0

    .line 161
    :pswitch_32
    const-string p0, "allowDebugging"

    return-object p0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 152
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 684
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 228
    invoke-static {p1}, Landroid/debug/IAdbManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 232
    nop

    .line 233
    const-string v0, "android.debug.IAdbManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 234
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 237
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    return v1

    .line 240
    :cond_17
    packed-switch p1, :pswitch_data_dc

    .line 362
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 354
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/debug/IAdbCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbCallback;

    move-result-object p1

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, p1}, Landroid/debug/IAdbManager$Stub;->unregisterCallback(Landroid/debug/IAdbCallback;)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    goto/16 :goto_db

    .line 345
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/debug/IAdbCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbCallback;

    move-result-object p1

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, p1}, Landroid/debug/IAdbManager$Stub;->registerCallback(Landroid/debug/IAdbCallback;)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    goto/16 :goto_db

    .line 337
    :pswitch_45
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->isAdbWifiQrSupported()Z

    move-result p1

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 340
    goto/16 :goto_db

    .line 330
    :pswitch_51
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->isAdbWifiSupported()Z

    move-result p1

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 333
    goto/16 :goto_db

    .line 324
    :pswitch_5d
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->disablePairing()V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    goto/16 :goto_db

    .line 317
    :pswitch_65
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->getAdbWirelessPort()I

    move-result p1

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    goto :goto_db

    .line 307
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, p1, p4}, Landroid/debug/IAdbManager$Stub;->enablePairingByQrCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    goto :goto_db

    .line 300
    :pswitch_82
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->enablePairingByPairingCode()V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    goto :goto_db

    .line 292
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, p1}, Landroid/debug/IAdbManager$Stub;->unpairDevice(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto :goto_db

    .line 284
    :pswitch_97
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->getPairedDevices()[Landroid/debug/FingerprintAndPairDevice;

    move-result-object p1

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 287
    goto :goto_db

    .line 278
    :pswitch_a2
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->denyWirelessDebugging()V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    goto :goto_db

    .line 268
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, p1, p4}, Landroid/debug/IAdbManager$Stub;->allowWirelessDebugging(ZLjava/lang/String;)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    goto :goto_db

    .line 261
    :pswitch_bb
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->clearDebuggingKeys()V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto :goto_db

    .line 255
    :pswitch_c2
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->denyDebugging()V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    goto :goto_db

    .line 245
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, p1, p4}, Landroid/debug/IAdbManager$Stub;->allowDebugging(ZLjava/lang/String;)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    nop

    .line 365
    :goto_db
    return v1

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_c9
        :pswitch_c2
        :pswitch_bb
        :pswitch_a9
        :pswitch_a2
        :pswitch_97
        :pswitch_89
        :pswitch_82
        :pswitch_70
        :pswitch_65
        :pswitch_5d
        :pswitch_51
        :pswitch_45
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
