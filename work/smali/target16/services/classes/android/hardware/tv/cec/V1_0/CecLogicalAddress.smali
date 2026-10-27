.class public abstract Landroid/hardware/tv/cec/V1_0/CecLogicalAddress;
.super Ljava/lang/Object;
.source "CecLogicalAddress.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 22
    const-string p0, "TV"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 25
    const-string p0, "RECORDER_1"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 28
    const-string p0, "RECORDER_2"

    return-object p0

    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 31
    const-string p0, "TUNER_1"

    return-object p0

    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 34
    const-string p0, "PLAYBACK_1"

    return-object p0

    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 37
    const-string p0, "AUDIO_SYSTEM"

    return-object p0

    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 40
    const-string p0, "TUNER_2"

    return-object p0

    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 43
    const-string p0, "TUNER_3"

    return-object p0

    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 46
    const-string p0, "PLAYBACK_2"

    return-object p0

    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 49
    const-string p0, "RECORDER_3"

    return-object p0

    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 52
    const-string p0, "TUNER_4"

    return-object p0

    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 55
    const-string p0, "PLAYBACK_3"

    return-object p0

    :cond_4b
    const/16 v0, 0xe

    if-ne p0, v0, :cond_52

    .line 58
    const-string p0, "FREE_USE"

    return-object p0

    :cond_52
    const/16 v0, 0xf

    if-ne p0, v0, :cond_59

    .line 61
    const-string p0, "UNREGISTERED"

    return-object p0

    :cond_59
    if-ne p0, v0, :cond_5e

    .line 64
    const-string p0, "BROADCAST"

    return-object p0

    .line 66
    :cond_5e
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
