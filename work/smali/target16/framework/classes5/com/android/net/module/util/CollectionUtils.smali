.class public final Lcom/android/net/module/util/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist all(Ljava/util/Collection;Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 101
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 102
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 p0, 0x0

    return p0

    .line 103
    :cond_16
    goto :goto_4

    .line 104
    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist any(Landroid/util/SparseArray;Ljava/util/function/Predicate;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 160
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 161
    const/4 p0, 0x1

    return p0

    .line 159
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 164
    :cond_17
    return v0
.end method

.method public static blacklist any(Ljava/util/Collection;Ljava/util/function/Predicate;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 113
    invoke-static {p0, p1}, Lcom/android/net/module/util/CollectionUtils;->indexOf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static blacklist any(Ljava/util/List;Ljava/util/function/Predicate;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 123
    invoke-static {p0, p1}, Lcom/android/net/module/util/CollectionUtils;->indexOf(Ljava/util/List;Ljava/util/function/Predicate;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static varargs blacklist appendArray([B[B)[B
    .registers 2

    .line 510
    filled-new-array {p0, p1}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/net/module/util/CollectionUtils;->concatArrays([[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs blacklist appendArray(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    .line 518
    filled-new-array {p1, p2}, [[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/net/module/util/CollectionUtils;->concatArrays(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist assoc(Ljava/util/List;Ljava/util/List;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TR;>;)",
            "Landroid/util/ArrayMap<",
            "TT;TR;>;"
        }
    .end annotation

    .line 417
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 418
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2f

    .line 421
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 422
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_2e

    .line 423
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 424
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 428
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 425
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "assoc : keys may not contain the same value twice"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 430
    :cond_2e
    return-object v1

    .line 419
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "assoc : collections must be the same size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs blacklist concatArrays([[B)[B
    .registers 8

    .line 461
    nop

    .line 462
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_5
    if-ge v2, v0, :cond_e

    aget-object v4, p0, v2

    .line 463
    array-length v4, v4

    add-int/2addr v3, v4

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 465
    :cond_e
    new-array v0, v3, [B

    .line 466
    nop

    .line 467
    array-length v2, p0

    move v3, v1

    move v4, v3

    :goto_14
    if-ge v3, v2, :cond_21

    aget-object v5, p0, v3

    .line 468
    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    array-length v5, v5

    add-int/2addr v4, v5

    .line 467
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 471
    :cond_21
    return-object v0
.end method

.method public static varargs blacklist concatArrays(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[[TT;)[TT;"
        }
    .end annotation

    .line 478
    nop

    .line 479
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_5
    if-ge v2, v0, :cond_e

    aget-object v4, p1, v2

    .line 480
    array-length v4, v4

    add-int/2addr v3, v4

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 482
    :cond_e
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 483
    nop

    .line 484
    array-length v0, p1

    move v2, v1

    move v3, v2

    :goto_18
    if-ge v2, v0, :cond_25

    aget-object v4, p1, v2

    .line 485
    array-length v5, v4

    invoke-static {v4, v1, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    array-length v4, v4

    add-int/2addr v3, v4

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 488
    :cond_25
    return-object p0
.end method

.method public static blacklist contains(Ljava/util/Collection;Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 334
    const/4 v0, -0x1

    invoke-static {p0, p1}, Lcom/android/net/module/util/CollectionUtils;->indexOf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result p0

    if-eq v0, p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static blacklist contains([II)Z
    .registers 6

    .line 184
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 185
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    .line 186
    if-ne v3, p1, :cond_e

    .line 187
    const/4 p0, 0x1

    return p0

    .line 185
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 190
    :cond_11
    return v0
.end method

.method public static blacklist contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 197
    invoke-static {p0, p1}, Lcom/android/net/module/util/CollectionUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static blacklist contains([SS)Z
    .registers 6

    .line 171
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 172
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget-short v3, p0, v2

    .line 173
    if-ne v3, p1, :cond_e

    .line 174
    const/4 p0, 0x1

    return p0

    .line 172
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 177
    :cond_11
    return v0
.end method

.method public static blacklist containsAll(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 285
    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static blacklist containsAny(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 270
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 271
    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p0, 0x1

    return p0

    .line 272
    :cond_16
    goto :goto_4

    .line 273
    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist filter(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 241
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 242
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1c
    goto :goto_9

    .line 245
    :cond_1d
    return-object v0
.end method

.method public static blacklist findFirst(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 298
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 299
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-object v0

    .line 300
    :cond_15
    goto :goto_4

    .line 301
    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist findLast(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 318
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_16

    .line 319
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 320
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-object v1

    .line 318
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 322
    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getIndexForValue(Landroid/util/SparseArray;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;TT;)I"
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1a

    .line 445
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 446
    if-nez v2, :cond_10

    .line 447
    if-nez p1, :cond_17

    .line 448
    return v1

    .line 450
    :cond_10
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 451
    return v1

    .line 444
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 454
    :cond_1a
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist indexOf(Ljava/util/Collection;Ljava/util/function/Predicate;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)I"
        }
    .end annotation

    .line 131
    nop

    .line 132
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 133
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    return v0

    .line 134
    :cond_17
    add-int/lit8 v0, v0, 0x1

    .line 135
    goto :goto_6

    .line 136
    :cond_1a
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist indexOf(Ljava/util/List;Ljava/util/function/Predicate;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)I"
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 147
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 148
    return v0

    .line 146
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    :cond_15
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 204
    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 205
    :cond_4
    const/4 v1, 0x0

    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 206
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    .line 205
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 208
    :cond_14
    return v0
.end method

.method public static blacklist indexOfSubArray([B[B)I
    .registers 8

    .line 216
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_22

    .line 217
    nop

    .line 218
    move v2, v0

    :goto_b
    array-length v4, p1

    if-ge v2, v4, :cond_1c

    .line 219
    add-int v4, v1, v2

    aget-byte v4, p0, v4

    aget-byte v5, p1, v2

    if-eq v4, v5, :cond_19

    .line 220
    nop

    .line 221
    move v3, v0

    goto :goto_1c

    .line 218
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 224
    :cond_1c
    :goto_1c
    if-eqz v3, :cond_1f

    .line 225
    return v1

    .line 216
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 228
    :cond_22
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist intArrayToSet([I)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 62
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget v3, p0, v2

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 65
    :cond_15
    return-object v0
.end method

.method public static blacklist isEmpty(Ljava/util/Collection;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .line 53
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static blacklist isEmpty([Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 46
    if-eqz p0, :cond_8

    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static blacklist map(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;)",
            "Ljava/util/ArrayList<",
            "TR;>;"
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 359
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 360
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    goto :goto_d

    .line 362
    :cond_1f
    return-object v0
.end method

.method public static varargs blacklist prependArray([B[B)[B
    .registers 2

    .line 495
    filled-new-array {p1, p0}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/net/module/util/CollectionUtils;->concatArrays([[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs blacklist prependArray(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    .line 503
    filled-new-array {p2, p1}, [[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/net/module/util/CollectionUtils;->concatArrays(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toIntArray(Ljava/util/Collection;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 73
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 74
    nop

    .line 75
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 76
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 78
    goto :goto_c

    .line 79
    :cond_21
    return-object v0
.end method

.method public static blacklist toLongArray(Ljava/util/Collection;)[J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 87
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 88
    nop

    .line 89
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    goto :goto_c

    .line 93
    :cond_21
    return-object v0
.end method

.method public static blacklist total([J)J
    .registers 7

    .line 252
    nop

    .line 253
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_f

    .line 254
    array-length v2, p0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_f

    aget-wide v4, p0, v3

    .line 255
    add-long/2addr v0, v4

    .line 254
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 258
    :cond_f
    return-wide v0
.end method

.method public static blacklist zip(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TR;>;)",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "TT;TR;>;>;"
        }
    .end annotation

    .line 387
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 388
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_26

    .line 391
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_25

    .line 393
    new-instance v3, Landroid/util/Pair;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 395
    :cond_25
    return-object v1

    .line 389
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "zip : collections must be the same size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
