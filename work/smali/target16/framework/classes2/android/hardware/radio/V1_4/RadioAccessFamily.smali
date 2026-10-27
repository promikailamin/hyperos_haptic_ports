.class public final Landroid/hardware/radio/V1_4/RadioAccessFamily;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"


# static fields
.field public static final blacklist EDGE:I = 0x4

.field public static final blacklist EHRPD:I = 0x2000

.field public static final blacklist EVDO_0:I = 0x80

.field public static final blacklist EVDO_A:I = 0x100

.field public static final blacklist EVDO_B:I = 0x1000

.field public static final blacklist GPRS:I = 0x2

.field public static final blacklist GSM:I = 0x10000

.field public static final blacklist HSDPA:I = 0x200

.field public static final blacklist HSPA:I = 0x800

.field public static final blacklist HSPAP:I = 0x8000

.field public static final blacklist HSUPA:I = 0x400

.field public static final blacklist IS95A:I = 0x10

.field public static final blacklist IS95B:I = 0x20

.field public static final blacklist LTE:I = 0x4000

.field public static final blacklist LTE_CA:I = 0x80000

.field public static final blacklist NR:I = 0x100000

.field public static final blacklist ONE_X_RTT:I = 0x40

.field public static final blacklist TD_SCDMA:I = 0x20000

.field public static final blacklist UMTS:I = 0x8

.field public static final blacklist UNKNOWN:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    nop

    .line 95
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 96
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    goto :goto_12

    .line 95
    :cond_11
    const/4 v2, 0x0

    .line 99
    :goto_12
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e

    .line 100
    const-string v1, "GPRS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    or-int/lit8 v2, v2, 0x2

    .line 103
    :cond_1e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2a

    .line 104
    const-string v1, "EDGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    or-int/lit8 v2, v2, 0x4

    .line 107
    :cond_2a
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_37

    .line 108
    const-string v1, "UMTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    or-int/lit8 v2, v2, 0x8

    .line 111
    :cond_37
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_44

    .line 112
    const-string v1, "IS95A"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    or-int/lit8 v2, v2, 0x10

    .line 115
    :cond_44
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_51

    .line 116
    const-string v1, "IS95B"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    or-int/lit8 v2, v2, 0x20

    .line 119
    :cond_51
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5e

    .line 120
    const-string v1, "ONE_X_RTT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    or-int/lit8 v2, v2, 0x40

    .line 123
    :cond_5e
    and-int/lit16 v1, p0, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6b

    .line 124
    const-string v1, "EVDO_0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    or-int/lit16 v2, v2, 0x80

    .line 127
    :cond_6b
    and-int/lit16 v1, p0, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_78

    .line 128
    const-string v1, "EVDO_A"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    or-int/lit16 v2, v2, 0x100

    .line 131
    :cond_78
    and-int/lit16 v1, p0, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_85

    .line 132
    const-string v1, "HSDPA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    or-int/lit16 v2, v2, 0x200

    .line 135
    :cond_85
    and-int/lit16 v1, p0, 0x400

    const/16 v3, 0x400

    if-ne v1, v3, :cond_92

    .line 136
    const-string v1, "HSUPA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    or-int/lit16 v2, v2, 0x400

    .line 139
    :cond_92
    and-int/lit16 v1, p0, 0x800

    const/16 v3, 0x800

    if-ne v1, v3, :cond_9f

    .line 140
    const-string v1, "HSPA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    or-int/lit16 v2, v2, 0x800

    .line 143
    :cond_9f
    and-int/lit16 v1, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v1, v3, :cond_ac

    .line 144
    const-string v1, "EVDO_B"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    or-int/lit16 v2, v2, 0x1000

    .line 147
    :cond_ac
    and-int/lit16 v1, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_b9

    .line 148
    const-string v1, "EHRPD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    or-int/lit16 v2, v2, 0x2000

    .line 151
    :cond_b9
    and-int/lit16 v1, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_c6

    .line 152
    const-string v1, "LTE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    or-int/lit16 v2, v2, 0x4000

    .line 155
    :cond_c6
    const v1, 0x8000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_d3

    .line 156
    const-string v3, "HSPAP"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    or-int/2addr v2, v1

    .line 159
    :cond_d3
    const/high16 v1, 0x10000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_df

    .line 160
    const-string v3, "GSM"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    or-int/2addr v2, v1

    .line 163
    :cond_df
    const/high16 v1, 0x20000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_eb

    .line 164
    const-string v3, "TD_SCDMA"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    or-int/2addr v2, v1

    .line 167
    :cond_eb
    const/high16 v1, 0x80000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_f7

    .line 168
    const-string v3, "LTE_CA"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    or-int/2addr v2, v1

    .line 171
    :cond_f7
    const/high16 v1, 0x100000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_103

    .line 172
    const-string v3, "NR"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    or-int/2addr v2, v1

    .line 175
    :cond_103
    if-eq p0, v2, :cond_121

    .line 176
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

    .line 178
    :cond_121
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 29
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 30
    const-string p0, "UNKNOWN"

    return-object p0

    .line 32
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 33
    const-string p0, "GPRS"

    return-object p0

    .line 35
    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    .line 36
    const-string p0, "EDGE"

    return-object p0

    .line 38
    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    .line 39
    const-string p0, "UMTS"

    return-object p0

    .line 41
    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    .line 42
    const-string p0, "IS95A"

    return-object p0

    .line 44
    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    .line 45
    const-string p0, "IS95B"

    return-object p0

    .line 47
    :cond_27
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2e

    .line 48
    const-string p0, "ONE_X_RTT"

    return-object p0

    .line 50
    :cond_2e
    const/16 v0, 0x80

    if-ne p0, v0, :cond_35

    .line 51
    const-string p0, "EVDO_0"

    return-object p0

    .line 53
    :cond_35
    const/16 v0, 0x100

    if-ne p0, v0, :cond_3c

    .line 54
    const-string p0, "EVDO_A"

    return-object p0

    .line 56
    :cond_3c
    const/16 v0, 0x200

    if-ne p0, v0, :cond_43

    .line 57
    const-string p0, "HSDPA"

    return-object p0

    .line 59
    :cond_43
    const/16 v0, 0x400

    if-ne p0, v0, :cond_4a

    .line 60
    const-string p0, "HSUPA"

    return-object p0

    .line 62
    :cond_4a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_51

    .line 63
    const-string p0, "HSPA"

    return-object p0

    .line 65
    :cond_51
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_58

    .line 66
    const-string p0, "EVDO_B"

    return-object p0

    .line 68
    :cond_58
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_5f

    .line 69
    const-string p0, "EHRPD"

    return-object p0

    .line 71
    :cond_5f
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_66

    .line 72
    const-string p0, "LTE"

    return-object p0

    .line 74
    :cond_66
    const v0, 0x8000

    if-ne p0, v0, :cond_6e

    .line 75
    const-string p0, "HSPAP"

    return-object p0

    .line 77
    :cond_6e
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_75

    .line 78
    const-string p0, "GSM"

    return-object p0

    .line 80
    :cond_75
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_7c

    .line 81
    const-string p0, "TD_SCDMA"

    return-object p0

    .line 83
    :cond_7c
    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_83

    .line 84
    const-string p0, "LTE_CA"

    return-object p0

    .line 86
    :cond_83
    const/high16 v0, 0x100000

    if-ne p0, v0, :cond_8a

    .line 87
    const-string p0, "NR"

    return-object p0

    .line 89
    :cond_8a
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
