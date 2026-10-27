.class public abstract Landroid/media/ISpatializer$Stub;
.super Landroid/os/Binder;
.source "ISpatializer.java"

# interfaces
.implements Landroid/media/ISpatializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ISpatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ISpatializer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getActualHeadTrackingMode:I = 0x8

.field static final blacklist TRANSACTION_getLevel:I = 0x4

.field static final blacklist TRANSACTION_getOutput:I = 0x14

.field static final blacklist TRANSACTION_getParameter:I = 0x13

.field static final blacklist TRANSACTION_getSpatializedChannelMasks:I = 0x15

.field static final blacklist TRANSACTION_getSupportedHeadTrackingModes:I = 0x6

.field static final blacklist TRANSACTION_getSupportedLevels:I = 0x2

.field static final blacklist TRANSACTION_getSupportedModes:I = 0x10

.field static final blacklist TRANSACTION_isHeadTrackingSupported:I = 0x5

.field static final blacklist TRANSACTION_recenterHeadTracker:I = 0x9

.field static final blacklist TRANSACTION_registerHeadTrackingCallback:I = 0x11

.field static final blacklist TRANSACTION_release:I = 0x1

.field static final blacklist TRANSACTION_setDesiredHeadTrackingMode:I = 0x7

.field static final blacklist TRANSACTION_setDisplayOrientation:I = 0xd

.field static final blacklist TRANSACTION_setFoldState:I = 0xf

.field static final blacklist TRANSACTION_setGlobalTransform:I = 0xa

.field static final blacklist TRANSACTION_setHeadSensor:I = 0xb

.field static final blacklist TRANSACTION_setHingeAngle:I = 0xe

.field static final blacklist TRANSACTION_setLevel:I = 0x3

.field static final blacklist TRANSACTION_setParameter:I = 0x12

.field static final blacklist TRANSACTION_setScreenSensor:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 198
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 199
    const-string v0, "android.media.ISpatializer"

    invoke-virtual {p0, p0, v0}, Landroid/media/ISpatializer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializer;
    .registers 3

    .line 207
    if-nez p0, :cond_4

    .line 208
    const/4 p0, 0x0

    return-object p0

    .line 210
    :cond_4
    const-string v0, "android.media.ISpatializer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/ISpatializer;

    if-eqz v1, :cond_13

    .line 212
    check-cast v0, Landroid/media/ISpatializer;

    return-object v0

    .line 214
    :cond_13
    new-instance v0, Landroid/media/ISpatializer$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/ISpatializer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 218
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    nop

    .line 223
    const-string v0, "android.media.ISpatializer"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 224
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 227
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    return v1

    .line 230
    :cond_17
    packed-switch p1, :pswitch_data_13a

    .line 406
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 399
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getSpatializedChannelMasks()[I

    move-result-object p1

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 402
    goto/16 :goto_139

    .line 392
    :pswitch_2b
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getOutput()I

    move-result p1

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    goto/16 :goto_139

    .line 381
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, p1, p4}, Landroid/media/ISpatializer$Stub;->getParameter(I[B)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 388
    goto/16 :goto_139

    .line 370
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {p0, p1, p4}, Landroid/media/ISpatializer$Stub;->setParameter(I[B)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    goto/16 :goto_139

    .line 361
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/ISpatializerHeadTrackingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingCallback;

    move-result-object p1

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, p1}, Landroid/media/ISpatializer$Stub;->registerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingCallback;)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    goto/16 :goto_139

    .line 353
    :pswitch_73
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getSupportedModes()[B

    move-result-object p1

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 356
    goto/16 :goto_139

    .line 345
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, p1}, Landroid/media/ISpatializer$Stub;->setFoldState(Z)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    goto/16 :goto_139

    .line 336
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, p1}, Landroid/media/ISpatializer$Stub;->setHingeAngle(F)V

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    goto/16 :goto_139

    .line 327
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {p0, p1}, Landroid/media/ISpatializer$Stub;->setDisplayOrientation(F)V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    goto/16 :goto_139

    .line 318
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, p1}, Landroid/media/ISpatializer$Stub;->setScreenSensor(I)V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    goto/16 :goto_139

    .line 309
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, p1}, Landroid/media/ISpatializer$Stub;->setHeadSensor(I)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    goto/16 :goto_139

    .line 300
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, p1}, Landroid/media/ISpatializer$Stub;->setGlobalTransform([F)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    goto :goto_139

    .line 293
    :pswitch_d8
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->recenterHeadTracker()V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    goto :goto_139

    .line 286
    :pswitch_df
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getActualHeadTrackingMode()B

    move-result p1

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 289
    goto :goto_139

    .line 278
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, p1}, Landroid/media/ISpatializer$Stub;->setDesiredHeadTrackingMode(B)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    goto :goto_139

    .line 270
    :pswitch_f8
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getSupportedHeadTrackingModes()[B

    move-result-object p1

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 273
    goto :goto_139

    .line 263
    :pswitch_103
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->isHeadTrackingSupported()Z

    move-result p1

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 266
    goto :goto_139

    .line 256
    :pswitch_10e
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getLevel()B

    move-result p1

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 259
    goto :goto_139

    .line 248
    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, p1}, Landroid/media/ISpatializer$Stub;->setLevel(B)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto :goto_139

    .line 240
    :pswitch_127
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->getSupportedLevels()[B

    move-result-object p1

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 243
    goto :goto_139

    .line 234
    :pswitch_132
    invoke-virtual {p0}, Landroid/media/ISpatializer$Stub;->release()V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    nop

    .line 409
    :goto_139
    return v1

    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_132
        :pswitch_127
        :pswitch_119
        :pswitch_10e
        :pswitch_103
        :pswitch_f8
        :pswitch_ea
        :pswitch_df
        :pswitch_d8
        :pswitch_ca
        :pswitch_bb
        :pswitch_ac
        :pswitch_9d
        :pswitch_8e
        :pswitch_7f
        :pswitch_73
        :pswitch_60
        :pswitch_4d
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
