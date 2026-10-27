.class public final Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;
.super Lcom/android/server/permission/jarjar/kotlin/collections/builders/AbstractMapBuilderEntrySet;
.source "MapBuilder.kt"


# instance fields
.field public final backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)V
    .registers 3

    const-string v0, "backing"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    invoke-direct {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/AbstractMapBuilderEntrySet;-><init>()V

    .line 690
    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 689
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;->add(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .registers 2

    const-string p0, "element"

    invoke-static {p1, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2

    const-string p0, "elements"

    invoke-static {p1, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public clear()V
    .registers 1

    .line 696
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->clear()V

    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->containsAllEntries$kotlin_stdlib(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public containsEntry(Ljava/util/Map$Entry;)Z
    .registers 3

    const-string v0, "element"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->containsEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public getSize()I
    .registers 1

    .line 693
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->size()I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 694
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1

    .line 700
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->entriesIterator$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntriesItr;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/util/Map$Entry;)Z
    .registers 3

    const-string v0, "element"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->removeEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 705
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 710
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method
