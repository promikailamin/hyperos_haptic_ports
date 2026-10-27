.class public interface abstract Landroid/hardware/radio/data/ApnTypes$$;
.super Ljava/lang/Object;
.source "ApnTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/ApnTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 80
    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 81
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 83
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 86
    nop

    :goto_26
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v3, v0, :cond_4f

    .line 87
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/data/ApnTypes$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 90
    :cond_3a
    const-class v1, [I

    if-ne v0, v1, :cond_54

    .line 91
    check-cast p0, [I

    array-length v0, p0

    :goto_41
    if-ge v3, v0, :cond_4f

    aget v1, p0, v3

    .line 92
    invoke-static {v1}, Landroid/hardware/radio/data/ApnTypes$$;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 95
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
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

    .line 82
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

    .line 58
    if-nez p0, :cond_5

    const-string p0, "NONE"

    return-object p0

    .line 59
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "DEFAULT"

    return-object p0

    .line 60
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string p0, "MMS"

    return-object p0

    .line 61
    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    const-string p0, "SUPL"

    return-object p0

    .line 62
    :cond_17
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1e

    const-string p0, "DUN"

    return-object p0

    .line 63
    :cond_1e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_25

    const-string p0, "HIPRI"

    return-object p0

    .line 64
    :cond_25
    const/16 v0, 0x20

    if-ne p0, v0, :cond_2c

    const-string p0, "FOTA"

    return-object p0

    .line 65
    :cond_2c
    const/16 v0, 0x40

    if-ne p0, v0, :cond_33

    const-string p0, "IMS"

    return-object p0

    .line 66
    :cond_33
    const/16 v0, 0x80

    if-ne p0, v0, :cond_3a

    const-string p0, "CBS"

    return-object p0

    .line 67
    :cond_3a
    const/16 v0, 0x100

    if-ne p0, v0, :cond_41

    const-string p0, "IA"

    return-object p0

    .line 68
    :cond_41
    const/16 v0, 0x200

    if-ne p0, v0, :cond_48

    const-string p0, "EMERGENCY"

    return-object p0

    .line 69
    :cond_48
    const/16 v0, 0x400

    if-ne p0, v0, :cond_4f

    const-string p0, "MCX"

    return-object p0

    .line 70
    :cond_4f
    const/16 v0, 0x800

    if-ne p0, v0, :cond_56

    const-string p0, "XCAP"

    return-object p0

    .line 71
    :cond_56
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_5d

    const-string p0, "VSIM"

    return-object p0

    .line 72
    :cond_5d
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_64

    const-string p0, "BIP"

    return-object p0

    .line 73
    :cond_64
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_6b

    const-string p0, "ENTERPRISE"

    return-object p0

    .line 74
    :cond_6b
    const v0, 0x8000

    if-ne p0, v0, :cond_73

    const-string p0, "RCS"

    return-object p0

    .line 75
    :cond_73
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_7a

    const-string p0, "OEM_PAID"

    return-object p0

    .line 76
    :cond_7a
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_81

    const-string p0, "OEM_PRIVATE"

    return-object p0

    .line 77
    :cond_81
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
