.class public abstract Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;
.super Ljava/lang/Object;
.source "IndexedMapExtensions.kt"


# direct methods
.method public static final getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p0, :cond_3

    goto :goto_e

    .line 60
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_e

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_e
    :goto_e
    return-object p2
.end method

.method public static final putWithDefault(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1e

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    .line 108
    invoke-static {p2, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 109
    invoke-static {p2, p3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1a

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->removeAt(I)Ljava/lang/Object;

    return-object p1

    .line 112
    :cond_1a
    invoke-virtual {p0, v0, p2}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->putAt(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-object p1

    .line 117
    :cond_1e
    invoke-static {p2, p3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    return-object p3
.end method
