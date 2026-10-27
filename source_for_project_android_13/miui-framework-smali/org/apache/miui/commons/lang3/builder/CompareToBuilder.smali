.class public Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
.super Ljava/lang/Object;
.source "CompareToBuilder.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/miui/commons/lang3/builder/Builder<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist comparison:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 106
    return-void
.end method

.method private static blacklist reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V
    .registers 12
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p3, "builder"    # Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .param p4, "useTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 314
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 315
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 316
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_57

    iget v2, p3, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v2, :cond_57

    .line 317
    aget-object v2, v0, v1

    .line 318
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, v3}, Lorg/apache/miui/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 319
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_54

    if-nez p4, :cond_35

    .line 320
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_54

    .line 321
    :cond_35
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_54

    .line 323
    :try_start_3f
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    :try_end_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_3f .. :try_end_4a} :catch_4b

    .line 328
    goto :goto_54

    .line 324
    :catch_4b
    move-exception v3

    .line 327
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 316
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :cond_54
    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 331
    .end local v1    # "i":I
    :cond_57
    return-void
.end method

.method public static blacklist reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 136
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)I
    .registers 4
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 201
    .local p2, "excludeFields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .registers 5
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "compareTransients"    # Z

    .line 168
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs blacklist reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .registers 16
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "compareTransients"    # Z
    .param p4, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 276
    .local p3, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne p0, p1, :cond_4

    .line 277
    const/4 v0, 0x0

    return v0

    .line 279
    :cond_4
    if-eqz p0, :cond_40

    if-eqz p1, :cond_40

    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 283
    .local v0, "lhsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 286
    new-instance v4, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    invoke-direct {v4}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;-><init>()V

    .line 287
    .local v4, "compareToBuilder":Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v5, p2

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    .line 288
    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_35

    if-eq v0, p3, :cond_35

    .line 289
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 290
    move-object v5, p0

    move-object v6, p1

    move-object v7, v0

    move-object v8, v4

    move v9, p2

    move-object v10, p4

    invoke-static/range {v5 .. v10}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    goto :goto_1f

    .line 292
    :cond_35
    invoke-virtual {v4}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v1

    return v1

    .line 284
    .end local v4    # "compareToBuilder":Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    :cond_3a
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    .line 280
    .end local v0    # "lhsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static varargs blacklist reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I
    .registers 5
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # [Ljava/lang/String;

    .line 234
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist append(BB)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1, "lhs"    # B
    .param p2, "rhs"    # B

    .line 528
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 529
    return-object p0

    .line 531
    :cond_5
    if-ge p1, p2, :cond_9

    const/4 v0, -0x1

    goto :goto_e

    :cond_9
    if-le p1, p2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 532
    return-object p0
.end method

.method public blacklist append(CC)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1, "lhs"    # C
    .param p2, "rhs"    # C

    .line 512
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 513
    return-object p0

    .line 515
    :cond_5
    if-ge p1, p2, :cond_9

    const/4 v0, -0x1

    goto :goto_e

    :cond_9
    if-le p1, p2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 516
    return-object p0
.end method

.method public blacklist append(DD)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 6
    .param p1, "lhs"    # D
    .param p3, "rhs"    # D

    .line 549
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 550
    return-object p0

    .line 552
    :cond_5
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 553
    return-object p0
.end method

.method public blacklist append(FF)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1, "lhs"    # F
    .param p2, "rhs"    # F

    .line 570
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 571
    return-object p0

    .line 573
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 574
    return-object p0
.end method

.method public blacklist append(II)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1, "lhs"    # I
    .param p2, "rhs"    # I

    .line 480
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 481
    return-object p0

    .line 483
    :cond_5
    if-ge p1, p2, :cond_9

    const/4 v0, -0x1

    goto :goto_e

    :cond_9
    if-le p1, p2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 484
    return-object p0
.end method

.method public blacklist append(JJ)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 6
    .param p1, "lhs"    # J
    .param p3, "rhs"    # J

    .line 464
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 465
    return-object p0

    .line 467
    :cond_5
    cmp-long v0, p1, p3

    if-gez v0, :cond_b

    const/4 v0, -0x1

    goto :goto_12

    :cond_b
    cmp-long v0, p1, p3

    if-lez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 468
    return-object p0
.end method

.method public blacklist append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 6
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)",
            "Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    .line 400
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 401
    return-object p0

    .line 403
    :cond_5
    if-ne p1, p2, :cond_8

    .line 404
    return-object p0

    .line 406
    :cond_8
    if-nez p1, :cond_e

    .line 407
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 408
    return-object p0

    .line 410
    :cond_e
    if-nez p2, :cond_14

    .line 411
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 412
    return-object p0

    .line 414
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 418
    instance-of v0, p1, [J

    if-eqz v0, :cond_2d

    .line 419
    move-object v0, p1

    check-cast v0, [J

    move-object v1, p2

    check-cast v1, [J

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([J[J)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto/16 :goto_ad

    .line 420
    :cond_2d
    instance-of v0, p1, [I

    if-eqz v0, :cond_3c

    .line 421
    move-object v0, p1

    check-cast v0, [I

    move-object v1, p2

    check-cast v1, [I

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([I[I)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto/16 :goto_ad

    .line 422
    :cond_3c
    instance-of v0, p1, [S

    if-eqz v0, :cond_4a

    .line 423
    move-object v0, p1

    check-cast v0, [S

    move-object v1, p2

    check-cast v1, [S

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([S[S)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    .line 424
    :cond_4a
    instance-of v0, p1, [C

    if-eqz v0, :cond_58

    .line 425
    move-object v0, p1

    check-cast v0, [C

    move-object v1, p2

    check-cast v1, [C

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([C[C)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    .line 426
    :cond_58
    instance-of v0, p1, [B

    if-eqz v0, :cond_66

    .line 427
    move-object v0, p1

    check-cast v0, [B

    move-object v1, p2

    check-cast v1, [B

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([B[B)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    .line 428
    :cond_66
    instance-of v0, p1, [D

    if-eqz v0, :cond_74

    .line 429
    move-object v0, p1

    check-cast v0, [D

    move-object v1, p2

    check-cast v1, [D

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([D[D)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    .line 430
    :cond_74
    instance-of v0, p1, [F

    if-eqz v0, :cond_82

    .line 431
    move-object v0, p1

    check-cast v0, [F

    move-object v1, p2

    check-cast v1, [F

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([F[F)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    .line 432
    :cond_82
    instance-of v0, p1, [Z

    if-eqz v0, :cond_90

    .line 433
    move-object v0, p1

    check-cast v0, [Z

    move-object v1, p2

    check-cast v1, [Z

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([Z[Z)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    .line 437
    :cond_90
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_ad

    .line 441
    :cond_9a
    if-nez p3, :cond_a6

    .line 443
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 444
    .local v0, "comparable":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 445
    .end local v0    # "comparable":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    goto :goto_ad

    .line 447
    :cond_a6
    move-object v0, p3

    .line 448
    .local v0, "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 451
    .end local v0    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    :goto_ad
    return-object p0
.end method

.method public blacklist append(SS)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1, "lhs"    # S
    .param p2, "rhs"    # S

    .line 496
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 497
    return-object p0

    .line 499
    :cond_5
    if-ge p1, p2, :cond_9

    const/4 v0, -0x1

    goto :goto_e

    :cond_9
    if-le p1, p2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 500
    return-object p0
.end method

.method public blacklist append(ZZ)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1, "lhs"    # Z
    .param p2, "rhs"    # Z

    .line 586
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 587
    return-object p0

    .line 589
    :cond_5
    if-ne p1, p2, :cond_8

    .line 590
    return-object p0

    .line 592
    :cond_8
    if-nez p1, :cond_e

    .line 593
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_11

    .line 595
    :cond_e
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 597
    :goto_11
    return-object p0
.end method

.method public blacklist append([B[B)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 7
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .line 849
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 850
    return-object p0

    .line 852
    :cond_5
    if-ne p1, p2, :cond_8

    .line 853
    return-object p0

    .line 855
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 856
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 857
    return-object p0

    .line 859
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 860
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 861
    return-object p0

    .line 863
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 864
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 865
    return-object p0

    .line 867
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 868
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(BB)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 867
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 870
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public blacklist append([C[C)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 7
    .param p1, "lhs"    # [C
    .param p2, "rhs"    # [C

    .line 809
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 810
    return-object p0

    .line 812
    :cond_5
    if-ne p1, p2, :cond_8

    .line 813
    return-object p0

    .line 815
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 816
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 817
    return-object p0

    .line 819
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 820
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 821
    return-object p0

    .line 823
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 824
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 825
    return-object p0

    .line 827
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 828
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(CC)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 830
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public blacklist append([D[D)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .param p1, "lhs"    # [D
    .param p2, "rhs"    # [D

    .line 889
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 890
    return-object p0

    .line 892
    :cond_5
    if-ne p1, p2, :cond_8

    .line 893
    return-object p0

    .line 895
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 896
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 897
    return-object p0

    .line 899
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 900
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 901
    return-object p0

    .line 903
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 904
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 905
    return-object p0

    .line 907
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 908
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(DD)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 907
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 910
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public blacklist append([F[F)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 7
    .param p1, "lhs"    # [F
    .param p2, "rhs"    # [F

    .line 929
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 930
    return-object p0

    .line 932
    :cond_5
    if-ne p1, p2, :cond_8

    .line 933
    return-object p0

    .line 935
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 936
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 937
    return-object p0

    .line 939
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 940
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 941
    return-object p0

    .line 943
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 944
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 945
    return-object p0

    .line 947
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 948
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(FF)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 947
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 950
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public blacklist append([I[I)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 7
    .param p1, "lhs"    # [I
    .param p2, "rhs"    # [I

    .line 729
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 730
    return-object p0

    .line 732
    :cond_5
    if-ne p1, p2, :cond_8

    .line 733
    return-object p0

    .line 735
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 736
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 737
    return-object p0

    .line 739
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 740
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 741
    return-object p0

    .line 743
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 744
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 745
    return-object p0

    .line 747
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 748
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(II)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 750
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public blacklist append([J[J)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .param p1, "lhs"    # [J
    .param p2, "rhs"    # [J

    .line 689
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 690
    return-object p0

    .line 692
    :cond_5
    if-ne p1, p2, :cond_8

    .line 693
    return-object p0

    .line 695
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 696
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 697
    return-object p0

    .line 699
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 700
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 701
    return-object p0

    .line 703
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 704
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 705
    return-object p0

    .line 707
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 708
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(JJ)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 710
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public blacklist append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;

    .line 622
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)",
            "Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    .line 649
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 650
    return-object p0

    .line 652
    :cond_5
    if-ne p1, p2, :cond_8

    .line 653
    return-object p0

    .line 655
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 656
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 657
    return-object p0

    .line 659
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 660
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 661
    return-object p0

    .line 663
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 664
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 665
    return-object p0

    .line 667
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 668
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 670
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public blacklist append([S[S)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 7
    .param p1, "lhs"    # [S
    .param p2, "rhs"    # [S

    .line 769
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 770
    return-object p0

    .line 772
    :cond_5
    if-ne p1, p2, :cond_8

    .line 773
    return-object p0

    .line 775
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 776
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 777
    return-object p0

    .line 779
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 780
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 781
    return-object p0

    .line 783
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 784
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 785
    return-object p0

    .line 787
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 788
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(SS)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 790
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public blacklist append([Z[Z)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 7
    .param p1, "lhs"    # [Z
    .param p2, "rhs"    # [Z

    .line 969
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 970
    return-object p0

    .line 972
    :cond_5
    if-ne p1, p2, :cond_8

    .line 973
    return-object p0

    .line 975
    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 976
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 977
    return-object p0

    .line 979
    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 980
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 981
    return-object p0

    .line 983
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 984
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 985
    return-object p0

    .line 987
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 988
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(ZZ)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 987
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 990
    .end local v0    # "i":I
    :cond_33
    return-object p0
.end method

.method public blacklist appendSuper(I)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 3
    .param p1, "superCompareTo"    # I

    .line 343
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 344
    return-object p0

    .line 346
    :cond_5
    iput p1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 347
    return-object p0
.end method

.method public blacklist build()Ljava/lang/Integer;
    .registers 2

    .line 1018
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist build()Ljava/lang/Object;
    .registers 2

    .line 89
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toComparison()I
    .registers 2

    .line 1004
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return v0
.end method
