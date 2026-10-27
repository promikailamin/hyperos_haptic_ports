.class public final Landroid/hardware/broadcastradio/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/broadcastradio/Metadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _tag:I

.field public _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 424
    new-instance v0, Landroid/hardware/broadcastradio/Metadata$1;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/Metadata$1;-><init>()V

    sput-object v0, Landroid/hardware/broadcastradio/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Metadata;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/broadcastradio/Metadata-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/broadcastradio/Metadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final _assertTag(I)V
    .registers 5

    .line 697
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    .line 698
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Metadata;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getTag()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Metadata;->_tagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is available."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final _set(ILjava/lang/Object;)V
    .registers 3

    .line 733
    iput p1, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 734
    iput-object p2, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    return-void
.end method

.method public final _tagString(I)Ljava/lang/String;
    .registers 4

    packed-switch p1, :pswitch_data_6e

    .line 729
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 727
    :pswitch_1b
    const-string p0, "hdSubChannelsAvailable"

    return-object p0

    .line 726
    :pswitch_1e
    const-string p0, "hdStationNameLong"

    return-object p0

    .line 725
    :pswitch_21
    const-string p0, "hdStationNameShort"

    return-object p0

    .line 724
    :pswitch_24
    const-string/jumbo p0, "ufids"

    return-object p0

    .line 723
    :pswitch_28
    const-string p0, "commercial"

    return-object p0

    .line 722
    :pswitch_2b
    const-string p0, "commentActualText"

    return-object p0

    .line 721
    :pswitch_2e
    const-string p0, "commentShortDescription"

    return-object p0

    .line 720
    :pswitch_31
    const-string p0, "genre"

    return-object p0

    .line 719
    :pswitch_34
    const-string p0, "dabComponentNameShort"

    return-object p0

    .line 718
    :pswitch_37
    const-string p0, "dabComponentName"

    return-object p0

    .line 717
    :pswitch_3a
    const-string p0, "dabServiceNameShort"

    return-object p0

    .line 716
    :pswitch_3d
    const-string p0, "dabServiceName"

    return-object p0

    .line 715
    :pswitch_40
    const-string p0, "dabEnsembleNameShort"

    return-object p0

    .line 714
    :pswitch_43
    const-string p0, "dabEnsembleName"

    return-object p0

    .line 713
    :pswitch_46
    const-string/jumbo p0, "programName"

    return-object p0

    .line 712
    :pswitch_4a
    const-string p0, "albumArt"

    return-object p0

    .line 711
    :pswitch_4d
    const-string/jumbo p0, "stationIcon"

    return-object p0

    .line 710
    :pswitch_51
    const-string/jumbo p0, "songAlbum"

    return-object p0

    .line 709
    :pswitch_55
    const-string/jumbo p0, "songArtist"

    return-object p0

    .line 708
    :pswitch_59
    const-string/jumbo p0, "songTitle"

    return-object p0

    .line 707
    :pswitch_5d
    const-string/jumbo p0, "rdsRt"

    return-object p0

    .line 706
    :pswitch_61
    const-string/jumbo p0, "rbdsPty"

    return-object p0

    .line 705
    :pswitch_65
    const-string/jumbo p0, "rdsPty"

    return-object p0

    .line 704
    :pswitch_69
    const-string/jumbo p0, "rdsPs"

    return-object p0

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method public describeContents()I
    .registers 1

    .line 645
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getTag()I

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 684
    :cond_8
    instance-of v2, p1, Landroid/hardware/broadcastradio/Metadata;

    if-nez v2, :cond_d

    return v1

    .line 685
    :cond_d
    check-cast p1, Landroid/hardware/broadcastradio/Metadata;

    .line 686
    iget v2, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    iget v3, p1, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    if-eq v2, v3, :cond_16

    return v1

    .line 687
    :cond_16
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    iget-object p1, p1, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    return v1

    :cond_21
    return v0
.end method

.method public getAlbumArt()I
    .registers 2

    const/16 v0, 0x8

    .line 186
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 187
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getCommentActualText()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x12

    .line 336
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 337
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCommentShortDescription()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x11

    .line 321
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 322
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCommercial()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x13

    .line 351
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 352
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDabComponentName()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xe

    .line 276
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 277
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDabComponentNameShort()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xf

    .line 291
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 292
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDabEnsembleName()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xa

    .line 216
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 217
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDabEnsembleNameShort()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xb

    .line 231
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 232
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDabServiceName()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xc

    .line 246
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 247
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDabServiceNameShort()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xd

    .line 261
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 262
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getGenre()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x10

    .line 306
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 307
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getHdStationNameLong()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x16

    .line 396
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 397
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getHdStationNameShort()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x15

    .line 381
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 382
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getHdSubChannelsAvailable()I
    .registers 2

    const/16 v0, 0x17

    .line 411
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 412
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getProgramName()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x9

    .line 201
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 202
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRbdsPty()I
    .registers 2

    const/4 v0, 0x2

    .line 96
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 97
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getRdsPs()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 67
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRdsPty()I
    .registers 2

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 82
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getRdsRt()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x3

    .line 111
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 112
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSongAlbum()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x6

    .line 156
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 157
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSongArtist()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x5

    .line 141
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 142
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSongTitle()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x4

    .line 126
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 127
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getStability()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getStationIcon()I
    .registers 2

    const/4 v0, 0x7

    .line 171
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 172
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTag()I
    .registers 1

    .line 56
    iget p0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    return p0
.end method

.method public getUfids()[Ljava/lang/String;
    .registers 2

    const/16 v0, 0x14

    .line 366
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 367
    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 693
    iget v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_f4

    .line 639
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "union: unknown tag: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 635
    :pswitch_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 636
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 630
    :pswitch_2b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 631
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 625
    :pswitch_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 626
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 620
    :pswitch_3b
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 621
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 615
    :pswitch_43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 616
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 610
    :pswitch_4b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 611
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 605
    :pswitch_53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 606
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 600
    :pswitch_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 601
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 595
    :pswitch_63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 596
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 590
    :pswitch_6b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 591
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 585
    :pswitch_73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 586
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 580
    :pswitch_7b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 581
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 575
    :pswitch_83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 576
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 570
    :pswitch_8b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 571
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 565
    :pswitch_93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 566
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 560
    :pswitch_9b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 561
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 555
    :pswitch_a7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 556
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 550
    :pswitch_b3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 551
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 545
    :pswitch_bb
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 546
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 540
    :pswitch_c3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 541
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 535
    :pswitch_cb
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 536
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 530
    :pswitch_d3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 531
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 525
    :pswitch_df
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 526
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    .line 520
    :pswitch_eb
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 521
    invoke-virtual {p0, v0, p1}, Landroid/hardware/broadcastradio/Metadata;->_set(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_df
        :pswitch_d3
        :pswitch_cb
        :pswitch_c3
        :pswitch_bb
        :pswitch_b3
        :pswitch_a7
        :pswitch_9b
        :pswitch_93
        :pswitch_8b
        :pswitch_83
        :pswitch_7b
        :pswitch_73
        :pswitch_6b
        :pswitch_63
        :pswitch_5b
        :pswitch_53
        :pswitch_4b
        :pswitch_43
        :pswitch_3b
        :pswitch_33
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 652
    iget v0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_2c6

    .line 678
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :pswitch_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.hdSubChannelsAvailable("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdSubChannelsAvailable()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 675
    :pswitch_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.hdStationNameLong("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameLong()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 674
    :pswitch_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.hdStationNameShort("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameShort()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 673
    :pswitch_74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.ufids("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getUfids()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 672
    :pswitch_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.commercial("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommercial()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 671
    :pswitch_ae
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.commentActualText("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommentActualText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 670
    :pswitch_cb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.commentShortDescription("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommentShortDescription()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 669
    :pswitch_e8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.genre("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getGenre()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 668
    :pswitch_105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabComponentNameShort("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentNameShort()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 667
    :pswitch_122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabComponentName("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 666
    :pswitch_13f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabServiceNameShort("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceNameShort()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 665
    :pswitch_15c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabServiceName("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 664
    :pswitch_179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabEnsembleNameShort("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleNameShort()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 663
    :pswitch_196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.dabEnsembleName("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 662
    :pswitch_1b3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.programName("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getProgramName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 661
    :pswitch_1d0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.albumArt("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getAlbumArt()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 660
    :pswitch_1e9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.stationIcon("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getStationIcon()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 659
    :pswitch_202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.songAlbum("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongAlbum()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 658
    :pswitch_21f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.songArtist("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongArtist()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 657
    :pswitch_23c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.songTitle("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 656
    :pswitch_259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.rdsRt("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsRt()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 655
    :pswitch_276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.rbdsPty("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRbdsPty()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 654
    :pswitch_28f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.rdsPty("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsPty()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 653
    :pswitch_2a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata.rdsPs("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsPs()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_2c6
    .packed-switch 0x0
        :pswitch_2a8
        :pswitch_28f
        :pswitch_276
        :pswitch_259
        :pswitch_23c
        :pswitch_21f
        :pswitch_202
        :pswitch_1e9
        :pswitch_1d0
        :pswitch_1b3
        :pswitch_196
        :pswitch_179
        :pswitch_15c
        :pswitch_13f
        :pswitch_122
        :pswitch_105
        :pswitch_e8
        :pswitch_cb
        :pswitch_ae
        :pswitch_91
        :pswitch_74
        :pswitch_57
        :pswitch_3a
        :pswitch_21
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 437
    iget p2, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget p2, p0, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    packed-switch p2, :pswitch_data_cc

    return-void

    .line 509
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdSubChannelsAvailable()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 506
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameLong()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 503
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameShort()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 500
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getUfids()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void

    .line 497
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommercial()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 494
    :pswitch_33
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommentActualText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 491
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getCommentShortDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 488
    :pswitch_43
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getGenre()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 485
    :pswitch_4b
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentNameShort()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 482
    :pswitch_53
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 479
    :pswitch_5b
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceNameShort()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 476
    :pswitch_63
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 473
    :pswitch_6b
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleNameShort()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 470
    :pswitch_73
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 467
    :pswitch_7b
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getProgramName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 464
    :pswitch_83
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getAlbumArt()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 461
    :pswitch_8b
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getStationIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 458
    :pswitch_93
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongAlbum()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 455
    :pswitch_9b
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongArtist()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 452
    :pswitch_a3
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getSongTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 449
    :pswitch_ab
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsRt()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 446
    :pswitch_b3
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRbdsPty()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 443
    :pswitch_bb
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsPty()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 440
    :pswitch_c3
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/Metadata;->getRdsPs()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_bb
        :pswitch_b3
        :pswitch_ab
        :pswitch_a3
        :pswitch_9b
        :pswitch_93
        :pswitch_8b
        :pswitch_83
        :pswitch_7b
        :pswitch_73
        :pswitch_6b
        :pswitch_63
        :pswitch_5b
        :pswitch_53
        :pswitch_4b
        :pswitch_43
        :pswitch_3b
        :pswitch_33
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
