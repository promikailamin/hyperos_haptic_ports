.class public Lcom/android/server/utils/WatchedSparseSetArray;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedSparseSetArray.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/utils/WatchableImpl;",
        "Lcom/android/server/utils/Snappable;"
    }
.end annotation


# instance fields
.field private final mStorage:Landroid/util/SparseSetArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    .local p0, "this":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 39
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedSparseSetArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "TT;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    .local p1, "watchedSparseSetArray":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 46
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedSparseSetArray;->untrackedStorage()Landroid/util/SparseSetArray;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SparseSetArray;-><init>(Landroid/util/SparseSetArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    .line 47
    return-void
.end method

.method private onChanged()V
    .registers 1

    .line 35
    .local p0, "this":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchedSparseSetArray;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 36
    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedSparseSetArray;Lcom/android/server/utils/WatchedSparseSetArray;)V
    .registers 10
    .param p0, "dst"    # Lcom/android/server/utils/WatchedSparseSetArray;
    .param p1, "src"    # Lcom/android/server/utils/WatchedSparseSetArray;

    .line 164
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v0

    if-nez v0, :cond_2f

    .line 167
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v0

    .line 168
    .local v0, "arraySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_2b

    .line 169
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedSparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 170
    .local v2, "set":Landroid/util/ArraySet;
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 171
    .local v3, "setSize":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_16
    if-ge v4, v3, :cond_28

    .line 172
    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 168
    .end local v2    # "set":Landroid/util/ArraySet;
    .end local v3    # "setSize":I
    .end local v4    # "j":I
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 175
    .end local v1    # "i":I
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseSetArray;->seal()V

    .line 176
    return-void

    .line 165
    .end local v0    # "arraySize":I
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "snapshot destination is not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)Z
    .registers 4
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result v0

    .line 63
    .local v0, "res":Z
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseSetArray;->onChanged()V

    .line 64
    return v0
.end method

.method public clear()V
    .registers 2

    .line 71
    .local p0, "this":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    .line 72
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseSetArray;->onChanged()V

    .line 73
    return-void
.end method

.method public contains(ILjava/lang/Object;)Z
    .registers 4
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Landroid/util/ArraySet;
    .registers 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public keyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 120
    .local p0, "this":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public remove(I)V
    .registers 3
    .param p1, "n"    # I

    .line 105
    .local p0, "this":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseSetArray;->onChanged()V

    .line 107
    return-void
.end method

.method public remove(ILjava/lang/Object;)Z
    .registers 4
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 95
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseSetArray;->onChanged()V

    .line 96
    const/4 v0, 0x1

    return v0

    .line 98
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .registers 2

    .line 113
    .local p0, "this":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    return v0
.end method

.method public sizeAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 127
    .local p0, "this":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v0

    return v0
.end method

.method public snapshot()Ljava/lang/Object;
    .registers 2

    .line 140
    .local p0, "this":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    new-instance v0, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>(Lcom/android/server/utils/WatchedSparseSetArray;)V

    .line 141
    .local v0, "l":Lcom/android/server/utils/WatchedSparseSetArray;
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedSparseSetArray;->seal()V

    .line 142
    return-object v0
.end method

.method public snapshot(Lcom/android/server/utils/WatchedSparseSetArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "TT;>;)V"
        }
    .end annotation

    .line 151
    .local p0, "this":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    .local p1, "r":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    invoke-static {p0, p1}, Lcom/android/server/utils/WatchedSparseSetArray;->snapshot(Lcom/android/server/utils/WatchedSparseSetArray;Lcom/android/server/utils/WatchedSparseSetArray;)V

    .line 152
    return-void
.end method

.method public untrackedStorage()Landroid/util/SparseSetArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseSetArray<",
            "TT;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    return-object v0
.end method

.method public valueAt(II)Ljava/lang/Object;
    .registers 4
    .param p1, "intIndex"    # I
    .param p2, "valueIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
