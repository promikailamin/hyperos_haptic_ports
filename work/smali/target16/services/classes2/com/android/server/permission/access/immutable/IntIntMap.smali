.class public abstract Lcom/android/server/permission/access/immutable/IntIntMap;
.super Ljava/lang/Object;
.source "IntIntMap.kt"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final array:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/util/SparseIntArray;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/immutable/IntIntMap;->array:Landroid/util/SparseIntArray;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/SparseIntArray;Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/permission/access/immutable/IntIntMap;-><init>(Landroid/util/SparseIntArray;)V

    return-void
.end method


# virtual methods
.method public final contains(I)Z
    .registers 2

    .line 27
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntIntMap;->array:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final get(I)Ljava/lang/Integer;
    .registers 2

    .line 29
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntIntMap;->array:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseIntArray;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntIntMap;->array:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public final getSize()I
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntIntMap;->array:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    return p0
.end method

.method public final indexOfKey(I)I
    .registers 2

    .line 31
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntIntMap;->array:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntIntMap;->array:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final keyAt(I)I
    .registers 2

    .line 33
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntIntMap;->array:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public toMutable()Lcom/android/server/permission/access/immutable/MutableIntIntMap;
    .registers 2

    .line 37
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntIntMap;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/immutable/MutableIntIntMap;-><init>(Lcom/android/server/permission/access/immutable/IntIntMap;)V

    return-object v0
.end method

.method public bridge synthetic toMutable()Ljava/lang/Object;
    .registers 1

    .line 21
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntIntMap;->toMutable()Lcom/android/server/permission/access/immutable/MutableIntIntMap;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntIntMap;->array:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final valueAt(I)I
    .registers 2

    .line 35
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntIntMap;->array:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    return p0
.end method
