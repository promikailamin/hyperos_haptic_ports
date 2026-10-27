.class public abstract Landroid/gsi/IGsiService$Stub;
.super Landroid/os/Binder;
.source "IGsiService.java"

# interfaces
.implements Landroid/gsi/IGsiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gsi/IGsiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gsi/IGsiService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelGsiInstall:I = 0x8

.field static final blacklist TRANSACTION_closeInstall:I = 0x13

.field static final blacklist TRANSACTION_closePartition:I = 0x15

.field static final blacklist TRANSACTION_commitGsiChunkFromAshmem:I = 0x4

.field static final blacklist TRANSACTION_commitGsiChunkFromStream:I = 0x1

.field static final blacklist TRANSACTION_createPartition:I = 0x14

.field static final blacklist TRANSACTION_disableGsi:I = 0xc

.field static final blacklist TRANSACTION_dumpDeviceMapperDevices:I = 0x18

.field static final blacklist TRANSACTION_enableGsi:I = 0x5

.field static final blacklist TRANSACTION_enableGsiAsync:I = 0x6

.field static final blacklist TRANSACTION_getActiveDsuSlot:I = 0xf

.field static final blacklist TRANSACTION_getAvbPublicKey:I = 0x19

.field static final blacklist TRANSACTION_getInstallProgress:I = 0x2

.field static final blacklist TRANSACTION_getInstalledDsuSlots:I = 0x11

.field static final blacklist TRANSACTION_getInstalledGsiImageDir:I = 0x10

.field static final blacklist TRANSACTION_isGsiEnabled:I = 0x7

.field static final blacklist TRANSACTION_isGsiInstallInProgress:I = 0x9

.field static final blacklist TRANSACTION_isGsiInstalled:I = 0xd

.field static final blacklist TRANSACTION_isGsiRunning:I = 0xe

.field static final blacklist TRANSACTION_openImageService:I = 0x17

.field static final blacklist TRANSACTION_openInstall:I = 0x12

.field static final blacklist TRANSACTION_removeGsi:I = 0xa

.field static final blacklist TRANSACTION_removeGsiAsync:I = 0xb

.field static final blacklist TRANSACTION_setGsiAshmem:I = 0x3

.field static final blacklist TRANSACTION_suggestScratchSize:I = 0x1a

.field static final blacklist TRANSACTION_zeroPartition:I = 0x16


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 256
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 257
    const-string v0, "android.gsi.IGsiService"

    invoke-virtual {p0, p0, v0}, Landroid/gsi/IGsiService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;
    .registers 3

    .line 265
    if-nez p0, :cond_4

    .line 266
    const/4 p0, 0x0

    return-object p0

    .line 268
    :cond_4
    const-string v0, "android.gsi.IGsiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/gsi/IGsiService;

    if-eqz v1, :cond_13

    .line 270
    check-cast v0, Landroid/gsi/IGsiService;

    return-object v0

    .line 272
    :cond_13
    new-instance v0, Landroid/gsi/IGsiService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/gsi/IGsiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 281
    packed-switch p0, :pswitch_data_5a

    .line 389
    const/4 p0, 0x0

    return-object p0

    .line 385
    :pswitch_5
    const-string/jumbo p0, "suggestScratchSize"

    return-object p0

    .line 381
    :pswitch_9
    const-string p0, "getAvbPublicKey"

    return-object p0

    .line 377
    :pswitch_c
    const-string p0, "dumpDeviceMapperDevices"

    return-object p0

    .line 373
    :pswitch_f
    const-string/jumbo p0, "openImageService"

    return-object p0

    .line 369
    :pswitch_13
    const-string/jumbo p0, "zeroPartition"

    return-object p0

    .line 365
    :pswitch_17
    const-string p0, "closePartition"

    return-object p0

    .line 361
    :pswitch_1a
    const-string p0, "createPartition"

    return-object p0

    .line 357
    :pswitch_1d
    const-string p0, "closeInstall"

    return-object p0

    .line 353
    :pswitch_20
    const-string/jumbo p0, "openInstall"

    return-object p0

    .line 349
    :pswitch_24
    const-string p0, "getInstalledDsuSlots"

    return-object p0

    .line 345
    :pswitch_27
    const-string p0, "getInstalledGsiImageDir"

    return-object p0

    .line 341
    :pswitch_2a
    const-string p0, "getActiveDsuSlot"

    return-object p0

    .line 337
    :pswitch_2d
    const-string p0, "isGsiRunning"

    return-object p0

    .line 333
    :pswitch_30
    const-string p0, "isGsiInstalled"

    return-object p0

    .line 329
    :pswitch_33
    const-string p0, "disableGsi"

    return-object p0

    .line 325
    :pswitch_36
    const-string/jumbo p0, "removeGsiAsync"

    return-object p0

    .line 321
    :pswitch_3a
    const-string/jumbo p0, "removeGsi"

    return-object p0

    .line 317
    :pswitch_3e
    const-string p0, "isGsiInstallInProgress"

    return-object p0

    .line 313
    :pswitch_41
    const-string p0, "cancelGsiInstall"

    return-object p0

    .line 309
    :pswitch_44
    const-string p0, "isGsiEnabled"

    return-object p0

    .line 305
    :pswitch_47
    const-string p0, "enableGsiAsync"

    return-object p0

    .line 301
    :pswitch_4a
    const-string p0, "enableGsi"

    return-object p0

    .line 297
    :pswitch_4d
    const-string p0, "commitGsiChunkFromAshmem"

    return-object p0

    .line 293
    :pswitch_50
    const-string/jumbo p0, "setGsiAshmem"

    return-object p0

    .line 289
    :pswitch_54
    const-string p0, "getInstallProgress"

    return-object p0

    .line 285
    :pswitch_57
    const-string p0, "commitGsiChunkFromStream"

    return-object p0

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_57
        :pswitch_54
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
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

    .line 276
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1265
    const/16 v0, 0x19

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 396
    invoke-static {p1}, Landroid/gsi/IGsiService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 400
    nop

    .line 401
    const-string v0, "android.gsi.IGsiService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 402
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 405
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    return v1

    .line 408
    :cond_17
    packed-switch p1, :pswitch_data_1c2

    .line 638
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 631
    :pswitch_1f
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->suggestScratchSize()J

    move-result-wide p1

    .line 632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 634
    goto/16 :goto_1c0

    .line 621
    :pswitch_2b
    new-instance p1, Landroid/gsi/AvbPublicKey;

    invoke-direct {p1}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {p0, p1}, Landroid/gsi/IGsiService$Stub;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)I

    move-result p2

    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 627
    goto/16 :goto_1c0

    .line 613
    :pswitch_42
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->dumpDeviceMapperDevices()Ljava/lang/String;

    move-result-object p1

    .line 614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 616
    goto/16 :goto_1c0

    .line 604
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {p0, p1}, Landroid/gsi/IGsiService$Stub;->openImageService(Ljava/lang/String;)Landroid/gsi/IImageService;

    move-result-object p1

    .line 607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 609
    goto/16 :goto_1c0

    .line 594
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    invoke-virtual {p0, p1}, Landroid/gsi/IGsiService$Stub;->zeroPartition(Ljava/lang/String;)I

    move-result p1

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    goto/16 :goto_1c0

    .line 586
    :pswitch_74
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->closePartition()I

    move-result p1

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    goto/16 :goto_1c0

    .line 573
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    invoke-virtual {p0, p1, v2, v3, p4}, Landroid/gsi/IGsiService$Stub;->createPartition(Ljava/lang/String;JZ)I

    move-result p1

    .line 580
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    goto/16 :goto_1c0

    .line 565
    :pswitch_9b
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->closeInstall()I

    move-result p1

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    goto/16 :goto_1c0

    .line 556
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, p1}, Landroid/gsi/IGsiService$Stub;->openInstall(Ljava/lang/String;)I

    move-result p1

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    goto/16 :goto_1c0

    .line 548
    :pswitch_ba
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getInstalledDsuSlots()Ljava/util/List;

    move-result-object p1

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 551
    goto/16 :goto_1c0

    .line 541
    :pswitch_c6
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getInstalledGsiImageDir()Ljava/lang/String;

    move-result-object p1

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    goto/16 :goto_1c0

    .line 534
    :pswitch_d2
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getActiveDsuSlot()Ljava/lang/String;

    move-result-object p1

    .line 535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    goto/16 :goto_1c0

    .line 527
    :pswitch_de
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiRunning()Z

    move-result p1

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 530
    goto/16 :goto_1c0

    .line 520
    :pswitch_ea
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiInstalled()Z

    move-result p1

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 523
    goto/16 :goto_1c0

    .line 513
    :pswitch_f6
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->disableGsi()Z

    move-result p1

    .line 514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 516
    goto/16 :goto_1c0

    .line 506
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/gsi/IGsiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiServiceCallback;

    move-result-object p1

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {p0, p1}, Landroid/gsi/IGsiService$Stub;->removeGsiAsync(Landroid/gsi/IGsiServiceCallback;)V

    .line 509
    goto/16 :goto_1c0

    .line 498
    :pswitch_112
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->removeGsi()Z

    move-result p1

    .line 499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 501
    goto/16 :goto_1c0

    .line 491
    :pswitch_11e
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiInstallInProgress()Z

    move-result p1

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 494
    goto/16 :goto_1c0

    .line 484
    :pswitch_12a
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->cancelGsiInstall()Z

    move-result p1

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 487
    goto/16 :goto_1c0

    .line 477
    :pswitch_136
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiEnabled()Z

    move-result p1

    .line 478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 480
    goto/16 :goto_1c0

    .line 466
    :pswitch_142
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/gsi/IGsiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiServiceCallback;

    move-result-object p4

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {p0, p1, p3, p4}, Landroid/gsi/IGsiService$Stub;->enableGsiAsync(ZLjava/lang/String;Landroid/gsi/IGsiServiceCallback;)V

    .line 473
    goto :goto_1c0

    .line 454
    :pswitch_159
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {p0, p1, p4}, Landroid/gsi/IGsiService$Stub;->enableGsi(ZLjava/lang/String;)I

    move-result p1

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    goto :goto_1c0

    .line 444
    :pswitch_16f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v2, v3}, Landroid/gsi/IGsiService$Stub;->commitGsiChunkFromAshmem(J)Z

    move-result p1

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 449
    goto :goto_1c0

    .line 432
    :pswitch_181
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, p1, v2, v3}, Landroid/gsi/IGsiService$Stub;->setGsiAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    move-result p1

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 439
    goto :goto_1c0

    .line 424
    :pswitch_19b
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getInstallProgress()Landroid/gsi/GsiProgress;

    move-result-object p1

    .line 425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 427
    goto :goto_1c0

    .line 413
    :pswitch_1a6
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {p0, p1, v2, v3}, Landroid/gsi/IGsiService$Stub;->commitGsiChunkFromStream(Landroid/os/ParcelFileDescriptor;J)Z

    move-result p1

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 420
    nop

    .line 641
    :goto_1c0
    return v1

    nop

    :pswitch_data_1c2
    .packed-switch 0x1
        :pswitch_1a6
        :pswitch_19b
        :pswitch_181
        :pswitch_16f
        :pswitch_159
        :pswitch_142
        :pswitch_136
        :pswitch_12a
        :pswitch_11e
        :pswitch_112
        :pswitch_102
        :pswitch_f6
        :pswitch_ea
        :pswitch_de
        :pswitch_d2
        :pswitch_c6
        :pswitch_ba
        :pswitch_a7
        :pswitch_9b
        :pswitch_80
        :pswitch_74
        :pswitch_61
        :pswitch_4e
        :pswitch_42
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
