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

    const/16 v0, 0x49

    .line 51
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/util/jobs/ArrayUtils;->sCache:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 53
    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lcom/android/internal/util/jobs/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 2
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

    if-nez p0, :cond_7

    .line 713
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 715
    :cond_7
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static add(Ljava/util/ArrayList;ILjava/lang/Object;)Ljava/util/ArrayList;
    .registers 3
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

    if-nez p0, :cond_7

    .line 755
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 757
    :cond_7
    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public static add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 2
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

    if-nez p0, :cond_7

    .line 747
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 749
    :cond_7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static addAll(Landroid/util/ArraySet;Ljava/util/Collection;)Landroid/util/ArraySet;
    .registers 2
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

    if-nez p0, :cond_7

    .line 725
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    :cond_7
    if-eqz p1, :cond_c

    .line 728
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_c
    return-object p0
.end method

.method public static appendBooleanDuplicatesAllowed([ZZ)[Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    .line 656
    new-array p0, p0, [Z

    aput-boolean p1, p0, v0

    return-object p0

    .line 658
    :cond_9
    array-length v1, p0

    add-int/lit8 v2, v1, 0x1

    .line 659
    new-array v2, v2, [Z

    .line 660
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 661
    aput-boolean p1, v2, v1

    return-object v2
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

    const/4 v0, 0x0

    .line 502
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;Z)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    if-nez p3, :cond_c

    .line 514
    invoke-static {p1, p2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    return-object p1

    .line 515
    :cond_c
    array-length p3, p1

    add-int/lit8 v1, p3, 0x1

    .line 516
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 517
    invoke-static {p1, v0, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, p3

    goto :goto_21

    :cond_1a
    const/4 p1, 0x1

    .line 520
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 522
    :goto_21
    aput-object p2, p0, v0

    return-object p0
.end method

.method public static appendInt([II)[I
    .registers 3

    const/4 v0, 0x0

    .line 578
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/jobs/ArrayUtils;->appendInt([IIZ)[I

    move-result-object p0

    return-object p0
.end method

.method public static appendInt([IIZ)[I
    .registers 6

    if-nez p0, :cond_7

    .line 556
    filled-new-array {p1}, [I

    move-result-object p0

    return-object p0

    .line 558
    :cond_7
    array-length v0, p0

    const/4 v1, 0x0

    if-nez p2, :cond_16

    move p2, v1

    :goto_c
    if-ge p2, v0, :cond_16

    .line 561
    aget v2, p0, p2

    if-ne v2, p1, :cond_13

    return-object p0

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_16
    add-int/lit8 p2, v0, 0x1

    .line 566
    new-array p2, p2, [I

    .line 567
    invoke-static {p0, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    aput p1, p2, v0

    return-object p2
.end method

.method public static appendLong([JJ)[J
    .registers 4

    const/4 v0, 0x0

    .line 670
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/ArrayUtils;->appendLong([JJZ)[J

    move-result-object p0

    return-object p0
.end method

.method public static appendLong([JJZ)[J
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    .line 634
    new-array p0, p0, [J

    aput-wide p1, p0, v0

    return-object p0

    .line 636
    :cond_9
    array-length v1, p0

    if-nez p3, :cond_19

    move p3, v0

    :goto_d
    if-ge p3, v1, :cond_19

    .line 639
    aget-wide v2, p0, p3

    cmp-long v2, v2, p1

    if-nez v2, :cond_16

    return-object p0

    :cond_16
    add-int/lit8 p3, p3, 0x1

    goto :goto_d

    :cond_19
    add-int/lit8 p3, v1, 0x1

    .line 644
    new-array p3, p3, [J

    .line 645
    invoke-static {p0, v0, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 646
    aput-wide p1, p3, v1

    return-object p3
.end method

.method public static checkBounds(II)V
    .registers 5

    if-ltz p1, :cond_5

    if-le p0, p1, :cond_5

    return-void

    .line 874
    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; index="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

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

    if-eqz p0, :cond_8

    .line 708
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public static cloneOrNull([J)[J
    .registers 1

    if-eqz p0, :cond_9

    .line 697
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 704
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs concat([[B)[B
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 476
    new-array p0, v0, [B

    return-object p0

    .line 479
    :cond_6
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_9
    if-ge v2, v1, :cond_14

    aget-object v4, p0, v2

    if-eqz v4, :cond_11

    .line 481
    array-length v4, v4

    add-int/2addr v3, v4

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 484
    :cond_14
    new-array v1, v3, [B

    .line 486
    array-length v2, p0

    move v3, v0

    move v4, v3

    :goto_19
    if-ge v3, v2, :cond_28

    aget-object v5, p0, v3

    if-eqz v5, :cond_25

    .line 488
    array-length v6, v5

    invoke-static {v5, v0, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    array-length v5, v5

    add-int/2addr v4, v5

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_28
    return-object v1
.end method

.method public static varargs concat(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;
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

    if-eqz p1, :cond_3a

    .line 431
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_3a

    .line 436
    :cond_6
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_a
    if-ge v2, v0, :cond_16

    aget-object v4, p1, v2

    if-nez v4, :cond_11

    goto :goto_13

    .line 441
    :cond_11
    array-length v4, v4

    add-int/2addr v3, v4

    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    if-nez v3, :cond_1d

    .line 446
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 449
    :cond_1d
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 451
    array-length v0, p1

    move v2, v1

    move v3, v2

    :goto_26
    if-ge v2, v0, :cond_39

    aget-object v4, p1, v2

    if-eqz v4, :cond_36

    .line 452
    array-length v5, v4

    if-nez v5, :cond_30

    goto :goto_36

    .line 455
    :cond_30
    array-length v5, v4

    invoke-static {v4, v1, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    array-length v4, v4

    add-int/2addr v3, v4

    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_39
    return-object p0

    .line 432
    :cond_3a
    :goto_3a
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static contains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)Z"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 774
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static contains([CC)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 358
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget-char v3, p0, v2

    if-ne v3, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    return v0
.end method

.method public static contains([II)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 338
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    if-ne v3, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    return v0
.end method

.method public static contains([JJ)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 348
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_13

    aget-wide v3, p0, v2

    cmp-long v3, v3, p1

    if-nez v3, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 293
    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static containsAll([C[C)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C[C)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 371
    :cond_4
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_15

    aget-char v4, p1, v3

    .line 372
    invoke-static {p0, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([CC)Z

    move-result v4

    if-nez v4, :cond_12

    return v2

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_15
    return v0
.end method

.method public static containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 314
    :cond_4
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_15

    aget-object v4, p1, v3

    .line 315
    invoke-static {p0, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    return v2

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_15
    return v0
.end method

.method public static containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 327
    :cond_4
    array-length v1, p1

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_15

    aget-object v3, p1, v2

    .line 328
    invoke-static {p0, v3}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    return v0
.end method

.method public static convertToIntArray(Landroid/util/ArraySet;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 404
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_18

    .line 406
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    return-object v1
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

    .line 394
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 395
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 396
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return-object v0
.end method

.method public static convertToLongArray([I)[J
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 413
    :cond_4
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 414
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 415
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

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

    .line 462
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_7

    .line 463
    sget-object p0, Landroid/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0

    .line 464
    :cond_7
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_e

    .line 465
    sget-object p0, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    return-object p0

    :cond_e
    const/4 v0, 0x0

    .line 468
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static deepToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_8b

    .line 982
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 983
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Z

    if-ne v0, v1, :cond_1b

    .line 984
    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 985
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [B

    if-ne v0, v1, :cond_2a

    .line 986
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 987
    :cond_2a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [C

    if-ne v0, v1, :cond_39

    .line 988
    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 989
    :cond_39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [D

    if-ne v0, v1, :cond_48

    .line 990
    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 991
    :cond_48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [F

    if-ne v0, v1, :cond_57

    .line 992
    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 993
    :cond_57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [I

    if-ne v0, v1, :cond_66

    .line 994
    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 995
    :cond_66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [J

    if-ne v0, v1, :cond_75

    .line 996
    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 997
    :cond_75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [S

    if-ne v0, v1, :cond_84

    .line 998
    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1000
    :cond_84
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1003
    :cond_8b
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static defeatNullable([I)[I
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    .line 854
    :cond_3
    sget-object p0, Landroid/util/EmptyArray;->INT:[I

    return-object p0
.end method

.method public static defeatNullable([Ljava/io/File;)[Ljava/io/File;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    .line 862
    :cond_3
    sget-object p0, Lcom/android/internal/util/jobs/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    return-object p0
.end method

.method public static defeatNullable([Ljava/lang/String;)[Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    .line 858
    :cond_3
    sget-object p0, Landroid/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0
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

    .line 190
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_7

    .line 191
    sget-object p0, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    return-object p0

    .line 194
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x49

    .line 195
    sget-object v1, Lcom/android/internal/util/jobs/ArrayUtils;->sCache:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eqz v1, :cond_21

    .line 197
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2a

    :cond_21
    const/4 v1, 0x0

    .line 198
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 199
    sget-object p0, Lcom/android/internal/util/jobs/ArrayUtils;->sCache:[Ljava/lang/Object;

    aput-object v1, p0, v0

    .line 204
    :cond_2a
    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method

.method public static emptyIfNull([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    .line 211
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/jobs/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static equals([B[BI)Z
    .registers 8

    if-ltz p2, :cond_21

    const/4 v0, 0x1

    if-ne p0, p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_20

    if-eqz p1, :cond_20

    .line 171
    array-length v2, p0

    if-lt v2, p2, :cond_20

    array-length v2, p1

    if-ge v2, p2, :cond_12

    goto :goto_20

    :cond_12
    move v2, v1

    :goto_13
    if-ge v2, p2, :cond_1f

    .line 175
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1f
    return v0

    :cond_20
    :goto_20
    return v1

    .line 165
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;
    .registers 9
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

    .line 930
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 935
    :cond_7
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    .line 936
    new-array v1, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_10
    if-ge v3, v0, :cond_21

    .line 938
    aget-object v5, p0, v3

    invoke-interface {p2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v1, v3

    if-eqz v5, :cond_1e

    add-int/lit8 v4, v4, 0x1

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 943
    :cond_21
    array-length p2, p0

    if-ne v4, p2, :cond_25

    return-object p0

    .line 946
    :cond_25
    invoke-interface {p1, v4}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-nez v4, :cond_2e

    goto :goto_3f

    :cond_2e
    move p2, v2

    :goto_2f
    if-ge v2, v0, :cond_3f

    .line 952
    aget-boolean v3, v1, v2

    if-eqz v3, :cond_3c

    add-int/lit8 v3, p2, 0x1

    .line 953
    aget-object v4, p0, v2

    aput-object v4, p1, p2

    move p2, v3

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_3f
    :goto_3f
    return-object p1
.end method

.method public static filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 904
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    if-ge v2, v0, :cond_12

    .line 906
    aget-object v4, p0, v2

    if-nez v4, :cond_f

    add-int/lit8 v3, v3, 0x1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    if-nez v3, :cond_15

    return-object p0

    :cond_15
    sub-int v2, v0, v3

    .line 913
    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    move v2, v1

    :goto_1e
    if-ge v1, v0, :cond_2c

    .line 916
    aget-object v3, p0, v1

    if-eqz v3, :cond_29

    add-int/lit8 v4, v2, 0x1

    .line 917
    aput-object v3, p1, v2

    move v2, v4

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2c
    return-object p1
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

    .line 974
    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 975
    :cond_8
    array-length v0, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_18

    aget-object v3, p0, v2

    .line 976
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

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

    .line 1017
    array-length v0, p0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 1013
    array-length v0, p0

    if-le v0, p1, :cond_8

    aget-object p0, p0, p1

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
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

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 303
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 304
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    return v0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_b

    .line 218
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_b

    .line 225
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static isEmpty([B)Z
    .registers 1

    if-eqz p0, :cond_8

    .line 254
    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_8
    const/4 p0, 0x1

    return p0
.end method

.method public static isEmpty([I)Z
    .registers 1

    if-eqz p0, :cond_8

    .line 240
    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_8
    const/4 p0, 0x1

    return p0
.end method

.method public static isEmpty([J)Z
    .registers 1

    if-eqz p0, :cond_8

    .line 247
    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_8
    const/4 p0, 0x1

    return p0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 233
    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_8
    const/4 p0, 0x1

    return p0
.end method

.method public static isEmpty([Z)Z
    .registers 1

    if-eqz p0, :cond_8

    .line 261
    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_8
    const/4 p0, 0x1

    return p0
.end method

.method public static newNonMovableByteArray(I)[B
    .registers 3

    .line 103
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static newNonMovableCharArray(I)[C
    .registers 3

    .line 113
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0
.end method

.method public static newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)[TT;"
        }
    .end annotation

    .line 89
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static newUnpaddedBooleanArray(I)[Z
    .registers 3

    .line 71
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0
.end method

.method public static newUnpaddedByteArray(I)[B
    .registers 3

    .line 58
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static newUnpaddedCharArray(I)[C
    .registers 3

    .line 62
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0
.end method

.method public static newUnpaddedFloatArray(I)[F
    .registers 3

    .line 79
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public static newUnpaddedIntArray(I)[I
    .registers 3

    .line 67
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static newUnpaddedLongArray(I)[J
    .registers 3

    .line 75
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0
.end method

.method public static newUnpaddedObjectArray(I)[Ljava/lang/Object;
    .registers 3

    .line 83
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 9
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

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 796
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 797
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    return v3

    :cond_10
    move v2, v3

    move v4, v2

    :goto_12
    if-ge v2, v1, :cond_27

    if-nez v4, :cond_27

    .line 804
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_22

    move v5, v0

    goto :goto_23

    :cond_22
    move v5, v3

    :goto_23
    or-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_27
    xor-int/lit8 p0, v4, 0x1

    return p0
.end method

.method public static remove(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
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

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 737
    :cond_4
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 738
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    return-object v0

    :cond_e
    return-object p0
.end method

.method public static remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
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

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 765
    :cond_4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 766
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    return-object v0

    :cond_e
    return-object p0
.end method

.method public static removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    if-eqz p1, :cond_31

    .line 533
    invoke-static {p1, p2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-object p1

    .line 534
    :cond_9
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_31

    .line 536
    aget-object v3, p1, v2

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 p2, 0x1

    if-ne v0, p2, :cond_1b

    const/4 p0, 0x0

    return-object p0

    :cond_1b
    add-int/lit8 v3, v0, -0x1

    .line 540
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 541
    invoke-static {p1, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v2, 0x1

    sub-int/2addr v0, v2

    sub-int/2addr v0, p2

    .line 542
    invoke-static {p1, v1, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_31
    return-object p1
.end method

.method public static removeInt([II)[I
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 588
    :cond_4
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_24

    .line 590
    aget v3, p0, v2

    if-ne v3, p1, :cond_21

    add-int/lit8 p1, v0, -0x1

    .line 591
    new-array v3, p1, [I

    if-lez v2, :cond_16

    .line 593
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_16
    if-ge v2, p1, :cond_20

    add-int/lit8 p1, v2, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 596
    invoke-static {p0, p1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_20
    return-object v3

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_24
    return-object p0
.end method

.method public static removeLong([JJ)[J
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 680
    :cond_4
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_26

    .line 682
    aget-wide v3, p0, v2

    cmp-long v3, v3, p1

    if-nez v3, :cond_23

    add-int/lit8 p1, v0, -0x1

    .line 683
    new-array p2, p1, [J

    if-lez v2, :cond_18

    .line 685
    invoke-static {p0, v1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_18
    if-ge v2, p1, :cond_22

    add-int/lit8 p1, v2, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 688
    invoke-static {p0, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_22
    return-object p2

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_26
    return-object p0
.end method

.method public static removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 611
    :cond_4
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_28

    .line 613
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    add-int/lit8 p1, v0, -0x1

    .line 614
    new-array v3, p1, [Ljava/lang/String;

    if-lez v2, :cond_1a

    .line 616
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    if-ge v2, p1, :cond_24

    add-int/lit8 p1, v2, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 619
    invoke-static {p0, p1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    return-object v3

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_28
    return-object p0
.end method

.method public static size(Ljava/util/Collection;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)I"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 275
    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method

.method public static size(Ljava/util/Map;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)I"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 282
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public static size([Ljava/lang/Object;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 268
    :cond_4
    array-length p0, p0

    return p0
.end method

.method public static startsWith([B[B)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    if-nez p1, :cond_6

    goto :goto_1b

    .line 961
    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_b

    return v0

    :cond_b
    move v1, v0

    .line 962
    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 963
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_16

    return v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_19
    const/4 p0, 0x1

    return p0

    :cond_1b
    :goto_1b
    return v0
.end method

.method public static throwsIfOutOfBounds(III)V
    .registers 6

    if-ltz p0, :cond_33

    or-int v0, p1, p2

    if-ltz v0, :cond_b

    sub-int v0, p0, p2

    if-gt p1, v0, :cond_b

    return-void

    .line 892
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; regionStart="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; regionLength="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 888
    :cond_33
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Negative length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 1025
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1027
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, p0, v2

    .line 1029
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-object v0
.end method

.method public static total([J)J
    .registers 7

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_e

    .line 382
    array-length v2, p0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_e

    aget-wide v4, p0, v3

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_e
    return-wide v0
.end method

.method public static trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 780
    :cond_5
    array-length v0, p0

    if-ne v0, p1, :cond_9

    return-object p0

    .line 783
    :cond_9
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I
    .registers 7
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

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 822
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    move v3, v2

    :goto_b
    if-gt v0, v3, :cond_36

    :goto_d
    if-ge v0, v1, :cond_1c

    .line 827
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    :goto_1c
    if-le v3, v0, :cond_2b

    .line 832
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    :cond_2b
    if-lt v0, v3, :cond_2e

    goto :goto_36

    .line 841
    :cond_2e
    invoke-static {p0, v0, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    :cond_36
    :goto_36
    if-lt v2, v0, :cond_3e

    .line 848
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    :cond_3e
    sub-int/2addr v1, v0

    return v1
.end method

.method public static native zeroize([B)V
.end method

.method public static native zeroize([C)V
.end method

.method public static zeroize$ravenwood([B)V
    .registers 2

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    .line 137
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_6
    return-void
.end method

.method public static zeroize$ravenwood([C)V
    .registers 2

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    .line 151
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([CC)V

    :cond_6
    return-void
.end method
