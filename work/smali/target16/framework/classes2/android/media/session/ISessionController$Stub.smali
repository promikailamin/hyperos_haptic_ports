.class public abstract Landroid/media/session/ISessionController$Stub;
.super Landroid/os/Binder;
.source "ISessionController.java"

# interfaces
.implements Landroid/media/session/ISessionController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionController"

.field static final greylist-max-o TRANSACTION_adjustVolume:I = 0xb

.field static final greylist-max-o TRANSACTION_fastForward:I = 0x1a

.field static final greylist-max-o TRANSACTION_getExtras:I = 0x24

.field static final greylist-max-o TRANSACTION_getFlags:I = 0x9

.field static final greylist-max-o TRANSACTION_getLaunchPendingIntent:I = 0x8

.field static final greylist-max-o TRANSACTION_getMetadata:I = 0x20

.field static final greylist-max-o TRANSACTION_getPackageName:I = 0x5

.field static final greylist-max-o TRANSACTION_getPlaybackState:I = 0x21

.field static final greylist-max-o TRANSACTION_getQueue:I = 0x22

.field static final greylist-max-o TRANSACTION_getQueueTitle:I = 0x23

.field static final greylist-max-o TRANSACTION_getRatingType:I = 0x25

.field static final blacklist TRANSACTION_getSessionInfo:I = 0x7

.field static final greylist-max-o TRANSACTION_getTag:I = 0x6

.field static final greylist-max-o TRANSACTION_getVolumeAttributes:I = 0xa

.field static final greylist-max-o TRANSACTION_next:I = 0x18

.field static final greylist-max-o TRANSACTION_pause:I = 0x16

.field static final greylist-max-o TRANSACTION_play:I = 0x11

.field static final greylist-max-o TRANSACTION_playFromMediaId:I = 0x12

.field static final greylist-max-o TRANSACTION_playFromSearch:I = 0x13

.field static final greylist-max-o TRANSACTION_playFromUri:I = 0x14

.field static final greylist-max-o TRANSACTION_prepare:I = 0xd

.field static final greylist-max-o TRANSACTION_prepareFromMediaId:I = 0xe

.field static final greylist-max-o TRANSACTION_prepareFromSearch:I = 0xf

.field static final greylist-max-o TRANSACTION_prepareFromUri:I = 0x10

.field static final greylist-max-o TRANSACTION_previous:I = 0x19

.field static final greylist-max-o TRANSACTION_rate:I = 0x1d

.field static final blacklist TRANSACTION_registerCallback:I = 0x3

.field static final greylist-max-o TRANSACTION_rewind:I = 0x1b

.field static final greylist-max-o TRANSACTION_seekTo:I = 0x1c

.field static final greylist-max-o TRANSACTION_sendCommand:I = 0x1

.field static final greylist-max-o TRANSACTION_sendCustomAction:I = 0x1f

.field static final greylist-max-o TRANSACTION_sendMediaButton:I = 0x2

.field static final blacklist TRANSACTION_setPlaybackSpeed:I = 0x1e

.field static final greylist-max-o TRANSACTION_setVolumeTo:I = 0xc

.field static final greylist-max-o TRANSACTION_skipToQueueItem:I = 0x15

.field static final greylist-max-o TRANSACTION_stop:I = 0x17

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 155
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 156
    const-string v0, "android.media.session.ISessionController"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;
    .registers 3

    .line 164
    if-nez p0, :cond_4

    .line 165
    const/4 p0, 0x0

    return-object p0

    .line 167
    :cond_4
    const-string v0, "android.media.session.ISessionController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/session/ISessionController;

    if-eqz v1, :cond_13

    .line 169
    check-cast v0, Landroid/media/session/ISessionController;

    return-object v0

    .line 171
    :cond_13
    new-instance v0, Landroid/media/session/ISessionController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/session/ISessionController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 180
    packed-switch p0, :pswitch_data_74

    .line 332
    const/4 p0, 0x0

    return-object p0

    .line 328
    :pswitch_5
    const-string p0, "getRatingType"

    return-object p0

    .line 324
    :pswitch_8
    const-string p0, "getExtras"

    return-object p0

    .line 320
    :pswitch_b
    const-string p0, "getQueueTitle"

    return-object p0

    .line 316
    :pswitch_e
    const-string p0, "getQueue"

    return-object p0

    .line 312
    :pswitch_11
    const-string p0, "getPlaybackState"

    return-object p0

    .line 308
    :pswitch_14
    const-string p0, "getMetadata"

    return-object p0

    .line 304
    :pswitch_17
    const-string p0, "sendCustomAction"

    return-object p0

    .line 300
    :pswitch_1a
    const-string p0, "setPlaybackSpeed"

    return-object p0

    .line 296
    :pswitch_1d
    const-string p0, "rate"

    return-object p0

    .line 292
    :pswitch_20
    const-string p0, "seekTo"

    return-object p0

    .line 288
    :pswitch_23
    const-string p0, "rewind"

    return-object p0

    .line 284
    :pswitch_26
    const-string p0, "fastForward"

    return-object p0

    .line 280
    :pswitch_29
    const-string p0, "previous"

    return-object p0

    .line 276
    :pswitch_2c
    const-string p0, "next"

    return-object p0

    .line 272
    :pswitch_2f
    const-string p0, "stop"

    return-object p0

    .line 268
    :pswitch_32
    const-string p0, "pause"

    return-object p0

    .line 264
    :pswitch_35
    const-string p0, "skipToQueueItem"

    return-object p0

    .line 260
    :pswitch_38
    const-string p0, "playFromUri"

    return-object p0

    .line 256
    :pswitch_3b
    const-string p0, "playFromSearch"

    return-object p0

    .line 252
    :pswitch_3e
    const-string p0, "playFromMediaId"

    return-object p0

    .line 248
    :pswitch_41
    const-string p0, "play"

    return-object p0

    .line 244
    :pswitch_44
    const-string p0, "prepareFromUri"

    return-object p0

    .line 240
    :pswitch_47
    const-string p0, "prepareFromSearch"

    return-object p0

    .line 236
    :pswitch_4a
    const-string p0, "prepareFromMediaId"

    return-object p0

    .line 232
    :pswitch_4d
    const-string p0, "prepare"

    return-object p0

    .line 228
    :pswitch_50
    const-string p0, "setVolumeTo"

    return-object p0

    .line 224
    :pswitch_53
    const-string p0, "adjustVolume"

    return-object p0

    .line 220
    :pswitch_56
    const-string p0, "getVolumeAttributes"

    return-object p0

    .line 216
    :pswitch_59
    const-string p0, "getFlags"

    return-object p0

    .line 212
    :pswitch_5c
    const-string p0, "getLaunchPendingIntent"

    return-object p0

    .line 208
    :pswitch_5f
    const-string p0, "getSessionInfo"

    return-object p0

    .line 204
    :pswitch_62
    const-string p0, "getTag"

    return-object p0

    .line 200
    :pswitch_65
    const-string p0, "getPackageName"

    return-object p0

    .line 196
    :pswitch_68
    const-string p0, "unregisterCallback"

    return-object p0

    .line 192
    :pswitch_6b
    const-string p0, "registerCallback"

    return-object p0

    .line 188
    :pswitch_6e
    const-string p0, "sendMediaButton"

    return-object p0

    .line 184
    :pswitch_71
    const-string p0, "sendCommand"

    return-object p0

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
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

    .line 175
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1404
    const/16 v0, 0x24

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 339
    invoke-static {p1}, Landroid/media/session/ISessionController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 343
    nop

    .line 344
    const-string v0, "android.media.session.ISessionController"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 345
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 348
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    return v1

    .line 351
    :cond_17
    packed-switch p1, :pswitch_data_2e0

    .line 729
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 722
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getRatingType()I

    move-result p1

    .line 723
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    goto/16 :goto_2df

    .line 715
    :pswitch_2b
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 718
    goto/16 :goto_2df

    .line 702
    :pswitch_37
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 703
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    if-eqz p1, :cond_48

    .line 705
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    invoke-static {p1, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_2df

    .line 709
    :cond_48
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    goto/16 :goto_2df

    .line 695
    :pswitch_4e
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getQueue()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 696
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 698
    goto/16 :goto_2df

    .line 688
    :pswitch_5a
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    .line 689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 691
    goto/16 :goto_2df

    .line 681
    :pswitch_66
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 684
    goto/16 :goto_2df

    .line 669
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 673
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/session/ISessionController$Stub;->sendCustomAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    goto/16 :goto_2df

    .line 658
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {p0, p1, p4}, Landroid/media/session/ISessionController$Stub;->setPlaybackSpeed(Ljava/lang/String;F)V

    .line 663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    goto/16 :goto_2df

    .line 647
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 649
    sget-object p4, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/Rating;

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 651
    invoke-virtual {p0, p1, p4}, Landroid/media/session/ISessionController$Stub;->rate(Ljava/lang/String;Landroid/media/Rating;)V

    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    goto/16 :goto_2df

    .line 636
    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    invoke-virtual {p0, p1, v2, v3}, Landroid/media/session/ISessionController$Stub;->seekTo(Ljava/lang/String;J)V

    .line 641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    goto/16 :goto_2df

    .line 627
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, p1}, Landroid/media/session/ISessionController$Stub;->rewind(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    goto/16 :goto_2df

    .line 618
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 619
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {p0, p1}, Landroid/media/session/ISessionController$Stub;->fastForward(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    goto/16 :goto_2df

    .line 609
    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {p0, p1}, Landroid/media/session/ISessionController$Stub;->previous(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    goto/16 :goto_2df

    .line 600
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {p0, p1}, Landroid/media/session/ISessionController$Stub;->next(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    goto/16 :goto_2df

    .line 591
    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {p0, p1}, Landroid/media/session/ISessionController$Stub;->stop(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    goto/16 :goto_2df

    .line 582
    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {p0, p1}, Landroid/media/session/ISessionController$Stub;->pause(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    goto/16 :goto_2df

    .line 571
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    invoke-virtual {p0, p1, v2, v3}, Landroid/media/session/ISessionController$Stub;->skipToQueueItem(Ljava/lang/String;J)V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    goto/16 :goto_2df

    .line 558
    :pswitch_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 560
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    .line 562
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/session/ISessionController$Stub;->playFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    goto/16 :goto_2df

    .line 545
    :pswitch_156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 549
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/session/ISessionController$Stub;->playFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    goto/16 :goto_2df

    .line 532
    :pswitch_171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 536
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/session/ISessionController$Stub;->playFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    goto/16 :goto_2df

    .line 523
    :pswitch_18c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, p1}, Landroid/media/session/ISessionController$Stub;->play(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    goto/16 :goto_2df

    .line 510
    :pswitch_19b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 512
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    .line 514
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/session/ISessionController$Stub;->prepareFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    goto/16 :goto_2df

    .line 497
    :pswitch_1ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 501
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/session/ISessionController$Stub;->prepareFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    goto/16 :goto_2df

    .line 484
    :pswitch_1d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 488
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/session/ISessionController$Stub;->prepareFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    goto/16 :goto_2df

    .line 475
    :pswitch_1f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, p1}, Landroid/media/session/ISessionController$Stub;->prepare(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    goto/16 :goto_2df

    .line 460
    :pswitch_1ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/media/session/ISessionController$Stub;->setVolumeTo(Ljava/lang/String;Ljava/lang/String;II)V

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    goto/16 :goto_2df

    .line 445
    :pswitch_21a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/media/session/ISessionController$Stub;->adjustVolume(Ljava/lang/String;Ljava/lang/String;II)V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    goto/16 :goto_2df

    .line 437
    :pswitch_235
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p1

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 440
    goto/16 :goto_2df

    .line 430
    :pswitch_241
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getFlags()J

    move-result-wide p1

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 433
    goto/16 :goto_2df

    .line 423
    :pswitch_24d
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 426
    goto/16 :goto_2df

    .line 416
    :pswitch_259
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getSessionInfo()Landroid/os/Bundle;

    move-result-object p1

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 419
    goto/16 :goto_2df

    .line 409
    :pswitch_265
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getTag()Ljava/lang/String;

    move-result-object p1

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    goto :goto_2df

    .line 402
    :pswitch_270
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    goto :goto_2df

    .line 394
    :pswitch_27b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/session/ISessionControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object p1

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {p0, p1}, Landroid/media/session/ISessionController$Stub;->unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    goto :goto_2df

    .line 383
    :pswitch_28d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/session/ISessionControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object p4

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, p1, p4}, Landroid/media/session/ISessionController$Stub;->registerCallback(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    goto :goto_2df

    .line 371
    :pswitch_2a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 373
    sget-object p4, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/KeyEvent;

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, p1, p4}, Landroid/media/session/ISessionController$Stub;->sendMediaButton(Ljava/lang/String;Landroid/view/KeyEvent;)Z

    move-result p1

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 378
    goto :goto_2df

    .line 356
    :pswitch_2bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 360
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 362
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/media/session/ISessionController$Stub;->sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    nop

    .line 732
    :goto_2df
    return v1

    :pswitch_data_2e0
    .packed-switch 0x1
        :pswitch_2bd
        :pswitch_2a3
        :pswitch_28d
        :pswitch_27b
        :pswitch_270
        :pswitch_265
        :pswitch_259
        :pswitch_24d
        :pswitch_241
        :pswitch_235
        :pswitch_21a
        :pswitch_1ff
        :pswitch_1f0
        :pswitch_1d5
        :pswitch_1ba
        :pswitch_19b
        :pswitch_18c
        :pswitch_171
        :pswitch_156
        :pswitch_137
        :pswitch_124
        :pswitch_115
        :pswitch_106
        :pswitch_f7
        :pswitch_e8
        :pswitch_d9
        :pswitch_ca
        :pswitch_b7
        :pswitch_a0
        :pswitch_8d
        :pswitch_72
        :pswitch_66
        :pswitch_5a
        :pswitch_4e
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
