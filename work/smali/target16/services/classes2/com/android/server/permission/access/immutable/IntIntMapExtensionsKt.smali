.class public abstract Lcom/android/server/permission/access/immutable/IntIntMapExtensionsKt;
.super Ljava/lang/Object;
.source "IntIntMapExtensions.kt"


# direct methods
.method public static final minusAssign(Lcom/android/server/permission/access/immutable/MutableIntIntMap;I)V
    .registers 2

    .line 84
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntIntMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public static final putWithDefault(Lcom/android/server/permission/access/immutable/MutableIntIntMap;III)I
    .registers 5

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/IntIntMap;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_16

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IntIntMap;->valueAt(I)I

    move-result p1

    if-eq p2, p1, :cond_15

    if-ne p2, p3, :cond_12

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/MutableIntIntMap;->removeAt(I)I

    return p1

    .line 95
    :cond_12
    invoke-virtual {p0, v0, p2}, Lcom/android/server/permission/access/immutable/MutableIntIntMap;->putAt(II)I

    :cond_15
    return p1

    :cond_16
    if-eq p2, p3, :cond_1b

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/immutable/MutableIntIntMap;->put(II)Ljava/lang/Integer;

    :cond_1b
    return p3
.end method

.method public static final set(Lcom/android/server/permission/access/immutable/MutableIntIntMap;II)V
    .registers 3

    .line 108
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntIntMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
