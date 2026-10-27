.class public final Landroid/hardware/radio/V1_2/AudioQuality;
.super Ljava/lang/Object;
.source "AudioQuality.java"


# static fields
.field public static final blacklist AMR:I = 0x1

.field public static final blacklist AMR_WB:I = 0x2

.field public static final blacklist EVRC:I = 0x6

.field public static final blacklist EVRC_B:I = 0x7

.field public static final blacklist EVRC_NW:I = 0x9

.field public static final blacklist EVRC_WB:I = 0x8

.field public static final blacklist GSM_EFR:I = 0x3

.field public static final blacklist GSM_FR:I = 0x4

.field public static final blacklist GSM_HR:I = 0x5

.field public static final blacklist UNSPECIFIED:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    nop

    .line 82
    const-string v1, "UNSPECIFIED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 84
    const-string v1, "AMR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    goto :goto_17

    .line 83
    :cond_16
    const/4 v2, 0x0

    .line 87
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 88
    const-string v1, "AMR_WB"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    or-int/lit8 v2, v2, 0x2

    .line 91
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    .line 92
    const-string v1, "GSM_EFR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    move v2, v3

    .line 95
    :cond_2e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3a

    .line 96
    const-string v1, "GSM_FR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    or-int/lit8 v2, v2, 0x4

    .line 99
    :cond_3a
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_46

    .line 100
    const-string v1, "GSM_HR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    or-int/lit8 v2, v2, 0x5

    .line 103
    :cond_46
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_52

    .line 104
    const-string v1, "EVRC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    or-int/lit8 v2, v2, 0x6

    .line 107
    :cond_52
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5d

    .line 108
    const-string v1, "EVRC_B"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    move v2, v3

    .line 111
    :cond_5d
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6a

    .line 112
    const-string v1, "EVRC_WB"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    or-int/lit8 v2, v2, 0x8

    .line 115
    :cond_6a
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_77

    .line 116
    const-string v1, "EVRC_NW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    or-int/lit8 v2, v2, 0x9

    .line 119
    :cond_77
    if-eq p0, v2, :cond_95

    .line 120
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

    .line 122
    :cond_95
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 46
    if-nez p0, :cond_5

    .line 47
    const-string p0, "UNSPECIFIED"

    return-object p0

    .line 49
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 50
    const-string p0, "AMR"

    return-object p0

    .line 52
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 53
    const-string p0, "AMR_WB"

    return-object p0

    .line 55
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 56
    const-string p0, "GSM_EFR"

    return-object p0

    .line 58
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 59
    const-string p0, "GSM_FR"

    return-object p0

    .line 61
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 62
    const-string p0, "GSM_HR"

    return-object p0

    .line 64
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 65
    const-string p0, "EVRC"

    return-object p0

    .line 67
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 68
    const-string p0, "EVRC_B"

    return-object p0

    .line 70
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 71
    const-string p0, "EVRC_WB"

    return-object p0

    .line 73
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 74
    const-string p0, "EVRC_NW"

    return-object p0

    .line 76
    :cond_3d
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
