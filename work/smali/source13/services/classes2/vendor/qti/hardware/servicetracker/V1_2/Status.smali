.class public final Lvendor/qti/hardware/servicetracker/V1_2/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static final CALLBACK_DIED:I = 0x6

.field public static final CALLBACK_EXIST:I = 0x5

.field public static final ERROR_INVALID_ARGS:I = 0x2

.field public static final ERROR_NOT_AVAILABLE:I = 0x1

.field public static final ERROR_NOT_SUPPORTED:I = 0x3

.field public static final ERROR_UNKNOWN:I = 0x4

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 54
    .local v1, "flipped":I
    const-string v2, "SUCCESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 56
    const-string v2, "ERROR_NOT_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    or-int/lit8 v1, v1, 0x1

    .line 59
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 60
    const-string v2, "ERROR_INVALID_ARGS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    or-int/lit8 v1, v1, 0x2

    .line 63
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 64
    const-string v2, "ERROR_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    or-int/lit8 v1, v1, 0x3

    .line 67
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 68
    const-string v2, "ERROR_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    or-int/lit8 v1, v1, 0x4

    .line 71
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 72
    const-string v2, "CALLBACK_EXIST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    or-int/lit8 v1, v1, 0x5

    .line 75
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_53

    .line 76
    const-string v2, "CALLBACK_DIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    or-int/lit8 v1, v1, 0x6

    .line 79
    :cond_53
    if-eq p0, v1, :cond_71

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_71
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 27
    if-nez p0, :cond_5

    .line 28
    const-string v0, "SUCCESS"

    return-object v0

    .line 30
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 31
    const-string v0, "ERROR_NOT_AVAILABLE"

    return-object v0

    .line 33
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 34
    const-string v0, "ERROR_INVALID_ARGS"

    return-object v0

    .line 36
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 37
    const-string v0, "ERROR_NOT_SUPPORTED"

    return-object v0

    .line 39
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 40
    const-string v0, "ERROR_UNKNOWN"

    return-object v0

    .line 42
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 43
    const-string v0, "CALLBACK_EXIST"

    return-object v0

    .line 45
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 46
    const-string v0, "CALLBACK_DIED"

    return-object v0

    .line 48
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
