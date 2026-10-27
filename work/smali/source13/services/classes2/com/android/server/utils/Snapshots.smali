.class public Lcom/android/server/utils/Snapshots;
.super Ljava/lang/Object;
.source "Snapshots.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TE;>;",
            "Landroid/util/SparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "dst":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p1, "src":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 55
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 56
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_1b

    .line 57
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 59
    .end local v1    # "i":I
    :cond_1b
    return-void

    .line 53
    .end local v0    # "end":I
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "copy destination is not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copy(Landroid/util/SparseSetArray;Landroid/util/SparseSetArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseSetArray<",
            "TE;>;",
            "Landroid/util/SparseSetArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "dst":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TE;>;"
    .local p1, "src":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    if-nez v0, :cond_26

    .line 72
    invoke-virtual {p1}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    .line 73
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_25

    .line 74
    invoke-virtual {p1, v1}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v2

    .line 75
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_12
    if-ge v3, v2, :cond_22

    .line 76
    invoke-virtual {p1, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 73
    .end local v2    # "size":I
    .end local v3    # "j":I
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 79
    .end local v1    # "i":I
    :cond_25
    return-void

    .line 70
    .end local v0    # "end":I
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "copy destination is not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 37
    .local p0, "o":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Lcom/android/server/utils/Snappable;

    if-eqz v0, :cond_c

    .line 38
    move-object v0, p0

    check-cast v0, Lcom/android/server/utils/Snappable;

    invoke-interface {v0}, Lcom/android/server/utils/Snappable;->snapshot()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 40
    :cond_c
    return-object p0
.end method

.method public static snapshot(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/android/server/utils/Snappable<",
            "TE;>;>(",
            "Landroid/util/SparseArray<",
            "TE;>;",
            "Landroid/util/SparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 105
    .local p0, "dst":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p1, "src":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_24

    .line 108
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 109
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_23

    .line 110
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/Snappable;

    invoke-interface {v3}, Lcom/android/server/utils/Snappable;->snapshot()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/Snappable;

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 112
    .end local v1    # "i":I
    :cond_23
    return-void

    .line 106
    .end local v0    # "end":I
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "snapshot destination is not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static snapshot(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .registers 6
    .param p0, "dst"    # Landroid/util/SparseIntArray;
    .param p1, "src"    # Landroid/util/SparseIntArray;

    .line 87
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 90
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 91
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_1b

    .line 92
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 94
    .end local v1    # "i":I
    :cond_1b
    return-void

    .line 88
    .end local v0    # "end":I
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "snapshot destination is not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static snapshot(Landroid/util/SparseSetArray;Landroid/util/SparseSetArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/android/server/utils/Snappable<",
            "TE;>;>(",
            "Landroid/util/SparseSetArray<",
            "TE;>;",
            "Landroid/util/SparseSetArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 122
    .local p0, "dst":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TE;>;"
    .local p1, "src":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    if-nez v0, :cond_2e

    .line 125
    invoke-virtual {p1}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    .line 126
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_2d

    .line 127
    invoke-virtual {p1, v1}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v2

    .line 128
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_12
    if-ge v3, v2, :cond_2a

    .line 129
    invoke-virtual {p1, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/utils/Snappable;

    invoke-interface {v5}, Lcom/android/server/utils/Snappable;->snapshot()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/utils/Snappable;

    invoke-virtual {p0, v4, v5}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 126
    .end local v2    # "size":I
    .end local v3    # "j":I
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 132
    .end local v1    # "i":I
    :cond_2d
    return-void

    .line 123
    .end local v0    # "end":I
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "snapshot destination is not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
