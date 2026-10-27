.class public final Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;
.super Ljava/lang/Object;
.source "ListBuilder.kt"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public expectedModCount:I

.field public index:I

.field public lastIndex:I

.field public final list:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;I)V
    .registers 4

    const-string v0, "list"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->list:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    .line 254
    iput p2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->index:I

    const/4 p2, -0x1

    .line 256
    iput p2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 257
    # getter for: Ljava/util/AbstractList;->modCount:I
    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;)I

    move-result p1

    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5

    .line 286
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->checkForComodification()V

    .line 287
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->list:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->index:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    .line 288
    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 289
    iget-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->list:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    # getter for: Ljava/util/AbstractList;->modCount:I
    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;)I

    move-result p1

    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    return-void
.end method

.method public final checkForComodification()V
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->list:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    # getter for: Ljava/util/AbstractList;->modCount:I
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;)I

    move-result v0

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    if-ne v0, p0, :cond_b

    return-void

    .line 303
    :cond_b
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .registers 2

    .line 260
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->index:I

    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->list:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->length:I
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$getLength$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;)I

    move-result p0

    if-ge v0, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public hasPrevious()Z
    .registers 1

    .line 259
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->index:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    .line 273
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->checkForComodification()V

    .line 274
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->index:I

    iget-object v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->list:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->length:I
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$getLength$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 275
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->index:I

    iput v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 276
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->list:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$getBacking$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;)[Ljava/lang/Object;

    move-result-object v0

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    aget-object p0, v0, p0

    return-object p0

    .line 274
    :cond_20
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public nextIndex()I
    .registers 1

    .line 263
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->index:I

    return p0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2

    .line 266
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->checkForComodification()V

    .line 267
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->index:I

    if-lez v0, :cond_18

    add-int/lit8 v0, v0, -0x1

    .line 268
    iput v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->index:I

    iput v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 269
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->list:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$getBacking$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;)[Ljava/lang/Object;

    move-result-object v0

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    aget-object p0, v0, p0

    return-object p0

    .line 267
    :cond_18
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public previousIndex()I
    .registers 1

    .line 262
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public remove()V
    .registers 4

    .line 293
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->checkForComodification()V

    .line 294
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 295
    iget-object v2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->list:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    invoke-virtual {v2, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->removeAt(I)Ljava/lang/Object;

    .line 296
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    iput v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->index:I

    .line 297
    iput v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 298
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->list:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    # getter for: Ljava/util/AbstractList;->modCount:I
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    return-void

    .line 294
    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before removing element from the iterator."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4

    .line 280
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->checkForComodification()V

    .line 281
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 282
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder$Itr;->list:Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 281
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call next() or previous() before replacing element from the iterator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
