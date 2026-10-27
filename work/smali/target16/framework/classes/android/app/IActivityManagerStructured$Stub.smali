.class public abstract Landroid/app/IActivityManagerStructured$Stub;
.super Landroid/os/Binder;
.source "IActivityManagerStructured.java"

# interfaces
.implements Landroid/app/IActivityManagerStructured;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManagerStructured;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManagerStructured$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addUidToObserver:I = 0x5

.field static final blacklist TRANSACTION_attachNativeApplication:I = 0x13

.field static final blacklist TRANSACTION_checkPermission:I = 0x9

.field static final blacklist TRANSACTION_finishAttachApplication:I = 0x14

.field static final blacklist TRANSACTION_getRunningAppProcesses:I = 0xf

.field static final blacklist TRANSACTION_getUidProcessState:I = 0x8

.field static final blacklist TRANSACTION_isUidActive:I = 0x7

.field static final blacklist TRANSACTION_logFgsApiBegin:I = 0xa

.field static final blacklist TRANSACTION_logFgsApiEnd:I = 0xb

.field static final blacklist TRANSACTION_logFgsApiStateChanged:I = 0xc

.field static final blacklist TRANSACTION_openContentUri:I = 0x1

.field static final blacklist TRANSACTION_publishService:I = 0x11

.field static final blacklist TRANSACTION_registerProcessObserver:I = 0xd

.field static final blacklist TRANSACTION_registerUidObserver:I = 0x2

.field static final blacklist TRANSACTION_registerUidObserverForUids:I = 0x4

.field static final blacklist TRANSACTION_removeUidFromObserver:I = 0x6

.field static final blacklist TRANSACTION_serviceDoneExecuting:I = 0x10

.field static final blacklist TRANSACTION_unbindFinished:I = 0x12

.field static final blacklist TRANSACTION_unregisterProcessObserver:I = 0xe

.field static final blacklist TRANSACTION_unregisterUidObserver:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 135
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 136
    const-string v0, "android.app.IActivityManagerStructured"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityManagerStructured$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManagerStructured;
    .registers 3

    .line 144
    if-nez p0, :cond_4

    .line 145
    const/4 p0, 0x0

    return-object p0

    .line 147
    :cond_4
    const-string v0, "android.app.IActivityManagerStructured"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IActivityManagerStructured;

    if-eqz v1, :cond_13

    .line 149
    check-cast v0, Landroid/app/IActivityManagerStructured;

    return-object v0

    .line 151
    :cond_13
    new-instance v0, Landroid/app/IActivityManagerStructured$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IActivityManagerStructured$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 160
    packed-switch p0, :pswitch_data_50

    .line 244
    const/4 p0, 0x0

    return-object p0

    .line 240
    :pswitch_5
    const-string p0, "finishAttachApplication"

    return-object p0

    .line 236
    :pswitch_8
    const-string p0, "attachNativeApplication"

    return-object p0

    .line 232
    :pswitch_b
    const-string/jumbo p0, "unbindFinished"

    return-object p0

    .line 228
    :pswitch_f
    const-string/jumbo p0, "publishService"

    return-object p0

    .line 224
    :pswitch_13
    const-string/jumbo p0, "serviceDoneExecuting"

    return-object p0

    .line 220
    :pswitch_17
    const-string p0, "getRunningAppProcesses"

    return-object p0

    .line 216
    :pswitch_1a
    const-string/jumbo p0, "unregisterProcessObserver"

    return-object p0

    .line 212
    :pswitch_1e
    const-string/jumbo p0, "registerProcessObserver"

    return-object p0

    .line 208
    :pswitch_22
    const-string/jumbo p0, "logFgsApiStateChanged"

    return-object p0

    .line 204
    :pswitch_26
    const-string/jumbo p0, "logFgsApiEnd"

    return-object p0

    .line 200
    :pswitch_2a
    const-string/jumbo p0, "logFgsApiBegin"

    return-object p0

    .line 196
    :pswitch_2e
    const-string p0, "checkPermission"

    return-object p0

    .line 192
    :pswitch_31
    const-string p0, "getUidProcessState"

    return-object p0

    .line 188
    :pswitch_34
    const-string/jumbo p0, "isUidActive"

    return-object p0

    .line 184
    :pswitch_38
    const-string/jumbo p0, "removeUidFromObserver"

    return-object p0

    .line 180
    :pswitch_3c
    const-string p0, "addUidToObserver"

    return-object p0

    .line 176
    :pswitch_3f
    const-string/jumbo p0, "registerUidObserverForUids"

    return-object p0

    .line 172
    :pswitch_43
    const-string/jumbo p0, "unregisterUidObserver"

    return-object p0

    .line 168
    :pswitch_47
    const-string/jumbo p0, "registerUidObserver"

    return-object p0

    .line 164
    :pswitch_4b
    const-string/jumbo p0, "openContentUri"

    return-object p0

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 155
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 920
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 251
    invoke-static {p1}, Landroid/app/IActivityManagerStructured$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 255
    nop

    .line 256
    const-string v0, "android.app.IActivityManagerStructured"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 257
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 260
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    return v1

    .line 263
    :cond_17
    packed-switch p1, :pswitch_data_1de

    .line 506
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 496
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/IActivityManagerStructured$Stub;->finishAttachApplication(JJ)V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    goto/16 :goto_1dc

    .line 485
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {p0, p1, v2, v3}, Landroid/app/IActivityManagerStructured$Stub;->attachNativeApplication(Landroid/os/IBinder;J)V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    goto/16 :goto_1dc

    .line 474
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, p1, p4}, Landroid/app/IActivityManagerStructured$Stub;->unbindFinished(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    goto/16 :goto_1dc

    .line 461
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 467
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/IActivityManagerStructured$Stub;->publishService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    goto/16 :goto_1dc

    .line 447
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/app/IActivityManagerStructured$Stub;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 456
    goto/16 :goto_1dc

    .line 439
    :pswitch_88
    invoke-virtual {p0}, Landroid/app/IActivityManagerStructured$Stub;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 442
    goto/16 :goto_1dc

    .line 431
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object p1

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, p1}, Landroid/app/IActivityManagerStructured$Stub;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    goto/16 :goto_1dc

    .line 422
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object p1

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, p1}, Landroid/app/IActivityManagerStructured$Stub;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    goto/16 :goto_1dc

    .line 408
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/app/IActivityManagerStructured$Stub;->logFgsApiStateChanged(IIII)V

    .line 417
    goto/16 :goto_1dc

    .line 396
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {p0, p1, p3, p4}, Landroid/app/IActivityManagerStructured$Stub;->logFgsApiEnd(III)V

    .line 403
    goto/16 :goto_1dc

    .line 384
    :pswitch_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, p1, p3, p4}, Landroid/app/IActivityManagerStructured$Stub;->logFgsApiBegin(III)V

    .line 391
    goto/16 :goto_1dc

    .line 370
    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/IActivityManagerStructured$Stub;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    goto/16 :goto_1dc

    .line 358
    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, p1, p4}, Landroid/app/IActivityManagerStructured$Stub;->getUidProcessState(ILjava/lang/String;)I

    move-result p1

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    goto/16 :goto_1dc

    .line 346
    :pswitch_12c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {p0, p1, p4}, Landroid/app/IActivityManagerStructured$Stub;->isUidActive(ILjava/lang/String;)Z

    move-result p1

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 353
    goto/16 :goto_1dc

    .line 333
    :pswitch_143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/IActivityManagerStructured$Stub;->removeUidFromObserver(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    goto/16 :goto_1dc

    .line 320
    :pswitch_15a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/IActivityManagerStructured$Stub;->addUidToObserver(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    goto :goto_1dc

    .line 302
    :pswitch_170
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v3

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/app/IActivityManagerStructured$Stub;->registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;

    move-result-object p1

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 315
    goto :goto_1dc

    .line 293
    :pswitch_197
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object p1

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, p1}, Landroid/app/IActivityManagerStructured$Stub;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    goto :goto_1dc

    .line 278
    :pswitch_1aa
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object p1

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/app/IActivityManagerStructured$Stub;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    goto :goto_1dc

    .line 268
    :pswitch_1c9
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, p1}, Landroid/app/IActivityManagerStructured$Stub;->openContentUri(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 273
    nop

    .line 509
    :goto_1dc
    return v1

    nop

    :pswitch_data_1de
    .packed-switch 0x1
        :pswitch_1c9
        :pswitch_1aa
        :pswitch_197
        :pswitch_170
        :pswitch_15a
        :pswitch_143
        :pswitch_12c
        :pswitch_115
        :pswitch_fa
        :pswitch_e6
        :pswitch_d2
        :pswitch_ba
        :pswitch_a7
        :pswitch_94
        :pswitch_88
        :pswitch_70
        :pswitch_59
        :pswitch_46
        :pswitch_33
        :pswitch_20
    .end packed-switch
.end method
