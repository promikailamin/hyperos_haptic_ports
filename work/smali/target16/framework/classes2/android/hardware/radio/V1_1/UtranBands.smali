.class public final Landroid/hardware/radio/V1_1/UtranBands;
.super Ljava/lang/Object;
.source "UtranBands.java"


# static fields
.field public static final blacklist BAND_1:I = 0x1

.field public static final blacklist BAND_10:I = 0xa

.field public static final blacklist BAND_11:I = 0xb

.field public static final blacklist BAND_12:I = 0xc

.field public static final blacklist BAND_13:I = 0xd

.field public static final blacklist BAND_14:I = 0xe

.field public static final blacklist BAND_19:I = 0x13

.field public static final blacklist BAND_2:I = 0x2

.field public static final blacklist BAND_20:I = 0x14

.field public static final blacklist BAND_21:I = 0x15

.field public static final blacklist BAND_22:I = 0x16

.field public static final blacklist BAND_25:I = 0x19

.field public static final blacklist BAND_26:I = 0x1a

.field public static final blacklist BAND_3:I = 0x3

.field public static final blacklist BAND_4:I = 0x4

.field public static final blacklist BAND_5:I = 0x5

.field public static final blacklist BAND_6:I = 0x6

.field public static final blacklist BAND_7:I = 0x7

.field public static final blacklist BAND_8:I = 0x8

.field public static final blacklist BAND_9:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    nop

    .line 92
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 93
    const-string v1, "BAND_1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_12

    .line 92
    :cond_11
    const/4 v2, 0x0

    .line 96
    :goto_12
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e

    .line 97
    const-string v1, "BAND_2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v2, v2, 0x2

    .line 100
    :cond_1e
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_29

    .line 101
    const-string v1, "BAND_3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    move v2, v3

    .line 104
    :cond_29
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_35

    .line 105
    const-string v1, "BAND_4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v2, v2, 0x4

    .line 108
    :cond_35
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_41

    .line 109
    const-string v1, "BAND_5"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v2, v2, 0x5

    .line 112
    :cond_41
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_4d

    .line 113
    const-string v1, "BAND_6"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v2, v2, 0x6

    .line 116
    :cond_4d
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_58

    .line 117
    const-string v1, "BAND_7"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    move v2, v3

    .line 120
    :cond_58
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_65

    .line 121
    const-string v1, "BAND_8"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v2, v2, 0x8

    .line 124
    :cond_65
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_72

    .line 125
    const-string v1, "BAND_9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/lit8 v2, v2, 0x9

    .line 128
    :cond_72
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_7f

    .line 129
    const-string v1, "BAND_10"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    or-int/lit8 v2, v2, 0xa

    .line 132
    :cond_7f
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_8c

    .line 133
    const-string v1, "BAND_11"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    or-int/lit8 v2, v2, 0xb

    .line 136
    :cond_8c
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_99

    .line 137
    const-string v1, "BAND_12"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    or-int/lit8 v2, v2, 0xc

    .line 140
    :cond_99
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_a6

    .line 141
    const-string v1, "BAND_13"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    or-int/lit8 v2, v2, 0xd

    .line 144
    :cond_a6
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_b3

    .line 145
    const-string v1, "BAND_14"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    or-int/lit8 v2, v2, 0xe

    .line 148
    :cond_b3
    and-int/lit8 v1, p0, 0x13

    const/16 v3, 0x13

    if-ne v1, v3, :cond_c0

    .line 149
    const-string v1, "BAND_19"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    or-int/lit8 v2, v2, 0x13

    .line 152
    :cond_c0
    and-int/lit8 v1, p0, 0x14

    const/16 v3, 0x14

    if-ne v1, v3, :cond_cd

    .line 153
    const-string v1, "BAND_20"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    or-int/lit8 v2, v2, 0x14

    .line 156
    :cond_cd
    and-int/lit8 v1, p0, 0x15

    const/16 v3, 0x15

    if-ne v1, v3, :cond_da

    .line 157
    const-string v1, "BAND_21"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    or-int/lit8 v2, v2, 0x15

    .line 160
    :cond_da
    and-int/lit8 v1, p0, 0x16

    const/16 v3, 0x16

    if-ne v1, v3, :cond_e7

    .line 161
    const-string v1, "BAND_22"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    or-int/lit8 v2, v2, 0x16

    .line 164
    :cond_e7
    and-int/lit8 v1, p0, 0x19

    const/16 v3, 0x19

    if-ne v1, v3, :cond_f4

    .line 165
    const-string v1, "BAND_25"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    or-int/lit8 v2, v2, 0x19

    .line 168
    :cond_f4
    and-int/lit8 v1, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_101

    .line 169
    const-string v1, "BAND_26"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    or-int/lit8 v2, v2, 0x1a

    .line 172
    :cond_101
    if-eq p0, v2, :cond_11f

    .line 173
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

    .line 175
    :cond_11f
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 26
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 27
    const-string p0, "BAND_1"

    return-object p0

    .line 29
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 30
    const-string p0, "BAND_2"

    return-object p0

    .line 32
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 33
    const-string p0, "BAND_3"

    return-object p0

    .line 35
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 36
    const-string p0, "BAND_4"

    return-object p0

    .line 38
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 39
    const-string p0, "BAND_5"

    return-object p0

    .line 41
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    .line 42
    const-string p0, "BAND_6"

    return-object p0

    .line 44
    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    .line 45
    const-string p0, "BAND_7"

    return-object p0

    .line 47
    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    .line 48
    const-string p0, "BAND_8"

    return-object p0

    .line 50
    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    .line 51
    const-string p0, "BAND_9"

    return-object p0

    .line 53
    :cond_38
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3f

    .line 54
    const-string p0, "BAND_10"

    return-object p0

    .line 56
    :cond_3f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_46

    .line 57
    const-string p0, "BAND_11"

    return-object p0

    .line 59
    :cond_46
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4d

    .line 60
    const-string p0, "BAND_12"

    return-object p0

    .line 62
    :cond_4d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_54

    .line 63
    const-string p0, "BAND_13"

    return-object p0

    .line 65
    :cond_54
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5b

    .line 66
    const-string p0, "BAND_14"

    return-object p0

    .line 68
    :cond_5b
    const/16 v0, 0x13

    if-ne p0, v0, :cond_62

    .line 69
    const-string p0, "BAND_19"

    return-object p0

    .line 71
    :cond_62
    const/16 v0, 0x14

    if-ne p0, v0, :cond_69

    .line 72
    const-string p0, "BAND_20"

    return-object p0

    .line 74
    :cond_69
    const/16 v0, 0x15

    if-ne p0, v0, :cond_70

    .line 75
    const-string p0, "BAND_21"

    return-object p0

    .line 77
    :cond_70
    const/16 v0, 0x16

    if-ne p0, v0, :cond_77

    .line 78
    const-string p0, "BAND_22"

    return-object p0

    .line 80
    :cond_77
    const/16 v0, 0x19

    if-ne p0, v0, :cond_7e

    .line 81
    const-string p0, "BAND_25"

    return-object p0

    .line 83
    :cond_7e
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_85

    .line 84
    const-string p0, "BAND_26"

    return-object p0

    .line 86
    :cond_85
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
