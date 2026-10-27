.class public abstract Landroid/media/session/ISessionCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/media/session/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionCallback"

.field static final greylist-max-o TRANSACTION_onAdjustVolume:I = 0x17

.field static final greylist-max-o TRANSACTION_onCommand:I = 0x1

.field static final greylist-max-o TRANSACTION_onCustomAction:I = 0x16

.field static final greylist-max-o TRANSACTION_onFastForward:I = 0x11

.field static final greylist-max-o TRANSACTION_onMediaButton:I = 0x2

.field static final greylist-max-o TRANSACTION_onMediaButtonFromController:I = 0x3

.field static final greylist-max-o TRANSACTION_onNext:I = 0xf

.field static final greylist-max-o TRANSACTION_onPause:I = 0xd

.field static final greylist-max-o TRANSACTION_onPlay:I = 0x8

.field static final greylist-max-o TRANSACTION_onPlayFromMediaId:I = 0x9

.field static final greylist-max-o TRANSACTION_onPlayFromSearch:I = 0xa

.field static final greylist-max-o TRANSACTION_onPlayFromUri:I = 0xb

.field static final greylist-max-o TRANSACTION_onPrepare:I = 0x4

.field static final greylist-max-o TRANSACTION_onPrepareFromMediaId:I = 0x5

.field static final greylist-max-o TRANSACTION_onPrepareFromSearch:I = 0x6

.field static final greylist-max-o TRANSACTION_onPrepareFromUri:I = 0x7

.field static final greylist-max-o TRANSACTION_onPrevious:I = 0x10

.field static final greylist-max-o TRANSACTION_onRate:I = 0x14

.field static final greylist-max-o TRANSACTION_onRewind:I = 0x12

.field static final greylist-max-o TRANSACTION_onSeekTo:I = 0x13

.field static final blacklist TRANSACTION_onSetPlaybackSpeed:I = 0x15

.field static final greylist-max-o TRANSACTION_onSetVolumeTo:I = 0x18

.field static final greylist-max-o TRANSACTION_onSkipToTrack:I = 0xc

.field static final greylist-max-o TRANSACTION_onStop:I = 0xe


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 102
    const-string v0, "android.media.session.ISessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionCallback;
    .registers 3

    .line 110
    if-nez p0, :cond_4

    .line 111
    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_4
    const-string v0, "android.media.session.ISessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/session/ISessionCallback;

    if-eqz v1, :cond_13

    .line 115
    check-cast v0, Landroid/media/session/ISessionCallback;

    return-object v0

    .line 117
    :cond_13
    new-instance v0, Landroid/media/session/ISessionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 126
    packed-switch p0, :pswitch_data_4e

    .line 226
    const/4 p0, 0x0

    return-object p0

    .line 222
    :pswitch_5
    const-string p0, "onSetVolumeTo"

    return-object p0

    .line 218
    :pswitch_8
    const-string p0, "onAdjustVolume"

    return-object p0

    .line 214
    :pswitch_b
    const-string p0, "onCustomAction"

    return-object p0

    .line 210
    :pswitch_e
    const-string p0, "onSetPlaybackSpeed"

    return-object p0

    .line 206
    :pswitch_11
    const-string p0, "onRate"

    return-object p0

    .line 202
    :pswitch_14
    const-string p0, "onSeekTo"

    return-object p0

    .line 198
    :pswitch_17
    const-string p0, "onRewind"

    return-object p0

    .line 194
    :pswitch_1a
    const-string p0, "onFastForward"

    return-object p0

    .line 190
    :pswitch_1d
    const-string p0, "onPrevious"

    return-object p0

    .line 186
    :pswitch_20
    const-string p0, "onNext"

    return-object p0

    .line 182
    :pswitch_23
    const-string p0, "onStop"

    return-object p0

    .line 178
    :pswitch_26
    const-string p0, "onPause"

    return-object p0

    .line 174
    :pswitch_29
    const-string p0, "onSkipToTrack"

    return-object p0

    .line 170
    :pswitch_2c
    const-string p0, "onPlayFromUri"

    return-object p0

    .line 166
    :pswitch_2f
    const-string p0, "onPlayFromSearch"

    return-object p0

    .line 162
    :pswitch_32
    const-string p0, "onPlayFromMediaId"

    return-object p0

    .line 158
    :pswitch_35
    const-string p0, "onPlay"

    return-object p0

    .line 154
    :pswitch_38
    const-string p0, "onPrepareFromUri"

    return-object p0

    .line 150
    :pswitch_3b
    const-string p0, "onPrepareFromSearch"

    return-object p0

    .line 146
    :pswitch_3e
    const-string p0, "onPrepareFromMediaId"

    return-object p0

    .line 142
    :pswitch_41
    const-string p0, "onPrepare"

    return-object p0

    .line 138
    :pswitch_44
    const-string p0, "onMediaButtonFromController"

    return-object p0

    .line 134
    :pswitch_47
    const-string p0, "onMediaButton"

    return-object p0

    .line 130
    :pswitch_4a
    const-string p0, "onCommand"

    return-object p0

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
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

    .line 121
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1006
    const/16 v0, 0x17

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 233
    invoke-static {p1}, Landroid/media/session/ISessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 237
    nop

    .line 238
    const-string v3, "android.media.session.ISessionCallback"

    const/4 v7, 0x1

    if-lt p1, v7, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 239
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 242
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    return v7

    .line 245
    :cond_17
    packed-switch p1, :pswitch_data_2bc

    .line 591
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 578
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/session/ISessionCallback$Stub;->onSetVolumeTo(Ljava/lang/String;III)V

    .line 587
    goto/16 :goto_2bb

    .line 564
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/session/ISessionCallback$Stub;->onAdjustVolume(Ljava/lang/String;III)V

    .line 573
    goto/16 :goto_2bb

    .line 548
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 552
    move v4, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 554
    move v5, v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 556
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    move-object v0, p0

    move v2, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onCustomAction(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 559
    goto/16 :goto_2bb

    .line 534
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/session/ISessionCallback$Stub;->onSetPlaybackSpeed(Ljava/lang/String;IIF)V

    .line 543
    goto/16 :goto_2bb

    .line 520
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 526
    sget-object v5, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/Rating;

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/session/ISessionCallback$Stub;->onRate(Ljava/lang/String;IILandroid/media/Rating;)V

    .line 529
    goto/16 :goto_2bb

    .line 506
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onSeekTo(Ljava/lang/String;IIJ)V

    .line 515
    goto/16 :goto_2bb

    .line 494
    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onRewind(Ljava/lang/String;II)V

    .line 501
    goto/16 :goto_2bb

    .line 482
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onFastForward(Ljava/lang/String;II)V

    .line 489
    goto/16 :goto_2bb

    .line 470
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onPrevious(Ljava/lang/String;II)V

    .line 477
    goto/16 :goto_2bb

    .line 458
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onNext(Ljava/lang/String;II)V

    .line 465
    goto/16 :goto_2bb

    .line 446
    :pswitch_111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onStop(Ljava/lang/String;II)V

    .line 453
    goto/16 :goto_2bb

    .line 434
    :pswitch_125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onPause(Ljava/lang/String;II)V

    .line 441
    goto/16 :goto_2bb

    .line 420
    :pswitch_139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onSkipToTrack(Ljava/lang/String;IIJ)V

    .line 429
    goto/16 :goto_2bb

    .line 404
    :pswitch_152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 410
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    .line 412
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V

    .line 415
    goto/16 :goto_2bb

    .line 388
    :pswitch_179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 396
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 399
    goto/16 :goto_2bb

    .line 372
    :pswitch_19b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 380
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 383
    goto/16 :goto_2bb

    .line 360
    :pswitch_1bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onPlay(Ljava/lang/String;II)V

    .line 367
    goto/16 :goto_2bb

    .line 344
    :pswitch_1d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 350
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 352
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onPrepareFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V

    .line 355
    goto/16 :goto_2bb

    .line 328
    :pswitch_1f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 336
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onPrepareFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 339
    goto/16 :goto_2bb

    .line 312
    :pswitch_218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 320
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionCallback$Stub;->onPrepareFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 323
    goto/16 :goto_2bb

    .line 300
    :pswitch_23a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onPrepare(Ljava/lang/String;II)V

    .line 307
    goto :goto_2bb

    .line 286
    :pswitch_24d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 292
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/session/ISessionCallback$Stub;->onMediaButtonFromController(Ljava/lang/String;IILandroid/content/Intent;)V

    .line 295
    goto :goto_2bb

    .line 268
    :pswitch_268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 274
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 278
    sget-object v8, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ResultReceiver;

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    move-object v0, p0

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroid/media/session/ISessionCallback$Stub;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V

    .line 281
    goto :goto_2bb

    .line 250
    :pswitch_291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 258
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 260
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    move-object v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/session/ISessionCallback$Stub;->onCommand(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 263
    nop

    .line 594
    :goto_2bb
    return v7

    :pswitch_data_2bc
    .packed-switch 0x1
        :pswitch_291
        :pswitch_268
        :pswitch_24d
        :pswitch_23a
        :pswitch_218
        :pswitch_1f6
        :pswitch_1d1
        :pswitch_1bd
        :pswitch_19b
        :pswitch_179
        :pswitch_152
        :pswitch_139
        :pswitch_125
        :pswitch_111
        :pswitch_fd
        :pswitch_e9
        :pswitch_d5
        :pswitch_c1
        :pswitch_a8
        :pswitch_8c
        :pswitch_74
        :pswitch_4f
        :pswitch_37
        :pswitch_1f
    .end packed-switch
.end method
