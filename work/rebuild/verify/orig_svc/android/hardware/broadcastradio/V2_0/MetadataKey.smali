.class public abstract Landroid/hardware/broadcastradio/V2_0/MetadataKey;
.super Ljava/lang/Object;
.source "MetadataKey.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 82
    const-string p0, "RDS_PS"

    return-object p0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 85
    const-string p0, "RDS_PTY"

    return-object p0

    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 88
    const-string p0, "RBDS_PTY"

    return-object p0

    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 91
    const-string p0, "RDS_RT"

    return-object p0

    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 94
    const-string p0, "SONG_TITLE"

    return-object p0

    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    .line 97
    const-string p0, "SONG_ARTIST"

    return-object p0

    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    .line 100
    const-string p0, "SONG_ALBUM"

    return-object p0

    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    .line 103
    const-string p0, "STATION_ICON"

    return-object p0

    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    .line 106
    const-string p0, "ALBUM_ART"

    return-object p0

    :cond_38
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3f

    .line 109
    const-string p0, "PROGRAM_NAME"

    return-object p0

    :cond_3f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_46

    .line 112
    const-string p0, "DAB_ENSEMBLE_NAME"

    return-object p0

    :cond_46
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4d

    .line 115
    const-string p0, "DAB_ENSEMBLE_NAME_SHORT"

    return-object p0

    :cond_4d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_54

    .line 118
    const-string p0, "DAB_SERVICE_NAME"

    return-object p0

    :cond_54
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5b

    .line 121
    const-string p0, "DAB_SERVICE_NAME_SHORT"

    return-object p0

    :cond_5b
    const/16 v0, 0xf

    if-ne p0, v0, :cond_62

    .line 124
    const-string p0, "DAB_COMPONENT_NAME"

    return-object p0

    :cond_62
    const/16 v0, 0x10

    if-ne p0, v0, :cond_69

    .line 127
    const-string p0, "DAB_COMPONENT_NAME_SHORT"

    return-object p0

    .line 129
    :cond_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
