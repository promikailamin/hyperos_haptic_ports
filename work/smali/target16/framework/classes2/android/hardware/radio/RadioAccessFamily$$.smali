.class public interface abstract Landroid/hardware/radio/RadioAccessFamily$$;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioAccessFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 76
    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 77
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 80
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 82
    nop

    :goto_26
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v3, v0, :cond_4f

    .line 83
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/RadioAccessFamily$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 86
    :cond_3a
    const-class v1, [I

    if-ne v0, v1, :cond_54

    .line 87
    check-cast p0, [I

    array-length v0, p0

    :goto_41
    if-ge v3, v0, :cond_4f

    aget v1, p0, v3

    .line 88
    invoke-static {v1}, Landroid/hardware/radio/RadioAccessFamily$$;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 91
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 86
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

    .line 78
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
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "UNKNOWN"

    return-object p0

    .line 53
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string p0, "GPRS"

    return-object p0

    .line 54
    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    const-string p0, "EDGE"

    return-object p0

    .line 55
    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    const-string p0, "UMTS"

    return-object p0

    .line 56
    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    const-string p0, "IS95A"

    return-object p0

    .line 57
    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    const-string p0, "IS95B"

    return-object p0

    .line 58
    :cond_27
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2e

    const-string p0, "ONE_X_RTT"

    return-object p0

    .line 59
    :cond_2e
    const/16 v0, 0x80

    if-ne p0, v0, :cond_35

    const-string p0, "EVDO_0"

    return-object p0

    .line 60
    :cond_35
    const/16 v0, 0x100

    if-ne p0, v0, :cond_3c

    const-string p0, "EVDO_A"

    return-object p0

    .line 61
    :cond_3c
    const/16 v0, 0x200

    if-ne p0, v0, :cond_43

    const-string p0, "HSDPA"

    return-object p0

    .line 62
    :cond_43
    const/16 v0, 0x400

    if-ne p0, v0, :cond_4a

    const-string p0, "HSUPA"

    return-object p0

    .line 63
    :cond_4a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_51

    const-string p0, "HSPA"

    return-object p0

    .line 64
    :cond_51
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_58

    const-string p0, "EVDO_B"

    return-object p0

    .line 65
    :cond_58
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_5f

    const-string p0, "EHRPD"

    return-object p0

    .line 66
    :cond_5f
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_66

    const-string p0, "LTE"

    return-object p0

    .line 67
    :cond_66
    const v0, 0x8000

    if-ne p0, v0, :cond_6e

    const-string p0, "HSPAP"

    return-object p0

    .line 68
    :cond_6e
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_75

    const-string p0, "GSM"

    return-object p0

    .line 69
    :cond_75
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_7c

    const-string p0, "TD_SCDMA"

    return-object p0

    .line 70
    :cond_7c
    const/high16 v0, 0x40000

    if-ne p0, v0, :cond_83

    const-string p0, "IWLAN"

    return-object p0

    .line 71
    :cond_83
    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_8a

    const-string p0, "LTE_CA"

    return-object p0

    .line 72
    :cond_8a
    const/high16 v0, 0x100000

    if-ne p0, v0, :cond_91

    const-string p0, "NR"

    return-object p0

    .line 73
    :cond_91
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
