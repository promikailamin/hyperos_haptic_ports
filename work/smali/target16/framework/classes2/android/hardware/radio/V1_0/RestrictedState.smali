.class public final Landroid/hardware/radio/V1_0/RestrictedState;
.super Ljava/lang/Object;
.source "RestrictedState.java"


# static fields
.field public static final blacklist CS_ALL:I = 0x4

.field public static final blacklist CS_EMERGENCY:I = 0x1

.field public static final blacklist CS_NORMAL:I = 0x2

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist PS_ALL:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    nop

    .line 32
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 34
    const-string v1, "CS_EMERGENCY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_17

    .line 33
    :cond_16
    const/4 v2, 0x0

    .line 37
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 38
    const-string v1, "CS_NORMAL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    or-int/lit8 v2, v2, 0x2

    .line 41
    :cond_23
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2f

    .line 42
    const-string v1, "CS_ALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    or-int/lit8 v2, v2, 0x4

    .line 45
    :cond_2f
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3c

    .line 46
    const-string v1, "PS_ALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    or-int/lit8 v2, v2, 0x10

    .line 49
    :cond_3c
    if-eq p0, v2, :cond_5a

    .line 50
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

    .line 52
    :cond_5a
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 11
    if-nez p0, :cond_5

    .line 12
    const-string p0, "NONE"

    return-object p0

    .line 14
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 15
    const-string p0, "CS_EMERGENCY"

    return-object p0

    .line 17
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 18
    const-string p0, "CS_NORMAL"

    return-object p0

    .line 20
    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    .line 21
    const-string p0, "CS_ALL"

    return-object p0

    .line 23
    :cond_17
    const/16 v0, 0x10

    if-ne p0, v0, :cond_1e

    .line 24
    const-string p0, "PS_ALL"

    return-object p0

    .line 26
    :cond_1e
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
