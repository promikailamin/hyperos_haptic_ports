.class public final Landroid/hardware/radio/V1_4/RadioTechnology;
.super Ljava/lang/Object;
.source "RadioTechnology.java"


# static fields
.field public static final blacklist EDGE:I = 0x2

.field public static final blacklist EHRPD:I = 0xd

.field public static final blacklist EVDO_0:I = 0x7

.field public static final blacklist EVDO_A:I = 0x8

.field public static final blacklist EVDO_B:I = 0xc

.field public static final blacklist GPRS:I = 0x1

.field public static final blacklist GSM:I = 0x10

.field public static final blacklist HSDPA:I = 0x9

.field public static final blacklist HSPA:I = 0xb

.field public static final blacklist HSPAP:I = 0xf

.field public static final blacklist HSUPA:I = 0xa

.field public static final blacklist IS95A:I = 0x4

.field public static final blacklist IS95B:I = 0x5

.field public static final blacklist IWLAN:I = 0x12

.field public static final blacklist LTE:I = 0xe

.field public static final blacklist LTE_CA:I = 0x13

.field public static final blacklist NR:I = 0x14

.field public static final blacklist ONE_X_RTT:I = 0x6

.field public static final blacklist TD_SCDMA:I = 0x11

.field public static final blacklist UMTS:I = 0x3

.field public static final blacklist UNKNOWN:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    nop

    .line 99
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 101
    const-string v1, "GPRS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    goto :goto_17

    .line 100
    :cond_16
    const/4 v2, 0x0

    .line 104
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 105
    const-string v1, "EDGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v2, v2, 0x2

    .line 108
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    .line 109
    const-string v1, "UMTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    move v2, v3

    .line 112
    :cond_2e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3a

    .line 113
    const-string v1, "IS95A"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v2, v2, 0x4

    .line 116
    :cond_3a
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_46

    .line 117
    const-string v1, "IS95B"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit8 v2, v2, 0x5

    .line 120
    :cond_46
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_52

    .line 121
    const-string v1, "ONE_X_RTT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v2, v2, 0x6

    .line 124
    :cond_52
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5d

    .line 125
    const-string v1, "EVDO_0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    move v2, v3

    .line 128
    :cond_5d
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6a

    .line 129
    const-string v1, "EVDO_A"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    or-int/lit8 v2, v2, 0x8

    .line 132
    :cond_6a
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_77

    .line 133
    const-string v1, "HSDPA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    or-int/lit8 v2, v2, 0x9

    .line 136
    :cond_77
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_84

    .line 137
    const-string v1, "HSUPA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    or-int/lit8 v2, v2, 0xa

    .line 140
    :cond_84
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_91

    .line 141
    const-string v1, "HSPA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    or-int/lit8 v2, v2, 0xb

    .line 144
    :cond_91
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_9e

    .line 145
    const-string v1, "EVDO_B"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    or-int/lit8 v2, v2, 0xc

    .line 148
    :cond_9e
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_ab

    .line 149
    const-string v1, "EHRPD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    or-int/lit8 v2, v2, 0xd

    .line 152
    :cond_ab
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_b8

    .line 153
    const-string v1, "LTE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    or-int/lit8 v2, v2, 0xe

    .line 156
    :cond_b8
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_c4

    .line 157
    const-string v1, "HSPAP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    move v2, v3

    .line 160
    :cond_c4
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_d1

    .line 161
    const-string v1, "GSM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    or-int/lit8 v2, v2, 0x10

    .line 164
    :cond_d1
    and-int/lit8 v1, p0, 0x11

    const/16 v3, 0x11

    if-ne v1, v3, :cond_de

    .line 165
    const-string v1, "TD_SCDMA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    or-int/lit8 v2, v2, 0x11

    .line 168
    :cond_de
    and-int/lit8 v1, p0, 0x12

    const/16 v3, 0x12

    if-ne v1, v3, :cond_eb

    .line 169
    const-string v1, "IWLAN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    or-int/lit8 v2, v2, 0x12

    .line 172
    :cond_eb
    and-int/lit8 v1, p0, 0x13

    const/16 v3, 0x13

    if-ne v1, v3, :cond_f8

    .line 173
    const-string v1, "LTE_CA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    or-int/lit8 v2, v2, 0x13

    .line 176
    :cond_f8
    and-int/lit8 v1, p0, 0x14

    const/16 v3, 0x14

    if-ne v1, v3, :cond_105

    .line 177
    const-string v1, "NR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    or-int/lit8 v2, v2, 0x14

    .line 180
    :cond_105
    if-eq p0, v2, :cond_123

    .line 181
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

    .line 183
    :cond_123
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 30
    if-nez p0, :cond_5

    .line 31
    const-string p0, "UNKNOWN"

    return-object p0

    .line 33
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 34
    const-string p0, "GPRS"

    return-object p0

    .line 36
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 37
    const-string p0, "EDGE"

    return-object p0

    .line 39
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 40
    const-string p0, "UMTS"

    return-object p0

    .line 42
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 43
    const-string p0, "IS95A"

    return-object p0

    .line 45
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 46
    const-string p0, "IS95B"

    return-object p0

    .line 48
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 49
    const-string p0, "ONE_X_RTT"

    return-object p0

    .line 51
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 52
    const-string p0, "EVDO_0"

    return-object p0

    .line 54
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 55
    const-string p0, "EVDO_A"

    return-object p0

    .line 57
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 58
    const-string p0, "HSDPA"

    return-object p0

    .line 60
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 61
    const-string p0, "HSUPA"

    return-object p0

    .line 63
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 64
    const-string p0, "HSPA"

    return-object p0

    .line 66
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    .line 67
    const-string p0, "EVDO_B"

    return-object p0

    .line 69
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    .line 70
    const-string p0, "EHRPD"

    return-object p0

    .line 72
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    .line 73
    const-string p0, "LTE"

    return-object p0

    .line 75
    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    .line 76
    const-string p0, "HSPAP"

    return-object p0

    .line 78
    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    .line 79
    const-string p0, "GSM"

    return-object p0

    .line 81
    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    .line 82
    const-string p0, "TD_SCDMA"

    return-object p0

    .line 84
    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    .line 85
    const-string p0, "IWLAN"

    return-object p0

    .line 87
    :cond_7c
    const/16 v0, 0x13

    if-ne p0, v0, :cond_83

    .line 88
    const-string p0, "LTE_CA"

    return-object p0

    .line 90
    :cond_83
    const/16 v0, 0x14

    if-ne p0, v0, :cond_8a

    .line 91
    const-string p0, "NR"

    return-object p0

    .line 93
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
