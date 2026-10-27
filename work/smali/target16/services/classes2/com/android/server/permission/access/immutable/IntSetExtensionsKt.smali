.class public abstract Lcom/android/server/permission/access/immutable/IntSetExtensionsKt;
.super Ljava/lang/Object;
.source "IntSetExtensions.kt"


# direct methods
.method public static final MutableIntSet([I)Lcom/android/server/permission/access/immutable/MutableIntSet;
    .registers 4

    .line 69
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIntSet;-><init>(Landroid/util/SparseBooleanArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, p0}, Lcom/android/server/permission/access/immutable/IntSetExtensionsKt;->plusAssign(Lcom/android/server/permission/access/immutable/MutableIntSet;[I)V

    return-object v0
.end method

.method public static final minusAssign(Lcom/android/server/permission/access/immutable/IntSet;I)V
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntSet;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseBooleanArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void
.end method

.method public static final plusAssign(Lcom/android/server/permission/access/immutable/MutableIntSet;I)V
    .registers 3

    .line 72
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntSet;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseBooleanArray;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public static final plusAssign(Lcom/android/server/permission/access/immutable/MutableIntSet;Lcom/android/server/permission/access/immutable/IntSet;)V
    .registers 5

    .line 38
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    .line 39
    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v2

    .line 76
    invoke-static {p0, v2}, Lcom/android/server/permission/access/immutable/IntSetExtensionsKt;->plusAssign(Lcom/android/server/permission/access/immutable/MutableIntSet;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public static final plusAssign(Lcom/android/server/permission/access/immutable/MutableIntSet;[I)V
    .registers 5

    .line 101
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget v2, p1, v1

    .line 80
    invoke-static {p0, v2}, Lcom/android/server/permission/access/immutable/IntSetExtensionsKt;->plusAssign(Lcom/android/server/permission/access/immutable/MutableIntSet;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method
