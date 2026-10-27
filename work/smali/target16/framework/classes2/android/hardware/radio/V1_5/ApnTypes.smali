.class public final Landroid/hardware/radio/V1_5/ApnTypes;
.super Ljava/lang/Object;
.source "ApnTypes.java"


# static fields
.field public static final blacklist ALL:I = 0x3ff

.field public static final blacklist CBS:I = 0x80

.field public static final blacklist DEFAULT:I = 0x1

.field public static final blacklist DUN:I = 0x8

.field public static final blacklist EMERGENCY:I = 0x200

.field public static final blacklist FOTA:I = 0x20

.field public static final blacklist HIPRI:I = 0x10

.field public static final blacklist IA:I = 0x100

.field public static final blacklist IMS:I = 0x40

.field public static final blacklist MCX:I = 0x400

.field public static final blacklist MMS:I = 0x2

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist SUPL:I = 0x4

.field public static final blacklist XCAP:I = 0x800


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    nop

    .line 77
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 79
    const-string v1, "DEFAULT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_17

    .line 78
    :cond_16
    const/4 v2, 0x0

    .line 82
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 83
    const-string v1, "MMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    or-int/lit8 v2, v2, 0x2

    .line 86
    :cond_23
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2f

    .line 87
    const-string v1, "SUPL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    or-int/lit8 v2, v2, 0x4

    .line 90
    :cond_2f
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3c

    .line 91
    const-string v1, "DUN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    or-int/lit8 v2, v2, 0x8

    .line 94
    :cond_3c
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_49

    .line 95
    const-string v1, "HIPRI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    or-int/lit8 v2, v2, 0x10

    .line 98
    :cond_49
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_56

    .line 99
    const-string v1, "FOTA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    or-int/lit8 v2, v2, 0x20

    .line 102
    :cond_56
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_63

    .line 103
    const-string v1, "IMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    or-int/lit8 v2, v2, 0x40

    .line 106
    :cond_63
    and-int/lit16 v1, p0, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_70

    .line 107
    const-string v1, "CBS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    or-int/lit16 v2, v2, 0x80

    .line 110
    :cond_70
    and-int/lit16 v1, p0, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_7d

    .line 111
    const-string v1, "IA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    or-int/lit16 v2, v2, 0x100

    .line 114
    :cond_7d
    and-int/lit16 v1, p0, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_8a

    .line 115
    const-string v1, "EMERGENCY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    or-int/lit16 v2, v2, 0x200

    .line 118
    :cond_8a
    and-int/lit16 v1, p0, 0x3ff

    const/16 v3, 0x3ff

    if-ne v1, v3, :cond_96

    .line 119
    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    move v2, v3

    .line 122
    :cond_96
    and-int/lit16 v1, p0, 0x400

    const/16 v3, 0x400

    if-ne v1, v3, :cond_a3

    .line 123
    const-string v1, "MCX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    or-int/lit16 v2, v2, 0x400

    .line 126
    :cond_a3
    and-int/lit16 v1, p0, 0x800

    const/16 v3, 0x800

    if-ne v1, v3, :cond_b0

    .line 127
    const-string v1, "XCAP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    or-int/lit16 v2, v2, 0x800

    .line 130
    :cond_b0
    if-eq p0, v2, :cond_ce

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_ce
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 29
    if-nez p0, :cond_5

    .line 30
    const-string p0, "NONE"

    return-object p0

    .line 32
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 33
    const-string p0, "DEFAULT"

    return-object p0

    .line 35
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 36
    const-string p0, "MMS"

    return-object p0

    .line 38
    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    .line 39
    const-string p0, "SUPL"

    return-object p0

    .line 41
    :cond_17
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1e

    .line 42
    const-string p0, "DUN"

    return-object p0

    .line 44
    :cond_1e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_25

    .line 45
    const-string p0, "HIPRI"

    return-object p0

    .line 47
    :cond_25
    const/16 v0, 0x20

    if-ne p0, v0, :cond_2c

    .line 48
    const-string p0, "FOTA"

    return-object p0

    .line 50
    :cond_2c
    const/16 v0, 0x40

    if-ne p0, v0, :cond_33

    .line 51
    const-string p0, "IMS"

    return-object p0

    .line 53
    :cond_33
    const/16 v0, 0x80

    if-ne p0, v0, :cond_3a

    .line 54
    const-string p0, "CBS"

    return-object p0

    .line 56
    :cond_3a
    const/16 v0, 0x100

    if-ne p0, v0, :cond_41

    .line 57
    const-string p0, "IA"

    return-object p0

    .line 59
    :cond_41
    const/16 v0, 0x200

    if-ne p0, v0, :cond_48

    .line 60
    const-string p0, "EMERGENCY"

    return-object p0

    .line 62
    :cond_48
    const/16 v0, 0x3ff

    if-ne p0, v0, :cond_4f

    .line 63
    const-string p0, "ALL"

    return-object p0

    .line 65
    :cond_4f
    const/16 v0, 0x400

    if-ne p0, v0, :cond_56

    .line 66
    const-string p0, "MCX"

    return-object p0

    .line 68
    :cond_56
    const/16 v0, 0x800

    if-ne p0, v0, :cond_5d

    .line 69
    const-string p0, "XCAP"

    return-object p0

    .line 71
    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
