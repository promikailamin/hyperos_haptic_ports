.class public interface abstract Landroid/hardware/radio/network/GeranBands$$;
.super Ljava/lang/Object;
.source "GeranBands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/GeranBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 45
    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 46
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 49
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 51
    nop

    :goto_26
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v3, v0, :cond_4f

    .line 52
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/network/GeranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 55
    :cond_3a
    const-class v1, [I

    if-ne v0, v1, :cond_54

    .line 56
    check-cast p0, [I

    array-length v0, p0

    :goto_41
    if-ge v3, v0, :cond_4f

    aget v1, p0, v3

    .line 57
    invoke-static {v1}, Landroid/hardware/radio/network/GeranBands$$;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 60
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 55
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

    .line 47
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

    .line 28
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "BAND_T380"

    return-object p0

    .line 29
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string p0, "BAND_T410"

    return-object p0

    .line 30
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    const-string p0, "BAND_450"

    return-object p0

    .line 31
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    const-string p0, "BAND_480"

    return-object p0

    .line 32
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    const-string p0, "BAND_710"

    return-object p0

    .line 33
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    const-string p0, "BAND_750"

    return-object p0

    .line 34
    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    const-string p0, "BAND_T810"

    return-object p0

    .line 35
    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    const-string p0, "BAND_850"

    return-object p0

    .line 36
    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    const-string p0, "BAND_P900"

    return-object p0

    .line 37
    :cond_38
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3f

    const-string p0, "BAND_E900"

    return-object p0

    .line 38
    :cond_3f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_46

    const-string p0, "BAND_R900"

    return-object p0

    .line 39
    :cond_46
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4d

    const-string p0, "BAND_DCS1800"

    return-object p0

    .line 40
    :cond_4d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_54

    const-string p0, "BAND_PCS1900"

    return-object p0

    .line 41
    :cond_54
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5b

    const-string p0, "BAND_ER900"

    return-object p0

    .line 42
    :cond_5b
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
