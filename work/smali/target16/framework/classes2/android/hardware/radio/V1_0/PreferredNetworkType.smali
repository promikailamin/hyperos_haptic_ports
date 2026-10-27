.class public final Landroid/hardware/radio/V1_0/PreferredNetworkType;
.super Ljava/lang/Object;
.source "PreferredNetworkType.java"


# static fields
.field public static final blacklist CDMA_EVDO_AUTO:I = 0x4

.field public static final blacklist CDMA_ONLY:I = 0x5

.field public static final blacklist EVDO_ONLY:I = 0x6

.field public static final blacklist GSM_ONLY:I = 0x1

.field public static final blacklist GSM_WCDMA:I = 0x0

.field public static final blacklist GSM_WCDMA_AUTO:I = 0x3

.field public static final blacklist GSM_WCDMA_CDMA_EVDO_AUTO:I = 0x7

.field public static final blacklist LTE_CDMA_EVDO:I = 0x8

.field public static final blacklist LTE_CMDA_EVDO_GSM_WCDMA:I = 0xa

.field public static final blacklist LTE_GSM_WCDMA:I = 0x9

.field public static final blacklist LTE_ONLY:I = 0xb

.field public static final blacklist LTE_WCDMA:I = 0xc

.field public static final blacklist TD_SCDMA_GSM:I = 0x10

.field public static final blacklist TD_SCDMA_GSM_LTE:I = 0x11

.field public static final blacklist TD_SCDMA_GSM_WCDMA:I = 0x12

.field public static final blacklist TD_SCDMA_GSM_WCDMA_CDMA_EVDO_AUTO:I = 0x15

.field public static final blacklist TD_SCDMA_GSM_WCDMA_LTE:I = 0x14

.field public static final blacklist TD_SCDMA_LTE:I = 0xf

.field public static final blacklist TD_SCDMA_LTE_CDMA_EVDO_GSM_WCDMA:I = 0x16

.field public static final blacklist TD_SCDMA_ONLY:I = 0xd

.field public static final blacklist TD_SCDMA_WCDMA:I = 0xe

.field public static final blacklist TD_SCDMA_WCDMA_LTE:I = 0x13

.field public static final blacklist WCDMA:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    nop

    .line 104
    const-string v1, "GSM_WCDMA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 106
    const-string v1, "GSM_ONLY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    goto :goto_17

    .line 105
    :cond_16
    const/4 v2, 0x0

    .line 109
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 110
    const-string v1, "WCDMA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v2, v2, 0x2

    .line 113
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    .line 114
    const-string v1, "GSM_WCDMA_AUTO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    move v2, v3

    .line 117
    :cond_2e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3a

    .line 118
    const-string v1, "CDMA_EVDO_AUTO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit8 v2, v2, 0x4

    .line 121
    :cond_3a
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_46

    .line 122
    const-string v1, "CDMA_ONLY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v2, v2, 0x5

    .line 125
    :cond_46
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_52

    .line 126
    const-string v1, "EVDO_ONLY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit8 v2, v2, 0x6

    .line 129
    :cond_52
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5d

    .line 130
    const-string v1, "GSM_WCDMA_CDMA_EVDO_AUTO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    move v2, v3

    .line 133
    :cond_5d
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6a

    .line 134
    const-string v1, "LTE_CDMA_EVDO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/lit8 v2, v2, 0x8

    .line 137
    :cond_6a
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_77

    .line 138
    const-string v1, "LTE_GSM_WCDMA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/lit8 v2, v2, 0x9

    .line 141
    :cond_77
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_84

    .line 142
    const-string v1, "LTE_CMDA_EVDO_GSM_WCDMA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit8 v2, v2, 0xa

    .line 145
    :cond_84
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_91

    .line 146
    const-string v1, "LTE_ONLY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    or-int/lit8 v2, v2, 0xb

    .line 149
    :cond_91
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_9e

    .line 150
    const-string v1, "LTE_WCDMA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/lit8 v2, v2, 0xc

    .line 153
    :cond_9e
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_ab

    .line 154
    const-string v1, "TD_SCDMA_ONLY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    or-int/lit8 v2, v2, 0xd

    .line 157
    :cond_ab
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_b8

    .line 158
    const-string v1, "TD_SCDMA_WCDMA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    or-int/lit8 v2, v2, 0xe

    .line 161
    :cond_b8
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_c4

    .line 162
    const-string v1, "TD_SCDMA_LTE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    move v2, v3

    .line 165
    :cond_c4
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_d1

    .line 166
    const-string v1, "TD_SCDMA_GSM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    or-int/lit8 v2, v2, 0x10

    .line 169
    :cond_d1
    and-int/lit8 v1, p0, 0x11

    const/16 v3, 0x11

    if-ne v1, v3, :cond_de

    .line 170
    const-string v1, "TD_SCDMA_GSM_LTE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    or-int/lit8 v2, v2, 0x11

    .line 173
    :cond_de
    and-int/lit8 v1, p0, 0x12

    const/16 v3, 0x12

    if-ne v1, v3, :cond_eb

    .line 174
    const-string v1, "TD_SCDMA_GSM_WCDMA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    or-int/lit8 v2, v2, 0x12

    .line 177
    :cond_eb
    and-int/lit8 v1, p0, 0x13

    const/16 v3, 0x13

    if-ne v1, v3, :cond_f8

    .line 178
    const-string v1, "TD_SCDMA_WCDMA_LTE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    or-int/lit8 v2, v2, 0x13

    .line 181
    :cond_f8
    and-int/lit8 v1, p0, 0x14

    const/16 v3, 0x14

    if-ne v1, v3, :cond_105

    .line 182
    const-string v1, "TD_SCDMA_GSM_WCDMA_LTE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    or-int/lit8 v2, v2, 0x14

    .line 185
    :cond_105
    and-int/lit8 v1, p0, 0x15

    const/16 v3, 0x15

    if-ne v1, v3, :cond_112

    .line 186
    const-string v1, "TD_SCDMA_GSM_WCDMA_CDMA_EVDO_AUTO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    or-int/lit8 v2, v2, 0x15

    .line 189
    :cond_112
    and-int/lit8 v1, p0, 0x16

    const/16 v3, 0x16

    if-ne v1, v3, :cond_11f

    .line 190
    const-string v1, "TD_SCDMA_LTE_CDMA_EVDO_GSM_WCDMA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    or-int/lit8 v2, v2, 0x16

    .line 193
    :cond_11f
    if-eq p0, v2, :cond_13d

    .line 194
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

    .line 196
    :cond_13d
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
    const-string p0, "GSM_WCDMA"

    return-object p0

    .line 32
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 33
    const-string p0, "GSM_ONLY"

    return-object p0

    .line 35
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 36
    const-string p0, "WCDMA"

    return-object p0

    .line 38
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 39
    const-string p0, "GSM_WCDMA_AUTO"

    return-object p0

    .line 41
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 42
    const-string p0, "CDMA_EVDO_AUTO"

    return-object p0

    .line 44
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 45
    const-string p0, "CDMA_ONLY"

    return-object p0

    .line 47
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 48
    const-string p0, "EVDO_ONLY"

    return-object p0

    .line 50
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 51
    const-string p0, "GSM_WCDMA_CDMA_EVDO_AUTO"

    return-object p0

    .line 53
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 54
    const-string p0, "LTE_CDMA_EVDO"

    return-object p0

    .line 56
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 57
    const-string p0, "LTE_GSM_WCDMA"

    return-object p0

    .line 59
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 60
    const-string p0, "LTE_CMDA_EVDO_GSM_WCDMA"

    return-object p0

    .line 62
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 63
    const-string p0, "LTE_ONLY"

    return-object p0

    .line 65
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    .line 66
    const-string p0, "LTE_WCDMA"

    return-object p0

    .line 68
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    .line 69
    const-string p0, "TD_SCDMA_ONLY"

    return-object p0

    .line 71
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    .line 72
    const-string p0, "TD_SCDMA_WCDMA"

    return-object p0

    .line 74
    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    .line 75
    const-string p0, "TD_SCDMA_LTE"

    return-object p0

    .line 77
    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    .line 78
    const-string p0, "TD_SCDMA_GSM"

    return-object p0

    .line 80
    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    .line 81
    const-string p0, "TD_SCDMA_GSM_LTE"

    return-object p0

    .line 83
    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    .line 84
    const-string p0, "TD_SCDMA_GSM_WCDMA"

    return-object p0

    .line 86
    :cond_7c
    const/16 v0, 0x13

    if-ne p0, v0, :cond_83

    .line 87
    const-string p0, "TD_SCDMA_WCDMA_LTE"

    return-object p0

    .line 89
    :cond_83
    const/16 v0, 0x14

    if-ne p0, v0, :cond_8a

    .line 90
    const-string p0, "TD_SCDMA_GSM_WCDMA_LTE"

    return-object p0

    .line 92
    :cond_8a
    const/16 v0, 0x15

    if-ne p0, v0, :cond_91

    .line 93
    const-string p0, "TD_SCDMA_GSM_WCDMA_CDMA_EVDO_AUTO"

    return-object p0

    .line 95
    :cond_91
    const/16 v0, 0x16

    if-ne p0, v0, :cond_98

    .line 96
    const-string p0, "TD_SCDMA_LTE_CDMA_EVDO_GSM_WCDMA"

    return-object p0

    .line 98
    :cond_98
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
