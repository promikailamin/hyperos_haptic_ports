.class public abstract Lcom/android/ims/internal/IImsUt$Stub;
.super Landroid/os/Binder;
.source "IImsUt.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsUt$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsUt"

.field static final greylist-max-o TRANSACTION_close:I = 0x1

.field static final greylist-max-o TRANSACTION_queryCLIP:I = 0x6

.field static final greylist-max-o TRANSACTION_queryCLIR:I = 0x5

.field static final greylist-max-o TRANSACTION_queryCOLP:I = 0x8

.field static final greylist-max-o TRANSACTION_queryCOLR:I = 0x7

.field static final greylist-max-o TRANSACTION_queryCallBarring:I = 0x2

.field static final greylist-max-o TRANSACTION_queryCallBarringForServiceClass:I = 0x12

.field static final greylist-max-o TRANSACTION_queryCallForward:I = 0x3

.field static final greylist-max-o TRANSACTION_queryCallWaiting:I = 0x4

.field static final greylist-max-o TRANSACTION_setListener:I = 0x11

.field static final greylist-max-o TRANSACTION_transact:I = 0x9

.field static final greylist-max-o TRANSACTION_updateCLIP:I = 0xe

.field static final greylist-max-o TRANSACTION_updateCLIR:I = 0xd

.field static final greylist-max-o TRANSACTION_updateCOLP:I = 0x10

.field static final greylist-max-o TRANSACTION_updateCOLR:I = 0xf

.field static final greylist-max-o TRANSACTION_updateCallBarring:I = 0xa

.field static final greylist-max-o TRANSACTION_updateCallBarringForServiceClass:I = 0x13

.field static final blacklist TRANSACTION_updateCallBarringWithPassword:I = 0x14

.field static final greylist-max-o TRANSACTION_updateCallForward:I = 0xb

.field static final greylist-max-o TRANSACTION_updateCallWaiting:I = 0xc


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 130
    const-string v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsUt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;
    .registers 3

    .line 138
    if-nez p0, :cond_4

    .line 139
    const/4 p0, 0x0

    return-object p0

    .line 141
    :cond_4
    const-string v0, "com.android.ims.internal.IImsUt"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/ims/internal/IImsUt;

    if-eqz v1, :cond_13

    .line 143
    check-cast v0, Lcom/android/ims/internal/IImsUt;

    return-object v0

    .line 145
    :cond_13
    new-instance v0, Lcom/android/ims/internal/IImsUt$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsUt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 154
    packed-switch p0, :pswitch_data_42

    .line 238
    const/4 p0, 0x0

    return-object p0

    .line 234
    :pswitch_5
    const-string p0, "updateCallBarringWithPassword"

    return-object p0

    .line 230
    :pswitch_8
    const-string p0, "updateCallBarringForServiceClass"

    return-object p0

    .line 226
    :pswitch_b
    const-string p0, "queryCallBarringForServiceClass"

    return-object p0

    .line 222
    :pswitch_e
    const-string p0, "setListener"

    return-object p0

    .line 218
    :pswitch_11
    const-string p0, "updateCOLP"

    return-object p0

    .line 214
    :pswitch_14
    const-string p0, "updateCOLR"

    return-object p0

    .line 210
    :pswitch_17
    const-string p0, "updateCLIP"

    return-object p0

    .line 206
    :pswitch_1a
    const-string p0, "updateCLIR"

    return-object p0

    .line 202
    :pswitch_1d
    const-string p0, "updateCallWaiting"

    return-object p0

    .line 198
    :pswitch_20
    const-string p0, "updateCallForward"

    return-object p0

    .line 194
    :pswitch_23
    const-string p0, "updateCallBarring"

    return-object p0

    .line 190
    :pswitch_26
    const-string p0, "transact"

    return-object p0

    .line 186
    :pswitch_29
    const-string p0, "queryCOLP"

    return-object p0

    .line 182
    :pswitch_2c
    const-string p0, "queryCOLR"

    return-object p0

    .line 178
    :pswitch_2f
    const-string p0, "queryCLIP"

    return-object p0

    .line 174
    :pswitch_32
    const-string p0, "queryCLIR"

    return-object p0

    .line 170
    :pswitch_35
    const-string p0, "queryCallWaiting"

    return-object p0

    .line 166
    :pswitch_38
    const-string p0, "queryCallForward"

    return-object p0

    .line 162
    :pswitch_3b
    const-string p0, "queryCallBarring"

    return-object p0

    .line 158
    :pswitch_3e
    const-string p0, "close"

    return-object p0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 149
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 903
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 245
    invoke-static {p1}, Lcom/android/ims/internal/IImsUt$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    nop

    .line 250
    const-string v0, "com.android.ims.internal.IImsUt"

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
    packed-switch p1, :pswitch_data_1c0

    .line 473
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 456
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    goto/16 :goto_1be

    .line 440
    :pswitch_44
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {p0, p1, p4, v0, v3}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallBarringForServiceClass(II[Ljava/lang/String;I)I

    move-result p1

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    goto/16 :goto_1be

    .line 428
    :pswitch_64
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallBarringForServiceClass(II)I

    move-result p1

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    goto/16 :goto_1be

    .line 419
    :pswitch_7c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IImsUtListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object p1

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsUt$Stub;->setListener(Lcom/android/ims/internal/IImsUtListener;)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    goto/16 :goto_1be

    .line 409
    :pswitch_90
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsUt$Stub;->updateCOLP(Z)I

    move-result p1

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    goto/16 :goto_1be

    .line 399
    :pswitch_a4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsUt$Stub;->updateCOLR(I)I

    move-result p1

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    goto/16 :goto_1be

    .line 389
    :pswitch_b8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsUt$Stub;->updateCLIP(Z)I

    move-result p1

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    goto/16 :goto_1be

    .line 379
    :pswitch_cc
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsUt$Stub;->updateCLIR(I)I

    move-result p1

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    goto/16 :goto_1be

    .line 367
    :pswitch_e0
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallWaiting(ZI)I

    move-result p1

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    goto/16 :goto_1be

    .line 349
    :pswitch_f8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual/range {v2 .. v7}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallForward(IILjava/lang/String;II)I

    move-result p1

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    goto/16 :goto_1be

    .line 335
    :pswitch_11c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallBarring(II[Ljava/lang/String;)I

    move-result p1

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    goto/16 :goto_1be

    .line 325
    :pswitch_138
    move-object v2, p0

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsUt$Stub;->transact(Landroid/os/Bundle;)I

    move-result p1

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    goto/16 :goto_1be

    .line 317
    :pswitch_150
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCOLP()I

    move-result p1

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    goto :goto_1be

    .line 310
    :pswitch_15c
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCOLR()I

    move-result p1

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    goto :goto_1be

    .line 303
    :pswitch_168
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCLIP()I

    move-result p1

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    goto :goto_1be

    .line 296
    :pswitch_174
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCLIR()I

    move-result p1

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    goto :goto_1be

    .line 289
    :pswitch_180
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallWaiting()I

    move-result p1

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    goto :goto_1be

    .line 278
    :pswitch_18c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallForward(ILjava/lang/String;)I

    move-result p1

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    goto :goto_1be

    .line 268
    :pswitch_1a3
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallBarring(I)I

    move-result p1

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    goto :goto_1be

    .line 261
    :pswitch_1b6
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->close()V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    nop

    .line 476
    :goto_1be
    return v1

    nop

    :pswitch_data_1c0
    .packed-switch 0x1
        :pswitch_1b6
        :pswitch_1a3
        :pswitch_18c
        :pswitch_180
        :pswitch_174
        :pswitch_168
        :pswitch_15c
        :pswitch_150
        :pswitch_138
        :pswitch_11c
        :pswitch_f8
        :pswitch_e0
        :pswitch_cc
        :pswitch_b8
        :pswitch_a4
        :pswitch_90
        :pswitch_7c
        :pswitch_64
        :pswitch_44
        :pswitch_20
    .end packed-switch
.end method
