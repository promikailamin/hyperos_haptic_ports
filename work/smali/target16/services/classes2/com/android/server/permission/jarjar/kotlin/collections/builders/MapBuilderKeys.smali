.class public final Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderKeys;
.super Lcom/android/server/permission/jarjar/kotlin/collections/AbstractMutableSet;
.source "MapBuilder.kt"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field public final backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)V
    .registers 3

    const-string v0, "backing"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    invoke-direct {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractMutableSet;-><init>()V

    .line 636
    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderKeys;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 2

    .line 643
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2

    const-string p0, "elements"

    invoke-static {p1, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public clear()V
    .registers 1

    .line 642
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderKeys;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    .line 641
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderKeys;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getSize()I
    .registers 1

    .line 639
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderKeys;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->size()I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 640
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderKeys;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1

    .line 646
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderKeys;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysIterator$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$KeysItr;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    .line 645
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderKeys;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->removeKey$kotlin_stdlib(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderKeys;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 650
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderKeys;->backing:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 655
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method
