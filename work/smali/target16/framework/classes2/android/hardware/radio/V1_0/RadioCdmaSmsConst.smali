.class public final Landroid/hardware/radio/V1_0/RadioCdmaSmsConst;
.super Ljava/lang/Object;
.source "RadioCdmaSmsConst.java"


# static fields
.field public static final blacklist ADDRESS_MAX:I = 0x24

.field public static final blacklist BEARER_DATA_MAX:I = 0xff

.field public static final blacklist IP_ADDRESS_SIZE:I = 0x4

.field public static final blacklist MAX_UD_HEADERS:I = 0x7

.field public static final blacklist SUBADDRESS_MAX:I = 0x24

.field public static final blacklist UDH_ANIM_NUM_BITMAPS:I = 0x4

.field public static final blacklist UDH_EO_DATA_SEGMENT_MAX:I = 0x83

.field public static final blacklist UDH_LARGE_BITMAP_SIZE:I = 0x20

.field public static final blacklist UDH_LARGE_PIC_SIZE:I = 0x80

.field public static final blacklist UDH_MAX_SND_SIZE:I = 0x80

.field public static final blacklist UDH_OTHER_SIZE:I = 0xe2

.field public static final blacklist UDH_SMALL_BITMAP_SIZE:I = 0x8

.field public static final blacklist UDH_SMALL_PIC_SIZE:I = 0x20

.field public static final blacklist UDH_VAR_PIC_SIZE:I = 0x86

.field public static final blacklist USER_DATA_MAX:I = 0xe5


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 8

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    nop

    .line 72
    and-int/lit8 v1, p0, 0x24

    const/16 v2, 0x24

    if-ne v1, v2, :cond_13

    .line 73
    const-string v3, "ADDRESS_MAX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    move v3, v2

    goto :goto_14

    .line 72
    :cond_13
    const/4 v3, 0x0

    .line 76
    :goto_14
    if-ne v1, v2, :cond_1c

    .line 77
    const-string v1, "SUBADDRESS_MAX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    goto :goto_1d

    .line 76
    :cond_1c
    move v2, v3

    .line 80
    :goto_1d
    and-int/lit16 v1, p0, 0xff

    const/16 v3, 0xff

    if-ne v1, v3, :cond_29

    .line 81
    const-string v1, "BEARER_DATA_MAX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    move v2, v3

    .line 84
    :cond_29
    and-int/lit16 v1, p0, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_36

    .line 85
    const-string v4, "UDH_MAX_SND_SIZE"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit16 v2, v2, 0x80

    .line 88
    :cond_36
    and-int/lit16 v4, p0, 0x83

    const/16 v5, 0x83

    if-ne v4, v5, :cond_43

    .line 89
    const-string v4, "UDH_EO_DATA_SEGMENT_MAX"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit16 v2, v2, 0x83

    .line 92
    :cond_43
    and-int/lit8 v4, p0, 0x7

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4f

    .line 93
    const-string v4, "MAX_UD_HEADERS"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v2, v2, 0x7

    .line 96
    :cond_4f
    and-int/lit16 v4, p0, 0xe5

    const/16 v5, 0xe5

    if-ne v4, v5, :cond_5c

    .line 97
    const-string v4, "USER_DATA_MAX"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit16 v2, v2, 0xe5

    .line 100
    :cond_5c
    if-ne v1, v3, :cond_65

    .line 101
    const-string v1, "UDH_LARGE_PIC_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit16 v2, v2, 0x80

    .line 104
    :cond_65
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_72

    .line 105
    const-string v4, "UDH_SMALL_PIC_SIZE"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v2, v2, 0x20

    .line 108
    :cond_72
    and-int/lit16 v4, p0, 0x86

    const/16 v5, 0x86

    if-ne v4, v5, :cond_7f

    .line 109
    const-string v4, "UDH_VAR_PIC_SIZE"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit16 v2, v2, 0x86

    .line 112
    :cond_7f
    and-int/lit8 v4, p0, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8b

    .line 113
    const-string v6, "UDH_ANIM_NUM_BITMAPS"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v2, v2, 0x4

    .line 116
    :cond_8b
    if-ne v1, v3, :cond_94

    .line 117
    const-string v1, "UDH_LARGE_BITMAP_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit8 v2, v2, 0x20

    .line 120
    :cond_94
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_a1

    .line 121
    const-string v1, "UDH_SMALL_BITMAP_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v2, v2, 0x8

    .line 124
    :cond_a1
    and-int/lit16 v1, p0, 0xe2

    const/16 v3, 0xe2

    if-ne v1, v3, :cond_ae

    .line 125
    const-string v1, "UDH_OTHER_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/lit16 v2, v2, 0xe2

    .line 128
    :cond_ae
    if-ne v4, v5, :cond_b7

    .line 129
    const-string v1, "IP_ADDRESS_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    or-int/lit8 v2, v2, 0x4

    .line 132
    :cond_b7
    if-eq p0, v2, :cond_d5

    .line 133
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

    .line 135
    :cond_d5
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 21
    const/16 v0, 0x24

    if-ne p0, v0, :cond_7

    .line 22
    const-string p0, "ADDRESS_MAX"

    return-object p0

    .line 24
    :cond_7
    if-ne p0, v0, :cond_c

    .line 25
    const-string p0, "SUBADDRESS_MAX"

    return-object p0

    .line 27
    :cond_c
    const/16 v0, 0xff

    if-ne p0, v0, :cond_13

    .line 28
    const-string p0, "BEARER_DATA_MAX"

    return-object p0

    .line 30
    :cond_13
    const/16 v0, 0x80

    if-ne p0, v0, :cond_1a

    .line 31
    const-string p0, "UDH_MAX_SND_SIZE"

    return-object p0

    .line 33
    :cond_1a
    const/16 v1, 0x83

    if-ne p0, v1, :cond_21

    .line 34
    const-string p0, "UDH_EO_DATA_SEGMENT_MAX"

    return-object p0

    .line 36
    :cond_21
    const/4 v1, 0x7

    if-ne p0, v1, :cond_27

    .line 37
    const-string p0, "MAX_UD_HEADERS"

    return-object p0

    .line 39
    :cond_27
    const/16 v1, 0xe5

    if-ne p0, v1, :cond_2e

    .line 40
    const-string p0, "USER_DATA_MAX"

    return-object p0

    .line 42
    :cond_2e
    if-ne p0, v0, :cond_33

    .line 43
    const-string p0, "UDH_LARGE_PIC_SIZE"

    return-object p0

    .line 45
    :cond_33
    const/16 v0, 0x20

    if-ne p0, v0, :cond_3a

    .line 46
    const-string p0, "UDH_SMALL_PIC_SIZE"

    return-object p0

    .line 48
    :cond_3a
    const/16 v1, 0x86

    if-ne p0, v1, :cond_41

    .line 49
    const-string p0, "UDH_VAR_PIC_SIZE"

    return-object p0

    .line 51
    :cond_41
    const/4 v1, 0x4

    if-ne p0, v1, :cond_47

    .line 52
    const-string p0, "UDH_ANIM_NUM_BITMAPS"

    return-object p0

    .line 54
    :cond_47
    if-ne p0, v0, :cond_4c

    .line 55
    const-string p0, "UDH_LARGE_BITMAP_SIZE"

    return-object p0

    .line 57
    :cond_4c
    const/16 v0, 0x8

    if-ne p0, v0, :cond_53

    .line 58
    const-string p0, "UDH_SMALL_BITMAP_SIZE"

    return-object p0

    .line 60
    :cond_53
    const/16 v0, 0xe2

    if-ne p0, v0, :cond_5a

    .line 61
    const-string p0, "UDH_OTHER_SIZE"

    return-object p0

    .line 63
    :cond_5a
    if-ne p0, v1, :cond_5f

    .line 64
    const-string p0, "IP_ADDRESS_SIZE"

    return-object p0

    .line 66
    :cond_5f
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
