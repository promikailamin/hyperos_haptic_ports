.class public abstract Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;
.super Lcom/android/server/permission/jarjar/kotlin/collections/AbstractCollection;
.source "AbstractList.kt"

# interfaces
.implements Ljava/util/List;


# static fields
.field public static final Companion:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3

    .line 0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 3

    .line 0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 71
    :cond_4
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 73
    :cond_a
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;->orderedEquals$kotlin_stdlib(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public abstract get(I)Ljava/lang/Object;
.end method

.method public hashCode()I
    .registers 2

    .line 79
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;

    invoke-virtual {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;->orderedHashCode$kotlin_stdlib(Ljava/util/Collection;)I

    move-result p0

    return p0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4

    .line 183
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 27
    invoke-static {v1, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .line 25
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$IteratorImpl;

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$IteratorImpl;-><init>(Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    .line 189
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    .line 190
    :cond_8
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 191
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    .line 29
    invoke-static {v0, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 192
    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    return p0

    :cond_1d
    const/4 p0, -0x1

    return p0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 3

    .line 31
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$ListIteratorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$ListIteratorImpl;-><init>(Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3

    .line 33
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$ListIteratorImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$ListIteratorImpl;-><init>(Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 2

    .line 0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4

    .line 35
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$SubList;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$SubList;-><init>(Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;II)V

    return-object v0
.end method
