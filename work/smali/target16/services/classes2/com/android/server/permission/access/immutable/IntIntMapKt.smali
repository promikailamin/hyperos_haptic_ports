.class public abstract Lcom/android/server/permission/access/immutable/IntIntMapKt;
.super Ljava/lang/Object;
.source "IntIntMap.kt"


# direct methods
.method public static final putReturnOld(Landroid/util/SparseIntArray;II)Ljava/lang/Integer;
    .registers 4

    .line 60
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_12

    .line 62
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    .line 63
    invoke-virtual {p0, v0, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 66
    :cond_12
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final removeAtReturnOld(Landroid/util/SparseIntArray;I)I
    .registers 3

    .line 89
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 90
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->removeAt(I)V

    return v0
.end method

.method public static final setValueAtReturnOld(Landroid/util/SparseIntArray;II)I
    .registers 4

    .line 83
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 84
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    return v0
.end method
