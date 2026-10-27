.class public Lorg/apache/miui/commons/lang3/EnumUtils;
.super Ljava/lang/Object;
.source "EnumUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static blacklist checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation

    .line 200
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "EnumClass must be defined."

    invoke-static {p0, v2, v1}, Lorg/apache/miui/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    .line 203
    .local v1, "constants":[Ljava/lang/Enum;, "[TE;"
    const/4 v2, 0x1

    if-eqz v1, :cond_13

    move v3, v2

    goto :goto_14

    :cond_13
    move v3, v0

    :goto_14
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v0

    const-string v5, "%s does not seem to be an Enum type"

    invoke-static {v3, v5, v4}, Lorg/apache/miui/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 204
    array-length v3, v1

    const/16 v4, 0x40

    if-gt v3, v4, :cond_24

    move v3, v2

    goto :goto_25

    :cond_24
    move v3, v0

    :goto_25
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    .line 205
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    .line 204
    const-string v0, "Cannot store %s %s values in %s bits"

    invoke-static {v3, v0, v5}, Lorg/apache/miui/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 207
    return-object p0
.end method

.method public static blacklist generateBitVector(Ljava/lang/Class;Ljava/lang/Iterable;)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "TE;>;)J"
        }
    .end annotation

    .line 136
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/EnumUtils;->checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;

    .line 137
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-wide/16 v0, 0x0

    .line 139
    .local v0, "total":J
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    .line 140
    .local v3, "constant":Ljava/lang/Enum;, "TE;"
    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    shl-int/2addr v4, v5

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 141
    .end local v3    # "constant":Ljava/lang/Enum;, "TE;"
    goto :goto_c

    .line 142
    :cond_21
    return-wide v0
.end method

.method public static varargs blacklist generateBitVector(Ljava/lang/Class;[Ljava/lang/Enum;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;[TE;)J"
        }
    .end annotation

    .line 162
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p1, "values":[Ljava/lang/Enum;, "[TE;"
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 163
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/EnumUtils;->generateBitVector(Ljava/lang/Class;Ljava/lang/Iterable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .registers 4
    .param p1, "enumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 109
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 110
    return-object v0

    .line 113
    :cond_4
    :try_start_4
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 114
    :catch_9
    move-exception v1

    .line 115
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    return-object v0
.end method

.method public static blacklist getEnumList(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 71
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static blacklist getEnumMap(Ljava/lang/Class;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TE;>;"
        }
    .end annotation

    .line 54
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 55
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TE;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 56
    .local v4, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v4    # "e":Ljava/lang/Enum;, "TE;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 58
    :cond_1b
    return-object v0
.end method

.method public static blacklist isValidEnum(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 4
    .param p1, "enumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 86
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 87
    return v0

    .line 90
    :cond_4
    :try_start_4
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7} :catch_9

    .line 91
    const/4 v0, 0x1

    return v0

    .line 92
    :catch_9
    move-exception v1

    .line 93
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    return v0
.end method

.method public static blacklist processBitVector(Ljava/lang/Class;J)Ljava/util/EnumSet;
    .registers 12
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;J)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 180
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/EnumUtils;->checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 181
    .local v0, "constants":[Ljava/lang/Enum;, "[TE;"
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 182
    .local v1, "results":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_29

    aget-object v4, v0, v3

    .line 183
    .local v4, "constant":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x1

    shl-int v5, v6, v5

    int-to-long v5, v5

    and-long/2addr v5, p1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_26

    .line 184
    invoke-virtual {v1, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v4    # "constant":Ljava/lang/Enum;, "TE;"
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 187
    :cond_29
    return-object v1
.end method
