.class public final Landroid/hardware/radio/V1_0/RadioBandMode;
.super Ljava/lang/Object;
.source "RadioBandMode.java"


# static fields
.field public static final blacklist BAND_MODE_10_800M_2:I = 0xf

.field public static final blacklist BAND_MODE_5_450M:I = 0xa

.field public static final blacklist BAND_MODE_7_700M_2:I = 0xc

.field public static final blacklist BAND_MODE_8_1800M:I = 0xd

.field public static final blacklist BAND_MODE_9_900M:I = 0xe

.field public static final blacklist BAND_MODE_AUS:I = 0x4

.field public static final blacklist BAND_MODE_AUS_2:I = 0x5

.field public static final blacklist BAND_MODE_AWS:I = 0x11

.field public static final blacklist BAND_MODE_CELL_800:I = 0x6

.field public static final blacklist BAND_MODE_EURO:I = 0x1

.field public static final blacklist BAND_MODE_EURO_PAMR_400M:I = 0x10

.field public static final blacklist BAND_MODE_IMT2000:I = 0xb

.field public static final blacklist BAND_MODE_JPN:I = 0x3

.field public static final blacklist BAND_MODE_JTACS:I = 0x8

.field public static final blacklist BAND_MODE_KOREA_PCS:I = 0x9

.field public static final blacklist BAND_MODE_PCS:I = 0x7

.field public static final blacklist BAND_MODE_UNSPECIFIED:I = 0x0

.field public static final blacklist BAND_MODE_USA:I = 0x2

.field public static final blacklist BAND_MODE_USA_2500M:I = 0x12


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    nop

    .line 88
    const-string v1, "BAND_MODE_UNSPECIFIED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 90
    const-string v1, "BAND_MODE_EURO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    goto :goto_17

    .line 89
    :cond_16
    const/4 v2, 0x0

    .line 93
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 94
    const-string v1, "BAND_MODE_USA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v2, v2, 0x2

    .line 97
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    .line 98
    const-string v1, "BAND_MODE_JPN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    move v2, v3

    .line 101
    :cond_2e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3a

    .line 102
    const-string v1, "BAND_MODE_AUS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit8 v2, v2, 0x4

    .line 105
    :cond_3a
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_46

    .line 106
    const-string v1, "BAND_MODE_AUS_2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v2, v2, 0x5

    .line 109
    :cond_46
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_52

    .line 110
    const-string v1, "BAND_MODE_CELL_800"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v2, v2, 0x6

    .line 113
    :cond_52
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5d

    .line 114
    const-string v1, "BAND_MODE_PCS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    move v2, v3

    .line 117
    :cond_5d
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6a

    .line 118
    const-string v1, "BAND_MODE_JTACS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit8 v2, v2, 0x8

    .line 121
    :cond_6a
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_77

    .line 122
    const-string v1, "BAND_MODE_KOREA_PCS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v2, v2, 0x9

    .line 125
    :cond_77
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_84

    .line 126
    const-string v1, "BAND_MODE_5_450M"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit8 v2, v2, 0xa

    .line 129
    :cond_84
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_91

    .line 130
    const-string v1, "BAND_MODE_IMT2000"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    or-int/lit8 v2, v2, 0xb

    .line 133
    :cond_91
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_9e

    .line 134
    const-string v1, "BAND_MODE_7_700M_2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/lit8 v2, v2, 0xc

    .line 137
    :cond_9e
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_ab

    .line 138
    const-string v1, "BAND_MODE_8_1800M"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/lit8 v2, v2, 0xd

    .line 141
    :cond_ab
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_b8

    .line 142
    const-string v1, "BAND_MODE_9_900M"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit8 v2, v2, 0xe

    .line 145
    :cond_b8
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_c4

    .line 146
    const-string v1, "BAND_MODE_10_800M_2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    move v2, v3

    .line 149
    :cond_c4
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_d1

    .line 150
    const-string v1, "BAND_MODE_EURO_PAMR_400M"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/lit8 v2, v2, 0x10

    .line 153
    :cond_d1
    and-int/lit8 v1, p0, 0x11

    const/16 v3, 0x11

    if-ne v1, v3, :cond_de

    .line 154
    const-string v1, "BAND_MODE_AWS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    or-int/lit8 v2, v2, 0x11

    .line 157
    :cond_de
    and-int/lit8 v1, p0, 0x12

    const/16 v3, 0x12

    if-ne v1, v3, :cond_eb

    .line 158
    const-string v1, "BAND_MODE_USA_2500M"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    or-int/lit8 v2, v2, 0x12

    .line 161
    :cond_eb
    if-eq p0, v2, :cond_109

    .line 162
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

    .line 164
    :cond_109
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 25
    if-nez p0, :cond_5

    .line 26
    const-string p0, "BAND_MODE_UNSPECIFIED"

    return-object p0

    .line 28
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 29
    const-string p0, "BAND_MODE_EURO"

    return-object p0

    .line 31
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 32
    const-string p0, "BAND_MODE_USA"

    return-object p0

    .line 34
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 35
    const-string p0, "BAND_MODE_JPN"

    return-object p0

    .line 37
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 38
    const-string p0, "BAND_MODE_AUS"

    return-object p0

    .line 40
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 41
    const-string p0, "BAND_MODE_AUS_2"

    return-object p0

    .line 43
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 44
    const-string p0, "BAND_MODE_CELL_800"

    return-object p0

    .line 46
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 47
    const-string p0, "BAND_MODE_PCS"

    return-object p0

    .line 49
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 50
    const-string p0, "BAND_MODE_JTACS"

    return-object p0

    .line 52
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 53
    const-string p0, "BAND_MODE_KOREA_PCS"

    return-object p0

    .line 55
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 56
    const-string p0, "BAND_MODE_5_450M"

    return-object p0

    .line 58
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 59
    const-string p0, "BAND_MODE_IMT2000"

    return-object p0

    .line 61
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    .line 62
    const-string p0, "BAND_MODE_7_700M_2"

    return-object p0

    .line 64
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    .line 65
    const-string p0, "BAND_MODE_8_1800M"

    return-object p0

    .line 67
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    .line 68
    const-string p0, "BAND_MODE_9_900M"

    return-object p0

    .line 70
    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    .line 71
    const-string p0, "BAND_MODE_10_800M_2"

    return-object p0

    .line 73
    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    .line 74
    const-string p0, "BAND_MODE_EURO_PAMR_400M"

    return-object p0

    .line 76
    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    .line 77
    const-string p0, "BAND_MODE_AWS"

    return-object p0

    .line 79
    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    .line 80
    const-string p0, "BAND_MODE_USA_2500M"

    return-object p0

    .line 82
    :cond_7c
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
