.class public abstract Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;
.super Ljava/lang/Object;
.source "MapBuilder.kt"


# instance fields
.field public expectedModCount:I

.field public index:I

.field public lastIndex:I

.field public final map:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)V
    .registers 3

    const-string v0, "map"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->map:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    const/4 v0, -0x1

    .line 509
    iput v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    .line 510
    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->modCount:I
    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getModCount$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)I

    move-result p1

    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->expectedModCount:I

    .line 513
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->initNext$kotlin_stdlib()V

    return-void
.end method


# virtual methods
.method public final checkForComodification$kotlin_stdlib()V
    .registers 2

    .line 533
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->map:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->modCount:I
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getModCount$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)I

    move-result v0

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->expectedModCount:I

    if-ne v0, p0, :cond_b

    return-void

    .line 534
    :cond_b
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final getIndex$kotlin_stdlib()I
    .registers 1

    .line 508
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->index:I

    return p0
.end method

.method public final getLastIndex$kotlin_stdlib()I
    .registers 1

    .line 509
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    return p0
.end method

.method public final getMap$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;
    .registers 1

    .line 506
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->map:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    return-object p0
.end method

.method public final hasNext()Z
    .registers 2

    .line 521
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->index:I

    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->map:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getLength$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)I

    move-result p0

    if-ge v0, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final initNext$kotlin_stdlib()V
    .registers 3

    .line 517
    :goto_0
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->index:I

    iget-object v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->map:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getLength$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->map:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->presenceArray:[I
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getPresenceArray$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->index:I

    aget v0, v0, v1

    if-gez v0, :cond_1b

    add-int/lit8 v1, v1, 0x1

    .line 518
    iput v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->index:I

    goto :goto_0

    :cond_1b
    return-void
.end method

.method public final remove()V
    .registers 4

    .line 524
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->checkForComodification$kotlin_stdlib()V

    .line 525
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    .line 526
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->map:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 527
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->map:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    iget v2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    # invokes: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->removeEntryAt(I)V
    invoke-static {v0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$removeEntryAt(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;I)V

    .line 528
    iput v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    .line 529
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->map:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->modCount:I
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getModCount$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->expectedModCount:I

    return-void

    .line 525
    :cond_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() before removing element from the iterator."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setIndex$kotlin_stdlib(I)V
    .registers 2

    .line 508
    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->index:I

    return-void
.end method

.method public final setLastIndex$kotlin_stdlib(I)V
    .registers 2

    .line 509
    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    return-void
.end method
