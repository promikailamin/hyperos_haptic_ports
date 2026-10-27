.class public final Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;
.super Ljava/lang/Object;
.source "MapBuilder.kt"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field public final expectedModCount:I

.field public final index:I

.field public final map:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;I)V
    .registers 4

    const-string v0, "map"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->map:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    .line 594
    iput p2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->index:I

    .line 596
    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->modCount:I
    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getModCount$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)I

    move-result p1

    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public final checkForComodification()V
    .registers 2

    .line 629
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->map:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->modCount:I
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getModCount$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)I

    move-result v0

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->expectedModCount:I

    if-ne v0, p0, :cond_b

    return-void

    .line 630
    :cond_b
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string v0, "The backing map has been modified after this entry was obtained."

    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 620
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_24

    .line 621
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 622
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .line 600
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->checkForComodification()V

    .line 601
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->map:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getKeysArray$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->index:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 606
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->checkForComodification()V

    .line 607
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->map:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getValuesArray$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->index:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 624
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_17
    xor-int p0, v0, v1

    return p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 611
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->checkForComodification()V

    .line 612
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->map:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 613
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->map:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    # invokes: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->allocateValuesArray()[Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$allocateValuesArray(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    .line 614
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->index:I

    aget-object v1, v0, p0

    .line 615
    aput-object p1, v0, p0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
