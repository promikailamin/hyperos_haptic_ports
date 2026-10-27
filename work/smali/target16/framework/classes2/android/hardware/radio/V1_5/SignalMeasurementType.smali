.class public final Landroid/hardware/radio/V1_5/SignalMeasurementType;
.super Ljava/lang/Object;
.source "SignalMeasurementType.java"


# static fields
.field public static final blacklist RSCP:I = 0x2

.field public static final blacklist RSRP:I = 0x3

.field public static final blacklist RSRQ:I = 0x4

.field public static final blacklist RSSI:I = 0x1

.field public static final blacklist RSSNR:I = 0x5

.field public static final blacklist SSRSRP:I = 0x6

.field public static final blacklist SSRSRQ:I = 0x7

.field public static final blacklist SSSINR:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    nop

    .line 94
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 95
    const-string v1, "RSSI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    goto :goto_12

    .line 94
    :cond_11
    const/4 v2, 0x0

    .line 98
    :goto_12
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e

    .line 99
    const-string v1, "RSCP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    or-int/lit8 v2, v2, 0x2

    .line 102
    :cond_1e
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_29

    .line 103
    const-string v1, "RSRP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    move v2, v3

    .line 106
    :cond_29
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_35

    .line 107
    const-string v1, "RSRQ"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    or-int/lit8 v2, v2, 0x4

    .line 110
    :cond_35
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_41

    .line 111
    const-string v1, "RSSNR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    or-int/lit8 v2, v2, 0x5

    .line 114
    :cond_41
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_4d

    .line 115
    const-string v1, "SSRSRP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    or-int/lit8 v2, v2, 0x6

    .line 118
    :cond_4d
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_58

    .line 119
    const-string v1, "SSRSRQ"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    move v2, v3

    .line 122
    :cond_58
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_65

    .line 123
    const-string v1, "SSSINR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    or-int/lit8 v2, v2, 0x8

    .line 126
    :cond_65
    if-eq p0, v2, :cond_83

    .line 127
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

    .line 129
    :cond_83
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 64
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 65
    const-string p0, "RSSI"

    return-object p0

    .line 67
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 68
    const-string p0, "RSCP"

    return-object p0

    .line 70
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 71
    const-string p0, "RSRP"

    return-object p0

    .line 73
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 74
    const-string p0, "RSRQ"

    return-object p0

    .line 76
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 77
    const-string p0, "RSSNR"

    return-object p0

    .line 79
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    .line 80
    const-string p0, "SSRSRP"

    return-object p0

    .line 82
    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    .line 83
    const-string p0, "SSRSRQ"

    return-object p0

    .line 85
    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    .line 86
    const-string p0, "SSSINR"

    return-object p0

    .line 88
    :cond_31
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
