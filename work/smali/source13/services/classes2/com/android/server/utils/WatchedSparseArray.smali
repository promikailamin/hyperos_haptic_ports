.class public Lcom/android/server/utils/WatchedSparseArray;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedSparseArray.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/utils/WatchableImpl;",
        "Lcom/android/server/utils/Snappable;"
    }
.end annotation


# instance fields
.field private final mObserver:Lcom/android/server/utils/Watcher;

.field private final mStorage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field private volatile mWatching:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 130
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 42
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseArray$1;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    .line 131
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 132
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 141
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 42
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseArray$1;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    .line 142
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    .local p1, "c":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 42
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseArray$1;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    .line 149
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 150
    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedSparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedSparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 155
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    .local p1, "r":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 42
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseArray$1;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    .line 156
    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 157
    return-void
.end method

.method private onChanged()V
    .registers 1

    .line 54
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchedSparseArray;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 55
    return-void
.end method

.method private registerChild(Ljava/lang/Object;)V
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 63
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    if-eqz v0, :cond_10

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_10

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/android/server/utils/Watchable;

    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {v0, v1}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 66
    :cond_10
    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/utils/WatchedSparseArray<",
            "TE;>;",
            "Lcom/android/server/utils/WatchedSparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 486
    .local p0, "dst":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    .local p1, "src":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_25

    .line 489
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v0

    .line 490
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_21

    .line 491
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/utils/Snapshots;->maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 492
    .local v2, "val":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v3

    .line 493
    .local v3, "key":I
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    .end local v2    # "val":Ljava/lang/Object;, "TE;"
    .end local v3    # "key":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 495
    .end local v1    # "i":I
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->seal()V

    .line 496
    return-void

    .line 487
    .end local v0    # "end":I
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "snapshot destination is not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unregisterChild(Ljava/lang/Object;)V
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 74
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    if-eqz v0, :cond_10

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_10

    .line 75
    move-object v0, p1

    check-cast v0, Lcom/android/server/utils/Watchable;

    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {v0, v1}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 77
    :cond_10
    return-void
.end method

.method private unregisterChildIf(Ljava/lang/Object;)V
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 86
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    if-eqz v0, :cond_19

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_19

    .line 87
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 88
    move-object v0, p1

    check-cast v0, Lcom/android/server/utils/Watchable;

    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {v0, v1}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 91
    :cond_19
    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .registers 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 425
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 426
    invoke-direct {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->registerChild(Ljava/lang/Object;)V

    .line 427
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseArray;->onChanged()V

    .line 428
    return-void
.end method

.method public clear()V
    .registers 4

    .line 410
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    if-eqz v0, :cond_19

    .line 411
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 412
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 413
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChild(Ljava/lang/Object;)V

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 416
    .end local v0    # "end":I
    .end local v1    # "i":I
    :cond_19
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 417
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseArray;->onChanged()V

    .line 418
    return-void
.end method

.method public contains(I)Z
    .registers 3
    .param p1, "key"    # I

    .line 197
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    return v0
.end method

.method public copyFrom(Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 163
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    .local p1, "src":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->clear()V

    .line 164
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 165
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_18

    .line 166
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 168
    .end local v1    # "i":I
    :cond_18
    return-void
.end method

.method public copyTo(Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 174
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    .local p1, "dst":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 175
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v0

    .line 176
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_18

    .line 177
    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 179
    .end local v1    # "i":I
    :cond_18
    return-void
.end method

.method public delete(I)V
    .registers 4
    .param p1, "key"    # I

    .line 220
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 221
    .local v0, "child":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 222
    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    .line 223
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseArray;->onChanged()V

    .line 224
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 437
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    instance-of v0, p1, Lcom/android/server/utils/WatchedSparseArray;

    if-eqz v0, :cond_10

    .line 438
    move-object v0, p1

    check-cast v0, Lcom/android/server/utils/WatchedSparseArray;

    .line 439
    .local v0, "w":Lcom/android/server/utils/WatchedSparseArray;
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    iget-object v2, v0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 441
    .end local v0    # "w":Lcom/android/server/utils/WatchedSparseArray;
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 205
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 213
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    .local p2, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 432
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOfKey(I)I
    .registers 3
    .param p1, "key"    # I

    .line 372
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 386
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public indexOfValueByValue(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 400
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValueByValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public keyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 323
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .registers 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 292
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 293
    .local v0, "old":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    .line 295
    invoke-direct {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->registerChild(Ljava/lang/Object;)V

    .line 296
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseArray;->onChanged()V

    .line 297
    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 5
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 99
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->registeredObserverCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 102
    iput-boolean v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 103
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 104
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_21

    .line 105
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/utils/WatchedSparseArray;->registerChild(Ljava/lang/Object;)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 108
    .end local v0    # "end":I
    .end local v1    # "i":I
    :cond_21
    return-void
.end method

.method public remove(I)V
    .registers 2
    .param p1, "key"    # I

    .line 240
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    .line 241
    return-void
.end method

.method public removeAt(I)V
    .registers 4
    .param p1, "index"    # I

    .line 250
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 251
    .local v0, "child":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 252
    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    .line 253
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseArray;->onChanged()V

    .line 254
    return-void
.end method

.method public removeAtRange(II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "size"    # I

    .line 266
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, p2, :cond_18

    .line 269
    :try_start_8
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    add-int v3, v1, p1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_16

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 271
    .end local v1    # "i":I
    :catch_16
    move-exception v1

    goto :goto_19

    .line 273
    :cond_18
    nop

    .line 275
    :goto_19
    :try_start_19
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->removeAtRange(II)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_30

    .line 279
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1f
    if-ge v1, p2, :cond_2b

    .line 280
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 282
    .end local v1    # "i":I
    :cond_2b
    nop

    .line 283
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseArray;->onChanged()V

    .line 284
    return-void

    .line 279
    :catchall_30
    move-exception v1

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    if-ge v2, p2, :cond_3e

    .line 280
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 282
    .end local v2    # "i":I
    :cond_3e
    throw v1
.end method

.method public removeReturnOld(I)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 231
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    .line 232
    .local v0, "result":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    .line 233
    return-object v0
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 357
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 358
    .local v0, "old":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 359
    if-eq p2, v0, :cond_16

    .line 360
    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    .line 361
    invoke-direct {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->registerChild(Ljava/lang/Object;)V

    .line 362
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseArray;->onChanged()V

    .line 364
    :cond_16
    return-void
.end method

.method public size()I
    .registers 2

    .line 304
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedSparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedSparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 462
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;-><init>(I)V

    .line 463
    .local v0, "l":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    invoke-static {v0, p0}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V

    .line 464
    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 2

    .line 32
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->snapshot()Lcom/android/server/utils/WatchedSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public snapshot(Lcom/android/server/utils/WatchedSparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedSparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 473
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    .local p1, "r":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    invoke-static {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V

    .line 474
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 452
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 5
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 116
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->registeredObserverCount()I

    move-result v0

    if-nez v0, :cond_21

    .line 118
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 119
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_1e

    .line 120
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChild(Ljava/lang/Object;)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 123
    .end local v1    # "i":I
    :cond_1e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 125
    .end local v0    # "end":I
    :cond_21
    return-void
.end method

.method public untrackedStorage()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 343
    .local p0, "this":Lcom/android/server/utils/WatchedSparseArray;, "Lcom/android/server/utils/WatchedSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
