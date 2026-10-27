.class public Lcom/android/server/utils/WatchedArraySet;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedArraySet.java"

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

.field private final mStorage:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "TE;>;"
        }
    .end annotation
.end field

.field private volatile mWatching:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 133
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/utils/WatchedArraySet;-><init>(IZ)V

    .line 134
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 140
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/utils/WatchedArraySet;-><init>(IZ)V

    .line 141
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4
    .param p1, "capacity"    # I
    .param p2, "identityHashCode"    # Z

    .line 144
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 41
    new-instance v0, Lcom/android/server/utils/WatchedArraySet$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArraySet$1;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    .line 145
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1, p2}, Landroid/util/ArraySet;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 158
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    .local p1, "c":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 41
    new-instance v0, Lcom/android/server/utils/WatchedArraySet$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArraySet$1;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    .line 159
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 160
    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedArraySet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 165
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    .local p1, "c":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 41
    new-instance v0, Lcom/android/server/utils/WatchedArraySet$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArraySet$1;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    .line 166
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 167
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 151
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 41
    new-instance v0, Lcom/android/server/utils/WatchedArraySet$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArraySet$1;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    .line 152
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 153
    return-void
.end method

.method private onChanged()V
    .registers 1

    .line 53
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchedArraySet;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 54
    return-void
.end method

.method private registerChild(Ljava/lang/Object;)V
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 63
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v0, :cond_10

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_10

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/android/server/utils/Watchable;

    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {v0, v1}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 66
    :cond_10
    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedArraySet;Lcom/android/server/utils/WatchedArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "TE;>;",
            "Lcom/android/server/utils/WatchedArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 423
    .local p0, "dst":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    .local p1, "src":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    if-nez v0, :cond_26

    .line 426
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    .line 427
    .local v0, "end":I
    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 428
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_22

    .line 429
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/utils/Snapshots;->maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 430
    .local v2, "val":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    .line 428
    .end local v2    # "val":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 432
    .end local v1    # "i":I
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->seal()V

    .line 433
    return-void

    .line 424
    .end local v0    # "end":I
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "snapshot destination is not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unregisterChild(Ljava/lang/Object;)V
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 74
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v0, :cond_10

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_10

    .line 75
    move-object v0, p1

    check-cast v0, Lcom/android/server/utils/Watchable;

    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {v0, v1}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 77
    :cond_10
    return-void
.end method

.method private unregisterChildIf(Ljava/lang/Object;)V
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 87
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v0, :cond_18

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_18

    .line 88
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 89
    move-object v0, p1

    check-cast v0, Lcom/android/server/utils/Watchable;

    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {v0, v1}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 92
    :cond_18
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 266
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 267
    .local v0, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->registerChild(Ljava/lang/Object;)V

    .line 268
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    .line 269
    return v0
.end method

.method public addAll(Lcom/android/server/utils/WatchedArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    .line 297
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    .local p1, "array":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<+TE;>;"
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    .line 298
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 299
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 301
    .end local v1    # "i":I
    :cond_11
    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 288
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 289
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    .line 290
    return-void
.end method

.method public append(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 278
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    .line 279
    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->registerChild(Ljava/lang/Object;)V

    .line 280
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    .line 281
    return-void
.end method

.method public clear()V
    .registers 4

    .line 208
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v0, :cond_19

    .line 209
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 210
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 211
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->unregisterChild(Ljava/lang/Object;)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 214
    .end local v0    # "end":I
    .end local v1    # "i":I
    :cond_19
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 215
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    .line 216
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 225
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public copyFrom(Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 173
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    .local p1, "src":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 174
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 175
    .local v0, "end":I
    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 176
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_19

    .line 177
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 179
    .end local v1    # "i":I
    :cond_19
    return-void
.end method

.method public copyTo(Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 185
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    .local p1, "dst":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 186
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    .line 187
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 188
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_17

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 191
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 365
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    instance-of v0, p1, Lcom/android/server/utils/WatchedArraySet;

    if-eqz v0, :cond_10

    .line 366
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    move-object v1, p1

    check-cast v1, Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, v1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 368
    :cond_10
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 377
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 235
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 255
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 5
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 100
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->registeredObserverCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 103
    iput-boolean v1, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 104
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 105
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_21

    .line 106
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->registerChild(Ljava/lang/Object;)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 109
    .end local v0    # "end":I
    .end local v1    # "i":I
    :cond_21
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 310
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 311
    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->unregisterChildIf(Ljava/lang/Object;)V

    .line 312
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    .line 313
    const/4 v0, 0x1

    return v0

    .line 315
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Landroid/util/ArraySet;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 339
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    .local p1, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+TE;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 340
    .local v0, "end":I
    const/4 v1, 0x0

    .line 341
    .local v1, "any":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_1c

    .line 342
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v3, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v3, 0x1

    :goto_18
    move v1, v3

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 344
    .end local v2    # "i":I
    :cond_1c
    return v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 328
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 329
    .local v0, "result":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedArraySet;->unregisterChildIf(Ljava/lang/Object;)V

    .line 330
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    .line 331
    return-object v0
.end method

.method public size()I
    .registers 2

    .line 351
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArraySet<",
            "TE;>;"
        }
    .end annotation

    .line 399
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    .line 400
    .local v0, "l":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    invoke-static {v0, p0}, Lcom/android/server/utils/WatchedArraySet;->snapshot(Lcom/android/server/utils/WatchedArraySet;Lcom/android/server/utils/WatchedArraySet;)V

    .line 401
    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 2

    .line 31
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->snapshot()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    return-object v0
.end method

.method public snapshot(Lcom/android/server/utils/WatchedArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 410
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    .local p1, "r":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    invoke-static {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->snapshot(Lcom/android/server/utils/WatchedArraySet;Lcom/android/server/utils/WatchedArraySet;)V

    .line 411
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 389
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 5
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 117
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->registeredObserverCount()I

    move-result v0

    if-nez v0, :cond_21

    .line 119
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 120
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_1e

    .line 121
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->unregisterChild(Ljava/lang/Object;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 124
    .end local v1    # "i":I
    :cond_1e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 126
    .end local v0    # "end":I
    :cond_21
    return-void
.end method

.method public untrackedStorage()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "TE;>;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

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

    .line 248
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<TE;>;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
