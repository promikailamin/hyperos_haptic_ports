.class public final Landroid/hardware/radio/V1_0/SmsAcknowledgeFailCause;
.super Ljava/lang/Object;
.source "SmsAcknowledgeFailCause.java"


# static fields
.field public static final blacklist MEMORY_CAPACITY_EXCEEDED:I = 0xd3

.field public static final blacklist UNSPECIFIED_ERROR:I = 0xff


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    nop

    .line 20
    and-int/lit16 v1, p0, 0xd3

    const/16 v2, 0xd3

    if-ne v1, v2, :cond_12

    .line 21
    const-string v1, "MEMORY_CAPACITY_EXCEEDED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    goto :goto_13

    .line 20
    :cond_12
    const/4 v2, 0x0

    .line 24
    :goto_13
    and-int/lit16 v1, p0, 0xff

    const/16 v3, 0xff

    if-ne v1, v3, :cond_1f

    .line 25
    const-string v1, "UNSPECIFIED_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    move v2, v3

    .line 28
    :cond_1f
    if-eq p0, v2, :cond_3d

    .line 29
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

    .line 31
    :cond_3d
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 8
    const/16 v0, 0xd3

    if-ne p0, v0, :cond_7

    .line 9
    const-string p0, "MEMORY_CAPACITY_EXCEEDED"

    return-object p0

    .line 11
    :cond_7
    const/16 v0, 0xff

    if-ne p0, v0, :cond_e

    .line 12
    const-string p0, "UNSPECIFIED_ERROR"

    return-object p0

    .line 14
    :cond_e
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
