.class public abstract Lcom/android/server/permission/access/immutable/IntSetKt;
.super Ljava/lang/Object;
.source "IntSet.kt"


# direct methods
.method public static final synthetic access$contains(Landroid/util/SparseBooleanArray;I)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/permission/access/immutable/IntSetKt;->contains(Landroid/util/SparseBooleanArray;I)Z

    move-result p0

    return p0
.end method

.method public static final contains(Landroid/util/SparseBooleanArray;I)Z
    .registers 2

    .line 71
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
