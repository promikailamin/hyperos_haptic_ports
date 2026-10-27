.class public abstract Lcom/android/server/permission/access/immutable/IndexedSet;
.super Ljava/lang/Object;
.source "IndexedSet.kt"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final set:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Landroid/util/ArraySet;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedSet;->set:Landroid/util/ArraySet;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/ArraySet;Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/permission/access/immutable/IndexedSet;-><init>(Landroid/util/ArraySet;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 2

    .line 28
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final elementAt(I)Ljava/lang/Object;
    .registers 2

    .line 32
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedSet;->set:Landroid/util/ArraySet;

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt___CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getSet$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/ArraySet;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedSet;->set:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final getSize()I
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public toMutable()Lcom/android/server/permission/access/immutable/MutableIndexedSet;
    .registers 2

    .line 34
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Lcom/android/server/permission/access/immutable/IndexedSet;)V

    return-object v0
.end method

.method public bridge synthetic toMutable()Ljava/lang/Object;
    .registers 1

    .line 22
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedSet;->toMutable()Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
