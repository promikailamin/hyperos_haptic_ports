.class public abstract Landroid/content/pm/IShortcutService$Stub;
.super Landroid/os/Binder;
.source "IShortcutService.java"

# interfaces
.implements Landroid/content/pm/IShortcutService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IShortcutService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IShortcutService"

.field static final greylist-max-o TRANSACTION_addDynamicShortcuts:I = 0x2

.field static final greylist-max-o TRANSACTION_applyRestore:I = 0x12

.field static final greylist-max-o TRANSACTION_createShortcutResultIntent:I = 0x7

.field static final greylist-max-o TRANSACTION_disableShortcuts:I = 0x8

.field static final greylist-max-o TRANSACTION_enableShortcuts:I = 0x9

.field static final greylist-max-o TRANSACTION_getBackupPayload:I = 0x11

.field static final greylist-max-o TRANSACTION_getIconMaxDimensions:I = 0xd

.field static final greylist-max-o TRANSACTION_getMaxShortcutCountPerActivity:I = 0xa

.field static final greylist-max-o TRANSACTION_getRateLimitResetTime:I = 0xc

.field static final greylist-max-o TRANSACTION_getRemainingCallCount:I = 0xb

.field static final blacklist TRANSACTION_getShareTargets:I = 0x14

.field static final blacklist TRANSACTION_getShortcuts:I = 0x17

.field static final blacklist TRANSACTION_hasShareTargets:I = 0x15

.field static final greylist-max-o TRANSACTION_isRequestPinItemSupported:I = 0x13

.field static final greylist-max-o TRANSACTION_onApplicationActive:I = 0x10

.field static final blacklist TRANSACTION_pushDynamicShortcut:I = 0x18

.field static final greylist-max-o TRANSACTION_removeAllDynamicShortcuts:I = 0x4

.field static final greylist-max-o TRANSACTION_removeDynamicShortcuts:I = 0x3

.field static final blacklist TRANSACTION_removeLongLivedShortcuts:I = 0x16

.field static final greylist-max-o TRANSACTION_reportShortcutUsed:I = 0xe

.field static final greylist-max-o TRANSACTION_requestPinShortcut:I = 0x6

.field static final greylist-max-o TRANSACTION_resetThrottling:I = 0xf

.field static final greylist-max-o TRANSACTION_setDynamicShortcuts:I = 0x1

.field static final greylist-max-o TRANSACTION_updateShortcuts:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 116
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 117
    const-string v0, "android.content.pm.IShortcutService"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IShortcutService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;
    .registers 3

    .line 125
    if-nez p0, :cond_4

    .line 126
    const/4 p0, 0x0

    return-object p0

    .line 128
    :cond_4
    const-string v0, "android.content.pm.IShortcutService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/IShortcutService;

    if-eqz v1, :cond_13

    .line 130
    check-cast v0, Landroid/content/pm/IShortcutService;

    return-object v0

    .line 132
    :cond_13
    new-instance v0, Landroid/content/pm/IShortcutService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/pm/IShortcutService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 141
    packed-switch p0, :pswitch_data_58

    .line 241
    const/4 p0, 0x0

    return-object p0

    .line 237
    :pswitch_5
    const-string/jumbo p0, "pushDynamicShortcut"

    return-object p0

    .line 233
    :pswitch_9
    const-string p0, "getShortcuts"

    return-object p0

    .line 229
    :pswitch_c
    const-string/jumbo p0, "removeLongLivedShortcuts"

    return-object p0

    .line 225
    :pswitch_10
    const-string p0, "hasShareTargets"

    return-object p0

    .line 221
    :pswitch_13
    const-string p0, "getShareTargets"

    return-object p0

    .line 217
    :pswitch_16
    const-string/jumbo p0, "isRequestPinItemSupported"

    return-object p0

    .line 213
    :pswitch_1a
    const-string p0, "applyRestore"

    return-object p0

    .line 209
    :pswitch_1d
    const-string p0, "getBackupPayload"

    return-object p0

    .line 205
    :pswitch_20
    const-string/jumbo p0, "onApplicationActive"

    return-object p0

    .line 201
    :pswitch_24
    const-string/jumbo p0, "resetThrottling"

    return-object p0

    .line 197
    :pswitch_28
    const-string/jumbo p0, "reportShortcutUsed"

    return-object p0

    .line 193
    :pswitch_2c
    const-string p0, "getIconMaxDimensions"

    return-object p0

    .line 189
    :pswitch_2f
    const-string p0, "getRateLimitResetTime"

    return-object p0

    .line 185
    :pswitch_32
    const-string p0, "getRemainingCallCount"

    return-object p0

    .line 181
    :pswitch_35
    const-string p0, "getMaxShortcutCountPerActivity"

    return-object p0

    .line 177
    :pswitch_38
    const-string p0, "enableShortcuts"

    return-object p0

    .line 173
    :pswitch_3b
    const-string p0, "disableShortcuts"

    return-object p0

    .line 169
    :pswitch_3e
    const-string p0, "createShortcutResultIntent"

    return-object p0

    .line 165
    :pswitch_41
    const-string/jumbo p0, "requestPinShortcut"

    return-object p0

    .line 161
    :pswitch_45
    const-string/jumbo p0, "updateShortcuts"

    return-object p0

    .line 157
    :pswitch_49
    const-string/jumbo p0, "removeAllDynamicShortcuts"

    return-object p0

    .line 153
    :pswitch_4d
    const-string/jumbo p0, "removeDynamicShortcuts"

    return-object p0

    .line 149
    :pswitch_51
    const-string p0, "addDynamicShortcuts"

    return-object p0

    .line 145
    :pswitch_54
    const-string/jumbo p0, "setDynamicShortcuts"

    return-object p0

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 136
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1064
    const/16 v0, 0x17

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 248
    invoke-static {p1}, Landroid/content/pm/IShortcutService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 252
    nop

    .line 253
    const-string v0, "android.content.pm.IShortcutService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 254
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 257
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    return v1

    .line 260
    :cond_17
    packed-switch p1, :pswitch_data_27c

    .line 568
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 556
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 558
    sget-object p4, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/ShortcutInfo;

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/pm/IShortcutService$Stub;->pushDynamicShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)V

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    goto/16 :goto_27a

    .line 542
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/pm/IShortcutService$Stub;->getShortcuts(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 551
    goto/16 :goto_27a

    .line 529
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/pm/IShortcutService$Stub;->removeLongLivedShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    goto/16 :goto_27a

    .line 515
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/pm/IShortcutService$Stub;->hasShareTargets(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 524
    goto/16 :goto_27a

    .line 501
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 503
    sget-object p4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/IntentFilter;

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 507
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/pm/IShortcutService$Stub;->getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 510
    goto/16 :goto_27a

    .line 489
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/IShortcutService$Stub;->isRequestPinItemSupported(II)Z

    move-result p1

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 496
    goto/16 :goto_27a

    .line 478
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/IShortcutService$Stub;->applyRestore([BI)V

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    goto/16 :goto_27a

    .line 468
    :pswitch_d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, p1}, Landroid/content/pm/IShortcutService$Stub;->getBackupPayload(I)[B

    move-result-object p1

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 473
    goto/16 :goto_27a

    .line 458
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, p1, p3}, Landroid/content/pm/IShortcutService$Stub;->onApplicationActive(Ljava/lang/String;I)V

    .line 463
    goto/16 :goto_27a

    .line 451
    :pswitch_f4
    invoke-virtual {p0}, Landroid/content/pm/IShortcutService$Stub;->resetThrottling()V

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    goto/16 :goto_27a

    .line 439
    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/pm/IShortcutService$Stub;->reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    goto/16 :goto_27a

    .line 427
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/IShortcutService$Stub;->getIconMaxDimensions(Ljava/lang/String;I)I

    move-result p1

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    goto/16 :goto_27a

    .line 415
    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/IShortcutService$Stub;->getRateLimitResetTime(Ljava/lang/String;I)J

    move-result-wide p1

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 422
    goto/16 :goto_27a

    .line 403
    :pswitch_141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/IShortcutService$Stub;->getRemainingCallCount(Ljava/lang/String;I)I

    move-result p1

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    goto/16 :goto_27a

    .line 391
    :pswitch_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/IShortcutService$Stub;->getMaxShortcutCountPerActivity(Ljava/lang/String;I)I

    move-result p1

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    goto/16 :goto_27a

    .line 378
    :pswitch_16f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/pm/IShortcutService$Stub;->enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    goto/16 :goto_27a

    .line 361
    :pswitch_186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 365
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/IShortcutService$Stub;->disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    goto/16 :goto_27a

    .line 347
    :pswitch_1ab
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 349
    sget-object p4, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/ShortcutInfo;

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/pm/IShortcutService$Stub;->createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;

    move-result-object p1

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 356
    goto/16 :goto_27a

    .line 331
    :pswitch_1cb
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 333
    sget-object p4, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/ShortcutInfo;

    .line 335
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/content/pm/IShortcutService$Stub;->requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z

    move-result p1

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 342
    goto/16 :goto_27a

    .line 317
    :pswitch_1f3
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 319
    sget-object p4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/ParceledListSlice;

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/pm/IShortcutService$Stub;->updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result p1

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 326
    goto :goto_27a

    .line 306
    :pswitch_212
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/IShortcutService$Stub;->removeAllDynamicShortcuts(Ljava/lang/String;I)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto :goto_27a

    .line 293
    :pswitch_225
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/pm/IShortcutService$Stub;->removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    goto :goto_27a

    .line 279
    :pswitch_23c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 281
    sget-object p4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/ParceledListSlice;

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/pm/IShortcutService$Stub;->addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result p1

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 288
    goto :goto_27a

    .line 265
    :pswitch_25b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 267
    sget-object p4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/ParceledListSlice;

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/pm/IShortcutService$Stub;->setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result p1

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 274
    nop

    .line 571
    :goto_27a
    return v1

    nop

    :pswitch_data_27c
    .packed-switch 0x1
        :pswitch_25b
        :pswitch_23c
        :pswitch_225
        :pswitch_212
        :pswitch_1f3
        :pswitch_1cb
        :pswitch_1ab
        :pswitch_186
        :pswitch_16f
        :pswitch_158
        :pswitch_141
        :pswitch_12a
        :pswitch_113
        :pswitch_fc
        :pswitch_f4
        :pswitch_e4
        :pswitch_d1
        :pswitch_be
        :pswitch_a7
        :pswitch_88
        :pswitch_6d
        :pswitch_56
        :pswitch_3b
        :pswitch_20
    .end packed-switch
.end method
