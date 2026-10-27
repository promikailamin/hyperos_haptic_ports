.class public abstract Landroid/content/om/IOverlayManager$Stub;
.super Landroid/os/Binder;
.source "IOverlayManager.java"

# interfaces
.implements Landroid/content/om/IOverlayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/IOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/IOverlayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.om.IOverlayManager"

.field static final blacklist TRANSACTION_commit:I = 0xe

.field static final blacklist TRANSACTION_enableWithConstraints:I = 0x6

.field static final greylist-max-o TRANSACTION_getAllOverlays:I = 0x1

.field static final blacklist TRANSACTION_getDefaultOverlayPackages:I = 0xc

.field static final greylist-max-o TRANSACTION_getOverlayInfo:I = 0x3

.field static final blacklist TRANSACTION_getOverlayInfoByIdentifier:I = 0x4

.field static final greylist-max-o TRANSACTION_getOverlayInfosForTarget:I = 0x2

.field static final blacklist TRANSACTION_getPartitionOrder:I = 0xf

.field static final blacklist TRANSACTION_invalidateCachesForOverlay:I = 0xd

.field static final blacklist TRANSACTION_isDefaultPartitionOrder:I = 0x10

.field static final greylist-max-o TRANSACTION_setEnabled:I = 0x5

.field static final greylist-max-o TRANSACTION_setEnabledExclusive:I = 0x7

.field static final greylist-max-o TRANSACTION_setEnabledExclusiveInCategory:I = 0x8

.field static final greylist-max-o TRANSACTION_setHighestPriority:I = 0xa

.field static final greylist-max-o TRANSACTION_setLowestPriority:I = 0xb

.field static final greylist-max-o TRANSACTION_setPriority:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 246
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 247
    const-string v0, "android.content.om.IOverlayManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/om/IOverlayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;
    .registers 3

    .line 255
    if-nez p0, :cond_4

    .line 256
    const/4 p0, 0x0

    return-object p0

    .line 258
    :cond_4
    const-string v0, "android.content.om.IOverlayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/om/IOverlayManager;

    if-eqz v1, :cond_13

    .line 260
    check-cast v0, Landroid/content/om/IOverlayManager;

    return-object v0

    .line 262
    :cond_13
    new-instance v0, Landroid/content/om/IOverlayManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/om/IOverlayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 271
    packed-switch p0, :pswitch_data_3c

    .line 339
    const/4 p0, 0x0

    return-object p0

    .line 335
    :pswitch_5
    const-string p0, "isDefaultPartitionOrder"

    return-object p0

    .line 331
    :pswitch_8
    const-string p0, "getPartitionOrder"

    return-object p0

    .line 327
    :pswitch_b
    const-string p0, "commit"

    return-object p0

    .line 323
    :pswitch_e
    const-string p0, "invalidateCachesForOverlay"

    return-object p0

    .line 319
    :pswitch_11
    const-string p0, "getDefaultOverlayPackages"

    return-object p0

    .line 315
    :pswitch_14
    const-string/jumbo p0, "setLowestPriority"

    return-object p0

    .line 311
    :pswitch_18
    const-string/jumbo p0, "setHighestPriority"

    return-object p0

    .line 307
    :pswitch_1c
    const-string/jumbo p0, "setPriority"

    return-object p0

    .line 303
    :pswitch_20
    const-string/jumbo p0, "setEnabledExclusiveInCategory"

    return-object p0

    .line 299
    :pswitch_24
    const-string/jumbo p0, "setEnabledExclusive"

    return-object p0

    .line 295
    :pswitch_28
    const-string p0, "enableWithConstraints"

    return-object p0

    .line 291
    :pswitch_2b
    const-string/jumbo p0, "setEnabled"

    return-object p0

    .line 287
    :pswitch_2f
    const-string p0, "getOverlayInfoByIdentifier"

    return-object p0

    .line 283
    :pswitch_32
    const-string p0, "getOverlayInfo"

    return-object p0

    .line 279
    :pswitch_35
    const-string p0, "getOverlayInfosForTarget"

    return-object p0

    .line 275
    :pswitch_38
    const-string p0, "getAllOverlays"

    return-object p0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2b
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    .line 372
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 374
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 266
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1047
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 346
    invoke-static {p1}, Landroid/content/om/IOverlayManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 350
    nop

    .line 351
    const-string v0, "android.content.om.IOverlayManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 352
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 355
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    return v1

    .line 358
    :cond_17
    packed-switch p1, :pswitch_data_188

    .line 549
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 542
    :pswitch_1f
    invoke-virtual {p0}, Landroid/content/om/IOverlayManager$Stub;->isDefaultPartitionOrder()Z

    move-result p1

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 545
    goto/16 :goto_186

    .line 535
    :pswitch_2b
    invoke-virtual {p0}, Landroid/content/om/IOverlayManager$Stub;->getPartitionOrder()Ljava/lang/String;

    move-result-object p1

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    goto/16 :goto_186

    .line 527
    :pswitch_37
    sget-object p1, Landroid/content/om/OverlayManagerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/om/OverlayManagerTransaction;

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {p0, p1}, Landroid/content/om/IOverlayManager$Stub;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    goto/16 :goto_186

    .line 516
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {p0, p1, p4}, Landroid/content/om/IOverlayManager$Stub;->invalidateCachesForOverlay(Ljava/lang/String;I)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    goto/16 :goto_186

    .line 508
    :pswitch_5d
    invoke-virtual {p0}, Landroid/content/om/IOverlayManager$Stub;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object p1

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 511
    goto/16 :goto_186

    .line 497
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, p1, p4}, Landroid/content/om/IOverlayManager$Stub;->setLowestPriority(Ljava/lang/String;I)Z

    move-result p1

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 504
    goto/16 :goto_186

    .line 485
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {p0, p1, p4}, Landroid/content/om/IOverlayManager$Stub;->setHighestPriority(Ljava/lang/String;I)Z

    move-result p1

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 492
    goto/16 :goto_186

    .line 471
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/om/IOverlayManager$Stub;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    .line 478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 480
    goto/16 :goto_186

    .line 459
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {p0, p1, p4}, Landroid/content/om/IOverlayManager$Stub;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result p1

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 466
    goto/16 :goto_186

    .line 445
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/om/IOverlayManager$Stub;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result p1

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 454
    goto/16 :goto_186

    .line 431
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 435
    sget-object v0, Landroid/content/om/OverlayConstraint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/om/IOverlayManager$Stub;->enableWithConstraints(Ljava/lang/String;ILjava/util/List;)Z

    move-result p1

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 440
    goto/16 :goto_186

    .line 417
    :pswitch_101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/om/IOverlayManager$Stub;->setEnabled(Ljava/lang/String;ZI)Z

    move-result p1

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 426
    goto :goto_186

    .line 405
    :pswitch_11b
    sget-object p1, Landroid/content/om/OverlayIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/om/OverlayIdentifier;

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, p1, p4}, Landroid/content/om/IOverlayManager$Stub;->getOverlayInfoByIdentifier(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p1

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 412
    goto :goto_186

    .line 393
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, p1, p4}, Landroid/content/om/IOverlayManager$Stub;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object p1

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 400
    goto :goto_186

    .line 381
    :pswitch_14b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, p1, p4}, Landroid/content/om/IOverlayManager$Stub;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 388
    goto :goto_186

    .line 363
    :pswitch_161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {p0, p1}, Landroid/content/om/IOverlayManager$Stub;->getAllOverlays(I)Ljava/util/Map;

    move-result-object p1

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    if-nez p1, :cond_176

    .line 368
    const/4 p1, -0x1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_186

    .line 370
    :cond_176
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    new-instance p2, Landroid/content/om/IOverlayManager$Stub$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3}, Landroid/content/om/IOverlayManager$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {p1, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 376
    nop

    .line 552
    :goto_186
    return v1

    nop

    :pswitch_data_188
    .packed-switch 0x1
        :pswitch_161
        :pswitch_14b
        :pswitch_135
        :pswitch_11b
        :pswitch_101
        :pswitch_e4
        :pswitch_c9
        :pswitch_b2
        :pswitch_97
        :pswitch_80
        :pswitch_69
        :pswitch_5d
        :pswitch_4a
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
