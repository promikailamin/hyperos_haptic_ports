.class public abstract Landroid/gsi/IImageService$Stub;
.super Landroid/os/Binder;
.source "IImageService.java"

# interfaces
.implements Landroid/gsi/IImageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gsi/IImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gsi/IImageService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_backingImageExists:I = 0x5

.field static final blacklist TRANSACTION_createBackingImage:I = 0x1

.field static final blacklist TRANSACTION_deleteBackingImage:I = 0x2

.field static final blacklist TRANSACTION_disableImage:I = 0xb

.field static final blacklist TRANSACTION_getAllBackingImages:I = 0x8

.field static final blacklist TRANSACTION_getAvbPublicKey:I = 0x7

.field static final blacklist TRANSACTION_getMappedImageDevice:I = 0xe

.field static final blacklist TRANSACTION_isImageDisabled:I = 0xd

.field static final blacklist TRANSACTION_isImageMapped:I = 0x6

.field static final blacklist TRANSACTION_mapImageDevice:I = 0x3

.field static final blacklist TRANSACTION_removeAllImages:I = 0xa

.field static final blacklist TRANSACTION_removeDisabledImages:I = 0xc

.field static final blacklist TRANSACTION_unmapImageDevice:I = 0x4

.field static final blacklist TRANSACTION_zeroFillNewImage:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 153
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 154
    const-string v0, "android.gsi.IImageService"

    invoke-virtual {p0, p0, v0}, Landroid/gsi/IImageService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/gsi/IImageService;
    .registers 3

    .line 162
    if-nez p0, :cond_4

    .line 163
    const/4 p0, 0x0

    return-object p0

    .line 165
    :cond_4
    const-string v0, "android.gsi.IImageService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/gsi/IImageService;

    if-eqz v1, :cond_13

    .line 167
    check-cast v0, Landroid/gsi/IImageService;

    return-object v0

    .line 169
    :cond_13
    new-instance v0, Landroid/gsi/IImageService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/gsi/IImageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 178
    packed-switch p0, :pswitch_data_34

    .line 238
    const/4 p0, 0x0

    return-object p0

    .line 234
    :pswitch_5
    const-string p0, "getMappedImageDevice"

    return-object p0

    .line 230
    :pswitch_8
    const-string p0, "isImageDisabled"

    return-object p0

    .line 226
    :pswitch_b
    const-string/jumbo p0, "removeDisabledImages"

    return-object p0

    .line 222
    :pswitch_f
    const-string p0, "disableImage"

    return-object p0

    .line 218
    :pswitch_12
    const-string/jumbo p0, "removeAllImages"

    return-object p0

    .line 214
    :pswitch_16
    const-string/jumbo p0, "zeroFillNewImage"

    return-object p0

    .line 210
    :pswitch_1a
    const-string p0, "getAllBackingImages"

    return-object p0

    .line 206
    :pswitch_1d
    const-string p0, "getAvbPublicKey"

    return-object p0

    .line 202
    :pswitch_20
    const-string p0, "isImageMapped"

    return-object p0

    .line 198
    :pswitch_23
    const-string p0, "backingImageExists"

    return-object p0

    .line 194
    :pswitch_26
    const-string/jumbo p0, "unmapImageDevice"

    return-object p0

    .line 190
    :pswitch_2a
    const-string/jumbo p0, "mapImageDevice"

    return-object p0

    .line 186
    :pswitch_2e
    const-string p0, "deleteBackingImage"

    return-object p0

    .line 182
    :pswitch_31
    const-string p0, "createBackingImage"

    return-object p0

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 173
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 752
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 245
    invoke-static {p1}, Landroid/gsi/IImageService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    nop

    .line 250
    const-string v0, "android.gsi.IImageService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 251
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 254
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    return v1

    .line 257
    :cond_17
    packed-switch p1, :pswitch_data_118

    .line 400
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 391
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {p0, p1}, Landroid/gsi/IImageService$Stub;->getMappedImageDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    goto/16 :goto_117

    .line 381
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {p0, p1}, Landroid/gsi/IImageService$Stub;->isImageDisabled(Ljava/lang/String;)Z

    move-result p1

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 386
    goto/16 :goto_117

    .line 374
    :pswitch_45
    invoke-virtual {p0}, Landroid/gsi/IImageService$Stub;->removeDisabledImages()V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    goto/16 :goto_117

    .line 366
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {p0, p1}, Landroid/gsi/IImageService$Stub;->disableImage(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    goto/16 :goto_117

    .line 359
    :pswitch_5c
    invoke-virtual {p0}, Landroid/gsi/IImageService$Stub;->removeAllImages()V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    goto/16 :goto_117

    .line 349
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, p1, v2, v3}, Landroid/gsi/IImageService$Stub;->zeroFillNewImage(Ljava/lang/String;J)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    goto/16 :goto_117

    .line 341
    :pswitch_77
    invoke-virtual {p0}, Landroid/gsi/IImageService$Stub;->getAllBackingImages()Ljava/util/List;

    move-result-object p1

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 344
    goto/16 :goto_117

    .line 329
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 331
    new-instance p4, Landroid/gsi/AvbPublicKey;

    invoke-direct {p4}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, p1, p4}, Landroid/gsi/IImageService$Stub;->getAvbPublicKey(Ljava/lang/String;Landroid/gsi/AvbPublicKey;)I

    move-result p1

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    invoke-virtual {p3, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 337
    goto/16 :goto_117

    .line 319
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, p1}, Landroid/gsi/IImageService$Stub;->isImageMapped(Ljava/lang/String;)Z

    move-result p1

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 324
    goto :goto_117

    .line 309
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, p1}, Landroid/gsi/IImageService$Stub;->backingImageExists(Ljava/lang/String;)Z

    move-result p1

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 314
    goto :goto_117

    .line 300
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, p1}, Landroid/gsi/IImageService$Stub;->unmapImageDevice(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    goto :goto_117

    .line 286
    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 290
    new-instance v0, Landroid/gsi/MappedImage;

    invoke-direct {v0}, Landroid/gsi/MappedImage;-><init>()V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, p1, p4, v0}, Landroid/gsi/IImageService$Stub;->mapImageDevice(Ljava/lang/String;ILandroid/gsi/MappedImage;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 295
    goto :goto_117

    .line 277
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, p1}, Landroid/gsi/IImageService$Stub;->deleteBackingImage(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    goto :goto_117

    .line 262
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/gsi/IProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IProgressCallback;

    move-result-object v7

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/gsi/IImageService$Stub;->createBackingImage(Ljava/lang/String;JILandroid/gsi/IProgressCallback;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    nop

    .line 403
    :goto_117
    return v1

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_f8
        :pswitch_ea
        :pswitch_d0
        :pswitch_c2
        :pswitch_b0
        :pswitch_9e
        :pswitch_83
        :pswitch_77
        :pswitch_64
        :pswitch_5c
        :pswitch_4d
        :pswitch_45
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
