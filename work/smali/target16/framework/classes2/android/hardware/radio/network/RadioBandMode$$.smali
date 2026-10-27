.class public interface abstract Landroid/hardware/radio/network/RadioBandMode$$;
.super Ljava/lang/Object;
.source "RadioBandMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/RadioBandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 74
    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 75
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 77
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 78
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 80
    nop

    :goto_26
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v3, v0, :cond_4f

    .line 81
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/network/RadioBandMode$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 84
    :cond_3a
    const-class v1, [I

    if-ne v0, v1, :cond_54

    .line 85
    check-cast p0, [I

    array-length v0, p0

    :goto_41
    if-ge v3, v0, :cond_4f

    aget v1, p0, v3

    .line 86
    invoke-static {v1}, Landroid/hardware/radio/network/RadioBandMode$$;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 89
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 84
    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .registers 2

    .line 52
    if-nez p0, :cond_5

    const-string p0, "BAND_MODE_UNSPECIFIED"

    return-object p0

    .line 53
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "BAND_MODE_EURO"

    return-object p0

    .line 54
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string p0, "BAND_MODE_USA"

    return-object p0

    .line 55
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string p0, "BAND_MODE_JPN"

    return-object p0

    .line 56
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    const-string p0, "BAND_MODE_AUS"

    return-object p0

    .line 57
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    const-string p0, "BAND_MODE_AUS_2"

    return-object p0

    .line 58
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    const-string p0, "BAND_MODE_CELL_800"

    return-object p0

    .line 59
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    const-string p0, "BAND_MODE_PCS"

    return-object p0

    .line 60
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    const-string p0, "BAND_MODE_JTACS"

    return-object p0

    .line 61
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    const-string p0, "BAND_MODE_KOREA_PCS"

    return-object p0

    .line 62
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    const-string p0, "BAND_MODE_5_450M"

    return-object p0

    .line 63
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    const-string p0, "BAND_MODE_IMT2000"

    return-object p0

    .line 64
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    const-string p0, "BAND_MODE_7_700M_2"

    return-object p0

    .line 65
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    const-string p0, "BAND_MODE_8_1800M"

    return-object p0

    .line 66
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    const-string p0, "BAND_MODE_9_900M"

    return-object p0

    .line 67
    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    const-string p0, "BAND_MODE_10_800M_2"

    return-object p0

    .line 68
    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    const-string p0, "BAND_MODE_EURO_PAMR_400M"

    return-object p0

    .line 69
    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    const-string p0, "BAND_MODE_AWS"

    return-object p0

    .line 70
    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    const-string p0, "BAND_MODE_USA_2500M"

    return-object p0

    .line 71
    :cond_7c
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
