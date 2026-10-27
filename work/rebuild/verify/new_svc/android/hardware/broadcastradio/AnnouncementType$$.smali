.class public interface abstract Landroid/hardware/broadcastradio/AnnouncementType$$;
.super Ljava/lang/Object;
.source "AnnouncementType.java"


# direct methods
.method public static toString(B)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    .line 22
    const-string p0, "INVALID"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 23
    const-string p0, "EMERGENCY"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 24
    const-string p0, "WARNING"

    return-object p0

    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 25
    const-string p0, "TRAFFIC"

    return-object p0

    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 26
    const-string p0, "WEATHER"

    return-object p0

    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 27
    const-string p0, "NEWS"

    return-object p0

    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 28
    const-string p0, "EVENT"

    return-object p0

    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 29
    const-string p0, "SPORT"

    return-object p0

    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 30
    const-string p0, "MISC"

    return-object p0

    .line 31
    :cond_36
    invoke-static {p0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
