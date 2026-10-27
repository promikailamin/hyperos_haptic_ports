.class public final Landroid/hardware/radio/V1_0/CdmaInfoRecName;
.super Ljava/lang/Object;
.source "CdmaInfoRecName.java"


# static fields
.field public static final blacklist CALLED_PARTY_NUMBER:I = 0x1

.field public static final blacklist CALLING_PARTY_NUMBER:I = 0x2

.field public static final blacklist CONNECTED_NUMBER:I = 0x3

.field public static final blacklist DISPLAY:I = 0x0

.field public static final blacklist EXTENDED_DISPLAY:I = 0x7

.field public static final blacklist LINE_CONTROL:I = 0x6

.field public static final blacklist REDIRECTING_NUMBER:I = 0x5

.field public static final blacklist SIGNAL:I = 0x4

.field public static final blacklist T53_AUDIO_CONTROL:I = 0xa

.field public static final blacklist T53_CLIR:I = 0x8

.field public static final blacklist T53_RELEASE:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    nop

    .line 56
    const-string v1, "DISPLAY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 58
    const-string v1, "CALLED_PARTY_NUMBER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_17

    .line 57
    :cond_16
    const/4 v2, 0x0

    .line 61
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 62
    const-string v1, "CALLING_PARTY_NUMBER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    or-int/lit8 v2, v2, 0x2

    .line 65
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    .line 66
    const-string v1, "CONNECTED_NUMBER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    move v2, v3

    .line 69
    :cond_2e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3a

    .line 70
    const-string v1, "SIGNAL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-int/lit8 v2, v2, 0x4

    .line 73
    :cond_3a
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_46

    .line 74
    const-string v1, "REDIRECTING_NUMBER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v2, v2, 0x5

    .line 77
    :cond_46
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_52

    .line 78
    const-string v1, "LINE_CONTROL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v2, v2, 0x6

    .line 81
    :cond_52
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5d

    .line 82
    const-string v1, "EXTENDED_DISPLAY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    move v2, v3

    .line 85
    :cond_5d
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6a

    .line 86
    const-string v1, "T53_CLIR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v2, v2, 0x8

    .line 89
    :cond_6a
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_77

    .line 90
    const-string v1, "T53_RELEASE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v2, v2, 0x9

    .line 93
    :cond_77
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_84

    .line 94
    const-string v1, "T53_AUDIO_CONTROL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v2, v2, 0xa

    .line 97
    :cond_84
    if-eq p0, v2, :cond_a2

    .line 98
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

    .line 100
    :cond_a2
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 17
    if-nez p0, :cond_5

    .line 18
    const-string p0, "DISPLAY"

    return-object p0

    .line 20
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 21
    const-string p0, "CALLED_PARTY_NUMBER"

    return-object p0

    .line 23
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 24
    const-string p0, "CALLING_PARTY_NUMBER"

    return-object p0

    .line 26
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 27
    const-string p0, "CONNECTED_NUMBER"

    return-object p0

    .line 29
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 30
    const-string p0, "SIGNAL"

    return-object p0

    .line 32
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 33
    const-string p0, "REDIRECTING_NUMBER"

    return-object p0

    .line 35
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 36
    const-string p0, "LINE_CONTROL"

    return-object p0

    .line 38
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 39
    const-string p0, "EXTENDED_DISPLAY"

    return-object p0

    .line 41
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 42
    const-string p0, "T53_CLIR"

    return-object p0

    .line 44
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 45
    const-string p0, "T53_RELEASE"

    return-object p0

    .line 47
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 48
    const-string p0, "T53_AUDIO_CONTROL"

    return-object p0

    .line 50
    :cond_44
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
