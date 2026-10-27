.class public final Landroid/hardware/radio/V1_6/EmcIndicator;
.super Ljava/lang/Object;
.source "EmcIndicator.java"


# static fields
.field public static final blacklist EMC_BOTH_NR_EUTRA_CONNECTED_TO_5GCN:B = 0x3t

.field public static final blacklist EMC_EUTRA_CONNECTED_TO_5GCN:B = 0x2t

.field public static final blacklist EMC_NOT_SUPPORTED:B = 0x0t

.field public static final blacklist EMC_NR_CONNECTED_TO_5GCN:B = 0x1t


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(B)Ljava/lang/String;
    .registers 5

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    nop

    .line 40
    const-string v1, "EMC_NOT_SUPPORTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 42
    const-string v1, "EMC_NR_CONNECTED_TO_5GCN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    int-to-byte v1, v2

    goto :goto_18

    .line 41
    :cond_17
    const/4 v1, 0x0

    .line 45
    :goto_18
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    .line 46
    const-string v2, "EMC_EUTRA_CONNECTED_TO_5GCN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    .line 49
    :cond_25
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_32

    .line 50
    const-string v2, "EMC_BOTH_NR_EUTRA_CONNECTED_TO_5GCN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    or-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    .line 53
    :cond_32
    if-eq p0, v1, :cond_55

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v1, v1

    and-int/2addr p0, v1

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_55
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(B)Ljava/lang/String;
    .registers 3

    .line 22
    if-nez p0, :cond_5

    .line 23
    const-string p0, "EMC_NOT_SUPPORTED"

    return-object p0

    .line 25
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 26
    const-string p0, "EMC_NR_CONNECTED_TO_5GCN"

    return-object p0

    .line 28
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 29
    const-string p0, "EMC_EUTRA_CONNECTED_TO_5GCN"

    return-object p0

    .line 31
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 32
    const-string p0, "EMC_BOTH_NR_EUTRA_CONNECTED_TO_5GCN"

    return-object p0

    .line 34
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
