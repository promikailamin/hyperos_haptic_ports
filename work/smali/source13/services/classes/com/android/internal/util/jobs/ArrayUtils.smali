.class public Lcom/android/internal/util/jobs/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final CACHE_SIZE:I = 0x49

.field public static final EMPTY_FILE:[Ljava/io/File;

.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/util/jobs/ArrayUtils;->sCache:[Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lcom/android/internal/util/jobs/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 596
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 597
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object p0, v0

    .line 599
    :cond_8
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 600
    return-object p0
.end method

.method public static add(Ljava/util/ArrayList;ILjava/lang/Object;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;ITT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 638
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p2, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    .line 641
    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 642
    return-object p0
.end method

.method public static add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 630
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    .line 633
    :cond_8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    return-object p0
.end method

.method public static addAll(Landroid/util/ArraySet;Ljava/util/Collection;)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 608
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_8

    .line 609
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object p0, v0

    .line 611
    :cond_8
    if-eqz p1, :cond_d

    .line 612
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 614
    :cond_d
    return-object p0
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .line 401
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;
    .registers 7
    .param p3, "allowDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;Z)[TT;"
        }
    .end annotation

    .line 412
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_19

    .line 413
    if-nez p3, :cond_b

    invoke-static {p1, p2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p1

    .line 414
    :cond_b
    array-length v0, p1

    .line 415
    .local v0, "end":I
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 416
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    .line 418
    .end local v0    # "end":I
    .end local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_19
    const/4 v0, 0x0

    .line 419
    .restart local v0    # "end":I
    const/4 v1, 0x1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 421
    .restart local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :goto_21
    aput-object p2, v1, v0

    .line 422
    return-object v1
.end method

.method public static appendInt([II)[I
    .registers 3
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .line 477
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/jobs/ArrayUtils;->appendInt([IIZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static appendInt([IIZ)[I
    .registers 7
    .param p0, "cur"    # [I
    .param p1, "val"    # I
    .param p2, "allowDuplicates"    # Z

    .line 454
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 455
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p1, v1, v0

    return-object v1

    .line 457
    :cond_9
    array-length v1, p0

    .line 458
    .local v1, "N":I
    if-nez p2, :cond_17

    .line 459
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_17

    .line 460
    aget v3, p0, v2

    if-ne v3, p1, :cond_14

    .line 461
    return-object p0

    .line 459
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 465
    .end local v2    # "i":I
    :cond_17
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    .line 466
    .local v2, "ret":[I
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    aput p1, v2, v1

    .line 468
    return-object v2
.end method

.method public static appendLong([JJ)[J
    .registers 4
    .param p0, "cur"    # [J
    .param p1, "val"    # J

    .line 554
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v0

    return-object v0
.end method

.method public static appendLong([JJZ)[J
    .registers 9
    .param p0, "cur"    # [J
    .param p1, "val"    # J
    .param p3, "allowDuplicates"    # Z

    .line 532
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 533
    const/4 v1, 0x1

    new-array v1, v1, [J

    aput-wide p1, v1, v0

    return-object v1

    .line 535
    :cond_9
    array-length v1, p0

    .line 536
    .local v1, "N":I
    if-nez p3, :cond_19

    .line 537
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_19

    .line 538
    aget-wide v3, p0, v2

    cmp-long v3, v3, p1

    if-nez v3, :cond_16

    .line 539
    return-object p0

    .line 537
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 543
    .end local v2    # "i":I
    :cond_19
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [J

    .line 544
    .local v2, "ret":[J
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    aput-wide p1, v2, v1

    .line 546
    return-object v2
.end method

.method public static checkBounds(II)V
    .registers 5
    .param p0, "len"    # I
    .param p1, "index"    # I

    .line 757
    if-ltz p1, :cond_5

    if-le p0, p1, :cond_5

    .line 760
    return-void

    .line 758
    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 592
    .local p0, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-eqz p0, :cond_8

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public static cloneOrNull([J)[J
    .registers 2
    .param p0, "array"    # [J

    .line 581
    if-eqz p0, :cond_9

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public static cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 588
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_9

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public static varargs concatElements(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[[TT;)[TT;"
        }
    .end annotation

    .line 353
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "arrays":[[Ljava/lang/Object;, "[[TT;"
    if-eqz p1, :cond_3a

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_3a

    .line 357
    :cond_6
    const/4 v0, 0x0

    .line 358
    .local v0, "totalLength":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_16

    aget-object v4, p1, v3

    .line 359
    .local v4, "item":[Ljava/lang/Object;, "[TT;"
    if-nez v4, :cond_11

    .line 360
    goto :goto_13

    .line 363
    :cond_11
    array-length v5, v4

    add-int/2addr v0, v5

    .line 358
    .end local v4    # "item":[Ljava/lang/Object;, "[TT;"
    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 367
    :cond_16
    if-nez v0, :cond_1d

    .line 368
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 371
    :cond_1d
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 372
    .local v1, "all":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 373
    .local v3, "pos":I
    array-length v4, p1

    move v5, v2

    :goto_26
    if-ge v5, v4, :cond_39

    aget-object v6, p1, v5

    .line 374
    .local v6, "item":[Ljava/lang/Object;, "[TT;"
    if-eqz v6, :cond_36

    array-length v7, v6

    if-nez v7, :cond_30

    .line 375
    goto :goto_36

    .line 377
    :cond_30
    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    array-length v7, v6

    add-int/2addr v3, v7

    .line 373
    .end local v6    # "item":[Ljava/lang/Object;, "[TT;"
    :cond_36
    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 380
    :cond_39
    return-object v1

    .line 354
    .end local v0    # "totalLength":I
    .end local v1    # "all":[Ljava/lang/Object;, "[TT;"
    .end local v3    # "pos":I
    :cond_3a
    :goto_3a
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static contains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 658
    .local p0, "cur":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static contains([CC)Z
    .registers 6
    .param p0, "array"    # [C
    .param p1, "value"    # C

    .line 290
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 291
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget-char v3, p0, v2

    .line 292
    .local v3, "element":C
    if-ne v3, p1, :cond_e

    .line 293
    const/4 v0, 0x1

    return v0

    .line 291
    .end local v3    # "element":C
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 296
    :cond_11
    return v0
.end method

.method public static contains([II)Z
    .registers 6
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 270
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 271
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    .line 272
    .local v3, "element":I
    if-ne v3, p1, :cond_e

    .line 273
    const/4 v0, 0x1

    return v0

    .line 271
    .end local v3    # "element":I
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 276
    :cond_11
    return v0
.end method

.method public static contains([JJ)Z
    .registers 9
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .line 280
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 281
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_13

    aget-wide v3, p0, v2

    .line 282
    .local v3, "element":J
    cmp-long v5, v3, p1

    if-nez v5, :cond_10

    .line 283
    const/4 v0, 0x1

    return v0

    .line 281
    .end local v3    # "element":J
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 286
    :cond_13
    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 226
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static containsAll([C[C)Z
    .registers 8
    .param p0, "array"    # [C
    .param p1, "check"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C[C)Z"
        }
    .end annotation

    .line 303
    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 304
    :cond_4
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_15

    aget-char v4, p1, v3

    .line 305
    .local v4, "checkItem":C
    invoke-static {p0, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([CC)Z

    move-result v5

    if-nez v5, :cond_12

    .line 306
    return v2

    .line 304
    .end local v4    # "checkItem":C
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 309
    :cond_15
    return v0
.end method

.method public static containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    .line 246
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "check":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 247
    :cond_4
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_15

    aget-object v4, p1, v3

    .line 248
    .local v4, "checkItem":Ljava/lang/Object;, "TT;"
    invoke-static {p0, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 249
    return v2

    .line 247
    .end local v4    # "checkItem":Ljava/lang/Object;, "TT;"
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 252
    :cond_15
    return v0
.end method

.method public static containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    .line 259
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "check":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 260
    :cond_4
    array-length v1, p1

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_15

    aget-object v3, p1, v2

    .line 261
    .local v3, "checkItem":Ljava/lang/Object;, "TT;"
    invoke-static {p0, v3}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 262
    const/4 v0, 0x1

    return v0

    .line 260
    .end local v3    # "checkItem":Ljava/lang/Object;, "TT;"
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 265
    :cond_15
    return v0
.end method

.method public static convertToIntArray(Ljava/util/List;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 327
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 328
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 329
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 331
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static convertToLongArray([I)[J
    .registers 5
    .param p0, "intArray"    # [I

    .line 335
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 336
    :cond_4
    array-length v0, p0

    new-array v0, v0, [J

    .line 337
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 338
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 340
    .end local v1    # "i":I
    :cond_13
    return-object v0
.end method

.method private static createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 384
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_9

    .line 385
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    check-cast v0, [Ljava/lang/Object;

    return-object v0

    .line 386
    :cond_9
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_10

    .line 387
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    return-object v0

    .line 390
    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static deepToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 866
    if-eqz p0, :cond_94

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 867
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Z

    if-ne v0, v1, :cond_1c

    .line 868
    move-object v0, p0

    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 869
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [B

    if-ne v0, v1, :cond_2c

    .line 870
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 871
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [C

    if-ne v0, v1, :cond_3c

    .line 872
    move-object v0, p0

    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 873
    :cond_3c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [D

    if-ne v0, v1, :cond_4c

    .line 874
    move-object v0, p0

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 875
    :cond_4c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [F

    if-ne v0, v1, :cond_5c

    .line 876
    move-object v0, p0

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 877
    :cond_5c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [I

    if-ne v0, v1, :cond_6c

    .line 878
    move-object v0, p0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 879
    :cond_6c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [J

    if-ne v0, v1, :cond_7c

    .line 880
    move-object v0, p0

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 881
    :cond_7c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [S

    if-ne v0, v1, :cond_8c

    .line 882
    move-object v0, p0

    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 884
    :cond_8c
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 887
    :cond_94
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static defeatNullable([I)[I
    .registers 2
    .param p0, "val"    # [I

    .line 738
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    :goto_6
    return-object v0
.end method

.method public static defeatNullable([Ljava/io/File;)[Ljava/io/File;
    .registers 2
    .param p0, "val"    # [Ljava/io/File;

    .line 746
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    sget-object v0, Lcom/android/internal/util/jobs/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    :goto_6
    return-object v0
.end method

.method public static defeatNullable([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "val"    # [Ljava/lang/String;

    .line 742
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_6
    return-object v0
.end method

.method public static emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 123
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_7

    .line 124
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    return-object v0

    .line 127
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x49

    .line 128
    .local v0, "bucket":I
    sget-object v1, Lcom/android/internal/util/jobs/ArrayUtils;->sCache:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 130
    .local v1, "cache":Ljava/lang/Object;
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2a

    .line 131
    :cond_21
    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 132
    sget-object v2, Lcom/android/internal/util/jobs/ArrayUtils;->sCache:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 137
    :cond_2a
    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    return-object v2
.end method

.method public static emptyIfNull([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 144
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p1, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_8

    :cond_4
    invoke-static {p1}, Lcom/android/internal/util/jobs/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method public static equals([B[BI)Z
    .registers 8
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B
    .param p2, "length"    # I

    .line 97
    if-ltz p2, :cond_21

    .line 101
    const/4 v0, 0x1

    if-ne p0, p1, :cond_6

    .line 102
    return v0

    .line 104
    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_20

    if-eqz p1, :cond_20

    array-length v2, p0

    if-lt v2, p2, :cond_20

    array-length v2, p1

    if-ge v2, p2, :cond_12

    goto :goto_20

    .line 107
    :cond_12
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, p2, :cond_1f

    .line 108
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_1c

    .line 109
    return v1

    .line 107
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 112
    .end local v2    # "i":I
    :cond_1f
    return v0

    .line 105
    :cond_20
    :goto_20
    return v1

    .line 98
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 814
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p1, "arrayConstructor":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 815
    return-object p0

    .line 818
    :cond_7
    const/4 v0, 0x0

    .line 819
    .local v0, "matchesCount":I
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    .line 820
    .local v1, "size":I
    new-array v2, v1, [Z

    .line 821
    .local v2, "tests":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_22

    .line 822
    aget-object v4, p0, v3

    invoke-interface {p2, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v2, v3

    .line 823
    aget-boolean v4, v2, v3

    if-eqz v4, :cond_1f

    .line 824
    add-int/lit8 v0, v0, 0x1

    .line 821
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 827
    .end local v3    # "i":I
    :cond_22
    array-length v3, p0

    if-ne v0, v3, :cond_26

    .line 828
    return-object p0

    .line 830
    :cond_26
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 831
    .local v3, "result":[Ljava/lang/Object;, "[TT;"
    if-nez v0, :cond_2f

    .line 832
    return-object v3

    .line 834
    :cond_2f
    const/4 v4, 0x0

    .line 835
    .local v4, "outIdx":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_31
    if-ge v5, v1, :cond_41

    .line 836
    aget-boolean v6, v2, v5

    if-eqz v6, :cond_3e

    .line 837
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "outIdx":I
    .local v6, "outIdx":I
    aget-object v7, p0, v5

    aput-object v7, v3, v4

    move v4, v6

    .line 835
    .end local v6    # "outIdx":I
    .restart local v4    # "outIdx":I
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 840
    .end local v5    # "i":I
    :cond_41
    return-object v3
.end method

.method public static filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 787
    .local p0, "val":[Ljava/lang/Object;, "[TT;"
    .local p1, "arrayConstructor":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const/4 v0, 0x0

    .line 788
    .local v0, "nullCount":I
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    .line 789
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_11

    .line 790
    aget-object v3, p0, v2

    if-nez v3, :cond_e

    .line 791
    add-int/lit8 v0, v0, 0x1

    .line 789
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 794
    .end local v2    # "i":I
    :cond_11
    if-nez v0, :cond_14

    .line 795
    return-object p0

    .line 797
    :cond_14
    sub-int v2, v1, v0

    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 798
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 799
    .local v3, "outIdx":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-ge v4, v1, :cond_2e

    .line 800
    aget-object v5, p0, v4

    if-eqz v5, :cond_2b

    .line 801
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "outIdx":I
    .local v5, "outIdx":I
    aget-object v6, p0, v4

    aput-object v6, v2, v3

    move v3, v5

    .line 799
    .end local v5    # "outIdx":I
    .restart local v3    # "outIdx":I
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 804
    .end local v4    # "i":I
    :cond_2e
    return-object v2
.end method

.method public static find([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/Predicate<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 858
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 859
    :cond_8
    array-length v0, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_18

    aget-object v3, p0, v2

    .line 860
    .local v3, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    .line 859
    .end local v3    # "item":Ljava/lang/Object;, "TT;"
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 862
    :cond_18
    return-object v1
.end method

.method public static firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .line 901
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public static getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)TT;"
        }
    .end annotation

    .line 897
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_8

    array-length v0, p0

    if-le v0, p1, :cond_8

    aget-object v0, p0, p1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 235
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 236
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 237
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    .line 236
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 239
    .end local v1    # "i":I
    :cond_14
    return v0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 151
    .local p0, "array":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 158
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static isEmpty([B)Z
    .registers 2
    .param p0, "array"    # [B

    .line 187
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([I)Z
    .registers 2
    .param p0, "array"    # [I

    .line 173
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([J)Z
    .registers 2
    .param p0, "array"    # [J

    .line 180
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 166
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isEmpty([Z)Z
    .registers 2
    .param p0, "array"    # [Z

    .line 194
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .registers 3
    .param p1, "minLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)[TT;"
        }
    .end annotation

    .line 85
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static newUnpaddedBooleanArray(I)[Z
    .registers 3
    .param p0, "minLen"    # I

    .line 67
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static newUnpaddedByteArray(I)[B
    .registers 3
    .param p0, "minLen"    # I

    .line 54
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static newUnpaddedCharArray(I)[C
    .registers 3
    .param p0, "minLen"    # I

    .line 58
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static newUnpaddedFloatArray(I)[F
    .registers 3
    .param p0, "minLen"    # I

    .line 75
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static newUnpaddedIntArray(I)[I
    .registers 3
    .param p0, "minLen"    # I

    .line 63
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static newUnpaddedLongArray(I)[J
    .registers 3
    .param p0, "minLen"    # I

    .line 71
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static newUnpaddedObjectArray(I)[Ljava/lang/Object;
    .registers 3
    .param p0, "minLen"    # I

    .line 79
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;)Z"
        }
    .end annotation

    .line 676
    .local p0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "b":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 677
    return v0

    .line 680
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 681
    .local v1, "sizeA":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 682
    .local v2, "sizeB":I
    const/4 v3, 0x0

    if-eqz p0, :cond_2e

    if-eqz p1, :cond_2e

    if-eq v1, v2, :cond_14

    goto :goto_2e

    .line 686
    :cond_14
    const/4 v4, 0x0

    .line 687
    .local v4, "diff":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_16
    if-ge v5, v1, :cond_2b

    if-nez v4, :cond_2b

    .line 688
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_26

    move v6, v0

    goto :goto_27

    :cond_26
    move v6, v3

    :goto_27
    or-int/2addr v4, v6

    .line 687
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 690
    .end local v5    # "i":I
    :cond_2b
    xor-int/lit8 v0, v4, 0x1

    return v0

    .line 683
    .end local v4    # "diff":Z
    :cond_2e
    :goto_2e
    return v3
.end method

.method public static remove(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 618
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 619
    return-object v0

    .line 621
    :cond_4
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 622
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 623
    return-object v0

    .line 625
    :cond_e
    return-object p0
.end method

.method public static remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 646
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 647
    return-object v0

    .line 649
    :cond_4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 650
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 651
    return-object v0

    .line 653
    :cond_e
    return-object p0
.end method

.method public static removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .line 431
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_32

    .line 432
    invoke-static {p1, p2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-object p1

    .line 433
    :cond_9
    array-length v0, p1

    .line 434
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_32

    .line 435
    aget-object v2, p1, v1

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 436
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    .line 437
    const/4 v2, 0x0

    return-object v2

    .line 439
    :cond_1a
    add-int/lit8 v3, v0, -0x1

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 440
    .local v3, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    invoke-static {p1, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    add-int/lit8 v4, v1, 0x1

    sub-int v5, v0, v1

    sub-int/2addr v5, v2

    invoke-static {p1, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    return-object v3

    .line 434
    .end local v3    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 446
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_32
    return-object p1
.end method

.method public static removeInt([II)[I
    .registers 7
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .line 484
    if-nez p0, :cond_4

    .line 485
    const/4 v0, 0x0

    return-object v0

    .line 487
    :cond_4
    array-length v0, p0

    .line 488
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_27

    .line 489
    aget v2, p0, v1

    if-ne v2, p1, :cond_24

    .line 490
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [I

    .line 491
    .local v2, "ret":[I
    if-lez v1, :cond_16

    .line 492
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    :cond_16
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_23

    .line 495
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 497
    :cond_23
    return-object v2

    .line 488
    .end local v2    # "ret":[I
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 500
    .end local v1    # "i":I
    :cond_27
    return-object p0
.end method

.method public static removeLong([JJ)[J
    .registers 8
    .param p0, "cur"    # [J
    .param p1, "val"    # J

    .line 561
    if-nez p0, :cond_4

    .line 562
    const/4 v0, 0x0

    return-object v0

    .line 564
    :cond_4
    array-length v0, p0

    .line 565
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_29

    .line 566
    aget-wide v2, p0, v1

    cmp-long v2, v2, p1

    if-nez v2, :cond_26

    .line 567
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [J

    .line 568
    .local v2, "ret":[J
    if-lez v1, :cond_18

    .line 569
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    :cond_18
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_25

    .line 572
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    :cond_25
    return-object v2

    .line 565
    .end local v2    # "ret":[J
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 577
    .end local v1    # "i":I
    :cond_29
    return-object p0
.end method

.method public static removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "cur"    # [Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 507
    if-nez p0, :cond_4

    .line 508
    const/4 v0, 0x0

    return-object v0

    .line 510
    :cond_4
    array-length v0, p0

    .line 511
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_2b

    .line 512
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 513
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 514
    .local v2, "ret":[Ljava/lang/String;
    if-lez v1, :cond_1a

    .line 515
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    :cond_1a
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_27

    .line 518
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    :cond_27
    return-object v2

    .line 511
    .end local v2    # "ret":[Ljava/lang/String;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 523
    .end local v1    # "i":I
    :cond_2b
    return-object p0
.end method

.method public static size(Ljava/util/Collection;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)I"
        }
    .end annotation

    .line 208
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_8
    return v0
.end method

.method public static size(Ljava/util/Map;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)I"
        }
    .end annotation

    .line 215
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_8
    return v0
.end method

.method public static size([Ljava/lang/Object;)I
    .registers 2
    .param p0, "array"    # [Ljava/lang/Object;

    .line 201
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    array-length v0, p0

    :goto_5
    return v0
.end method

.method public static startsWith([B[B)Z
    .registers 6
    .param p0, "cur"    # [B
    .param p1, "val"    # [B

    .line 844
    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    if-nez p1, :cond_6

    goto :goto_1b

    .line 845
    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_b

    return v0

    .line 846
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 847
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_16

    return v0

    .line 846
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 849
    .end local v1    # "i":I
    :cond_19
    const/4 v0, 0x1

    return v0

    .line 844
    :cond_1b
    :goto_1b
    return v0
.end method

.method public static throwsIfOutOfBounds(III)V
    .registers 6
    .param p0, "len"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 771
    if-ltz p0, :cond_39

    .line 775
    or-int v0, p1, p2

    if-ltz v0, :cond_b

    sub-int v0, p0, p2

    if-gt p1, v0, :cond_b

    .line 779
    return-void

    .line 776
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; regionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; regionLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_39
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toList([Ljava/lang/Object;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 909
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 911
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, p0, v2

    .line 913
    .local v3, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    .end local v3    # "item":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 915
    :cond_12
    return-object v0
.end method

.method public static total([J)J
    .registers 7
    .param p0, "array"    # [J

    .line 313
    const-wide/16 v0, 0x0

    .line 314
    .local v0, "total":J
    if-eqz p0, :cond_e

    .line 315
    array-length v2, p0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_e

    aget-wide v4, p0, v3

    .line 316
    .local v4, "value":J
    add-long/2addr v0, v4

    .line 315
    .end local v4    # "value":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 319
    :cond_e
    return-wide v0
.end method

.method public static trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 662
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 664
    :cond_5
    array-length v0, p0

    if-ne v0, p1, :cond_9

    .line 665
    return-object p0

    .line 667
    :cond_9
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 663
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)I"
        }
    .end annotation

    .line 702
    .local p0, "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    if-nez p0, :cond_4

    .line 703
    const/4 v0, 0x0

    return v0

    .line 706
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 707
    .local v0, "size":I
    const/4 v1, 0x0

    .line 708
    .local v1, "leftIdx":I
    add-int/lit8 v2, v0, -0x1

    .line 709
    .local v2, "rightIdx":I
    :goto_b
    if-gt v1, v2, :cond_36

    .line 711
    :goto_d
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 716
    :cond_1c
    :goto_1c
    if-le v2, v1, :cond_2b

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 717
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 720
    :cond_2b
    if-lt v1, v2, :cond_2e

    .line 722
    goto :goto_36

    .line 725
    :cond_2e
    invoke-static {p0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 726
    add-int/lit8 v1, v1, 0x1

    .line 727
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 731
    :cond_36
    :goto_36
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_38
    if-lt v3, v1, :cond_40

    .line 732
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 731
    add-int/lit8 v3, v3, -0x1

    goto :goto_38

    .line 734
    .end local v3    # "i":I
    :cond_40
    sub-int v3, v0, v1

    return v3
.end method
