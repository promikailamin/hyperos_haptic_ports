.class public final Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;
.super Lcom/android/server/permission/jarjar/kotlin/collections/AbstractMutableList;
.source "ListBuilder.kt"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/permission/jarjar/kotlin/collections/AbstractMutableList;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private backing:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private length:I

.field private final offset:I

.field private final parent:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final root:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;IILcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;)V
    .registers 7

    const-string v0, "backing"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "root"

    invoke-static {p5, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractMutableList;-><init>()V

    .line 308
    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    .line 309
    iput p2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    .line 310
    iput p3, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    .line 311
    iput-object p4, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->parent:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;

    .line 312
    iput-object p5, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    .line 315
    # getter for: Ljava/util/AbstractList;->modCount:I
    invoke-static {p5}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;)I

    move-result p1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public static final synthetic access$getBacking$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;)[Ljava/lang/Object;
    .registers 1

    .line 307
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getLength$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;)I
    .registers 1

    .line 307
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    return p0
.end method

.method public static final synthetic access$getModCount$p$s1462993667(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;)I
    .registers 1

    .line 307
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method public static final synthetic access$getOffset$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;)I
    .registers 1

    .line 307
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    return p0
.end method

.method public static final synthetic access$getRoot$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;)Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;
    .registers 1

    .line 307
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    return-object p0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .registers 2

    .line 324
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Deserialization is supported via proxy only"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 3

    .line 319
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 320
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/SerializedCollection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/SerializedCollection;-><init>(Ljava/util/Collection;I)V

    return-object v0

    .line 322
    :cond_d
    new-instance p0, Ljava/io/NotSerializableException;

    const-string v0, "The list cannot be serialized while it is being built."

    invoke-direct {p0, v0}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5

    .line 389
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 390
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 391
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    .line 392
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->addAtInternal(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 4

    .line 382
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 383
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 384
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->addAtInternal(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5

    const-string v0, "elements"

    invoke-static {p2, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 405
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 406
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    .line 407
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 408
    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->addAllInternal(ILjava/util/Collection;I)V

    if-lez v0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5

    const-string v0, "elements"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 397
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 398
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 399
    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget v2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->addAllInternal(ILjava/util/Collection;I)V

    if-lez v0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public final addAllInternal(ILjava/util/Collection;I)V
    .registers 5

    .line 518
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->registerModification()V

    .line 519
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->parent:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;

    if-eqz v0, :cond_b

    .line 520
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->addAllInternal(ILjava/util/Collection;I)V

    goto :goto_10

    .line 522
    :cond_b
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    # invokes: Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->addAllInternal(ILjava/util/Collection;I)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$addAllInternal(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;ILjava/util/Collection;I)V

    .line 524
    :goto_10
    iget-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$getBacking$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    .line 525
    iget p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    return-void
.end method

.method public final addAtInternal(ILjava/lang/Object;)V
    .registers 4

    .line 507
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->registerModification()V

    .line 508
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->parent:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;

    if-eqz v0, :cond_b

    .line 509
    invoke-virtual {v0, p1, p2}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->addAtInternal(ILjava/lang/Object;)V

    goto :goto_10

    .line 511
    :cond_b
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    # invokes: Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->addAtInternal(ILjava/lang/Object;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$addAtInternal(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;ILjava/lang/Object;)V

    .line 513
    :goto_10
    iget-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$getBacking$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    .line 514
    iget p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    return-void
.end method

.method public final checkForComodification()V
    .registers 2

    .line 491
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    # getter for: Ljava/util/AbstractList;->modCount:I
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;)I

    move-result v0

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    if-ne v0, p0, :cond_b

    return-void

    .line 492
    :cond_b
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final checkIsMutable()V
    .registers 1

    .line 496
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->isReadOnly()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public clear()V
    .registers 3

    .line 413
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 414
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 415
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->removeRangeInternal(II)V

    return-void
.end method

.method public final contentEquals(Ljava/util/List;)Z
    .registers 4

    .line 503
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    # invokes: Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilderKt;->subarrayContentEquals([Ljava/lang/Object;IILjava/util/List;)Z
    invoke-static {v0, v1, p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilderKt;->access$subarrayContentEquals([Ljava/lang/Object;IILjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 469
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    if-eq p1, p0, :cond_14

    .line 471
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_12

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->contentEquals(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4

    .line 338
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 339
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 340
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getSize()I
    .registers 1

    .line 328
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 329
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 475
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 476
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    # invokes: Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilderKt;->subarrayContentHashCode([Ljava/lang/Object;II)I
    invoke-static {v0, v1, p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilderKt;->access$subarrayContentHashCode([Ljava/lang/Object;II)I

    move-result p0

    return p0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5

    .line 353
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    const/4 v0, 0x0

    .line 355
    :goto_4
    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    if-ge v0, v1, :cond_19

    .line 356
    iget-object v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 333
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 334
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    if-nez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final isReadOnly()Z
    .registers 1

    .line 500
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->isReadOnly:Z
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$isReadOnly$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    const/4 v0, 0x0

    .line 372
    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5

    .line 363
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 364
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_1a

    .line 366
    iget-object v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    return v0

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_1a
    const/4 p0, -0x1

    return p0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    .line 373
    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4

    .line 376
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 377
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    .line 378
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList$Itr;

    invoke-direct {v0, p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList$Itr;-><init>(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;I)V

    return-object v0
.end method

.method public final registerModification()V
    .registers 2

    .line 487
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    .line 426
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 427
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 428
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_f

    .line 429
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->removeAt(I)Ljava/lang/Object;

    :cond_f
    if-ltz p1, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5

    const-string v0, "elements"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 435
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 436
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->retainOrRemoveAllInternal(IILjava/util/Collection;Z)I

    move-result p0

    if-lez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    return v2
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 4

    .line 419
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 420
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 421
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 422
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->removeAtInternal(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final removeAtInternal(I)Ljava/lang/Object;
    .registers 3

    .line 529
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->registerModification()V

    .line 530
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->parent:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;

    if-eqz v0, :cond_c

    .line 531
    invoke-virtual {v0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->removeAtInternal(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_12

    .line 533
    :cond_c
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    # invokes: Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->removeAtInternal(I)Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$removeAtInternal(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;I)Ljava/lang/Object;

    move-result-object p1

    .line 535
    :goto_12
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    return-object p1
.end method

.method public final removeRangeInternal(II)V
    .registers 4

    if-lez p2, :cond_5

    .line 540
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->registerModification()V

    .line 541
    :cond_5
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->parent:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;

    if-eqz v0, :cond_d

    .line 542
    invoke-virtual {v0, p1, p2}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->removeRangeInternal(II)V

    goto :goto_12

    .line 544
    :cond_d
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    # invokes: Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->removeRangeInternal(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$removeRangeInternal(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;II)V

    .line 546
    :goto_12
    iget p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5

    const-string v0, "elements"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 441
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 442
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->retainOrRemoveAllInternal(IILjava/util/Collection;Z)I

    move-result p0

    if-lez p0, :cond_17

    return v2

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public final retainOrRemoveAllInternal(IILjava/util/Collection;Z)I
    .registers 6

    .line 552
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->parent:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;

    if-eqz v0, :cond_9

    .line 553
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->retainOrRemoveAllInternal(IILjava/util/Collection;Z)I

    move-result p1

    goto :goto_f

    .line 555
    :cond_9
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    # invokes: Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->retainOrRemoveAllInternal(IILjava/util/Collection;Z)I
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$retainOrRemoveAllInternal(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;IILjava/util/Collection;Z)I

    move-result p1

    :goto_f
    if-lez p1, :cond_14

    .line 557
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->registerModification()V

    .line 558
    :cond_14
    iget p2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 344
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 345
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 346
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 347
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int v1, p0, p1

    aget-object v1, v0, v1

    add-int/2addr p0, p1

    .line 348
    aput-object p2, v0, p0

    return-object v1
.end method

.method public subList(II)Ljava/util/List;
    .registers 11

    .line 446
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;->checkRangeIndexes$kotlin_stdlib(III)V

    .line 447
    new-instance v2, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;

    iget-object v3, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int v4, v0, p1

    sub-int v5, p2, p1

    iget-object v7, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;-><init>([Ljava/lang/Object;IILcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;)V

    return-object v2
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .line 463
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 465
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    add-int/2addr p0, v1

    invoke-static {v0, v1, p0}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6

    const-string v0, "array"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 453
    array-length v0, p1

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    if-ge v0, v1, :cond_20

    .line 454
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr v1, p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p0, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "copyOfRange(...)"

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 457
    :cond_20
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v2, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 459
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsJVMKt;->terminateCollectionToArray(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 480
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 481
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget v2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    # invokes: Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilderKt;->subarrayContentToString([Ljava/lang/Object;IILjava/util/Collection;)Ljava/lang/String;
    invoke-static {v0, v1, v2, p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilderKt;->access$subarrayContentToString([Ljava/lang/Object;IILjava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
