.class Lmiui/util/font/FontCache;
.super Ljava/lang/Object;
.source "FontCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/font/FontCache$CacheItem;
    }
.end annotation


# instance fields
.field final blacklist mCacheBoldItalicMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/util/font/FontCache$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mCacheBoldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/util/font/FontCache$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mCacheItalicMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/util/font/FontCache$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/util/font/FontCache$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mMaxCount:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "cacheCount"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/font/FontCache;->mCacheMap:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/font/FontCache;->mCacheBoldMap:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/font/FontCache;->mCacheItalicMap:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/font/FontCache;->mCacheBoldItalicMap:Ljava/util/Map;

    .line 37
    iput p1, p0, Lmiui/util/font/FontCache;->mMaxCount:I

    .line 38
    return-void
.end method

.method private blacklist getCacheMap(ZZ)Ljava/util/Map;
    .registers 4
    .param p1, "isBold"    # Z
    .param p2, "isItalic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/util/font/FontCache$CacheItem;",
            ">;"
        }
    .end annotation

    .line 81
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 82
    iget-object v0, p0, Lmiui/util/font/FontCache;->mCacheBoldItalicMap:Ljava/util/Map;

    return-object v0

    .line 83
    :cond_7
    if-eqz p1, :cond_c

    .line 84
    iget-object v0, p0, Lmiui/util/font/FontCache;->mCacheBoldMap:Ljava/util/Map;

    return-object v0

    .line 85
    :cond_c
    if-eqz p2, :cond_11

    .line 86
    iget-object v0, p0, Lmiui/util/font/FontCache;->mCacheItalicMap:Ljava/util/Map;

    return-object v0

    .line 88
    :cond_11
    iget-object v0, p0, Lmiui/util/font/FontCache;->mCacheMap:Ljava/util/Map;

    return-object v0
.end method

.method private blacklist getStringKey([Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "names"    # [Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 93
    .local v0, "key":Ljava/lang/String;
    const-string v1, "miui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "mipro-regular"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 94
    :cond_13
    const-string v0, "mipro"

    .line 96
    :cond_15
    return-object v0
.end method

.method private blacklist removeOldestItemIfTooManyCached(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/util/font/FontCache$CacheItem;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "cacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/util/font/FontCache$CacheItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lmiui/util/font/FontCache;->mMaxCount:I

    if-le v0, v1, :cond_3b

    .line 108
    const-wide v0, 0x7fffffffffffffffL

    .line 109
    .local v0, "oldestTime":J
    const/4 v2, 0x0

    .line 110
    .local v2, "oldestKey":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 111
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/util/font/FontCache$CacheItem;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/util/font/FontCache$CacheItem;

    .line 112
    .local v5, "item":Lmiui/util/font/FontCache$CacheItem;
    iget-wide v6, v5, Lmiui/util/font/FontCache$CacheItem;->lastAccessTime:J

    cmp-long v6, v6, v0

    if-gez v6, :cond_37

    .line 113
    iget-wide v0, v5, Lmiui/util/font/FontCache$CacheItem;->lastAccessTime:J

    .line 114
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Ljava/lang/String;

    .line 116
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/util/font/FontCache$CacheItem;>;"
    .end local v5    # "item":Lmiui/util/font/FontCache$CacheItem;
    :cond_37
    goto :goto_16

    .line 117
    :cond_38
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .end local v0    # "oldestTime":J
    .end local v2    # "oldestKey":Ljava/lang/String;
    :cond_3b
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist cacheFont([Ljava/lang/String;Landroid/graphics/Typeface;IIZZ)V
    .registers 12
    .param p1, "fontNames"    # [Ljava/lang/String;
    .param p2, "tf"    # Landroid/graphics/Typeface;
    .param p3, "wght"    # I
    .param p4, "sizeGrade"    # I
    .param p5, "isBold"    # Z
    .param p6, "isItalic"    # Z

    monitor-enter p0

    .line 68
    :try_start_1
    invoke-direct {p0, p5, p6}, Lmiui/util/font/FontCache;->getCacheMap(ZZ)Ljava/util/Map;

    move-result-object v0

    .line 69
    .local v0, "cacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/util/font/FontCache$CacheItem;>;"
    invoke-direct {p0, p1}, Lmiui/util/font/FontCache;->getStringKey([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/font/FontCache$CacheItem;

    .line 71
    .local v2, "item":Lmiui/util/font/FontCache$CacheItem;
    if-nez v2, :cond_1a

    .line 72
    new-instance v3, Lmiui/util/font/FontCache$CacheItem;

    invoke-direct {v3}, Lmiui/util/font/FontCache$CacheItem;-><init>()V

    move-object v2, v3

    .line 73
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local p0    # "this":Lmiui/util/font/FontCache;
    :cond_1a
    iget-object v3, v2, Lmiui/util/font/FontCache$CacheItem;->tfArray:[Landroid/graphics/Typeface;

    aput-object p2, v3, p4

    .line 76
    iget-object v3, v2, Lmiui/util/font/FontCache$CacheItem;->wghtArray:[I

    aput p3, v3, p4

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lmiui/util/font/FontCache$CacheItem;->lastAccessTime:J

    .line 78
    invoke-direct {p0, v0}, Lmiui/util/font/FontCache;->removeOldestItemIfTooManyCached(Ljava/util/Map;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 79
    monitor-exit p0

    return-void

    .line 67
    .end local v0    # "cacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/util/font/FontCache$CacheItem;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "item":Lmiui/util/font/FontCache$CacheItem;
    .end local p1    # "fontNames":[Ljava/lang/String;
    .end local p2    # "tf":Landroid/graphics/Typeface;
    .end local p3    # "wght":I
    .end local p4    # "sizeGrade":I
    .end local p5    # "isBold":Z
    .end local p6    # "isItalic":Z
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist clear()V
    .registers 2

    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v0, p0, Lmiui/util/font/FontCache;->mCacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 101
    iget-object v0, p0, Lmiui/util/font/FontCache;->mCacheBoldMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 102
    iget-object v0, p0, Lmiui/util/font/FontCache;->mCacheItalicMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 103
    iget-object v0, p0, Lmiui/util/font/FontCache;->mCacheBoldItalicMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 104
    monitor-exit p0

    return-void

    .line 99
    .end local p0    # "this":Lmiui/util/font/FontCache;
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getCachedFont([Ljava/lang/String;IZZ)Landroid/graphics/Typeface;
    .registers 10
    .param p1, "fontNames"    # [Ljava/lang/String;
    .param p2, "wght"    # I
    .param p3, "isBold"    # Z
    .param p4, "isItalic"    # Z

    monitor-enter p0

    .line 53
    :try_start_1
    invoke-direct {p0, p3, p4}, Lmiui/util/font/FontCache;->getCacheMap(ZZ)Ljava/util/Map;

    move-result-object v0

    .line 54
    .local v0, "cacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/util/font/FontCache$CacheItem;>;"
    invoke-direct {p0, p1}, Lmiui/util/font/FontCache;->getStringKey([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/font/FontCache$CacheItem;

    .line 55
    .local v1, "item":Lmiui/util/font/FontCache$CacheItem;
    if-eqz v1, :cond_2c

    .line 56
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    iget-object v3, v1, Lmiui/util/font/FontCache$CacheItem;->wghtArray:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2c

    .line 57
    iget-object v3, v1, Lmiui/util/font/FontCache$CacheItem;->wghtArray:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_29

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lmiui/util/font/FontCache$CacheItem;->lastAccessTime:J

    .line 59
    iget-object v3, v1, Lmiui/util/font/FontCache$CacheItem;->tfArray:[Landroid/graphics/Typeface;

    aget-object v3, v3, v2
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2f

    monitor-exit p0

    return-object v3

    .line 56
    .end local p0    # "this":Lmiui/util/font/FontCache;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 63
    .end local v2    # "i":I
    :cond_2c
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 52
    .end local v0    # "cacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/util/font/FontCache$CacheItem;>;"
    .end local v1    # "item":Lmiui/util/font/FontCache$CacheItem;
    .end local p1    # "fontNames":[Ljava/lang/String;
    .end local p2    # "wght":I
    .end local p3    # "isBold":Z
    .end local p4    # "isItalic":Z
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist isFontCached(Landroid/graphics/Typeface;)Z
    .registers 9
    .param p1, "font"    # Landroid/graphics/Typeface;

    monitor-enter p0

    .line 41
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Typeface;->isBold()Z

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiui/util/font/FontCache;->getCacheMap(ZZ)Ljava/util/Map;

    move-result-object v0

    .line 42
    .local v0, "cacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/util/font/FontCache$CacheItem;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/font/FontCache$CacheItem;

    .line 43
    .local v2, "item":Lmiui/util/font/FontCache$CacheItem;
    iget-object v4, v2, Lmiui/util/font/FontCache$CacheItem;->tfArray:[Landroid/graphics/Typeface;

    array-length v5, v4

    :goto_25
    if-ge v3, v5, :cond_31

    aget-object v6, v4, v3
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_34

    .line 44
    .local v6, "tf":Landroid/graphics/Typeface;
    if-ne v6, p1, :cond_2e

    .line 45
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 43
    .end local v6    # "tf":Landroid/graphics/Typeface;
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 48
    .end local v2    # "item":Lmiui/util/font/FontCache$CacheItem;
    .end local p0    # "this":Lmiui/util/font/FontCache;
    :cond_31
    goto :goto_15

    .line 49
    :cond_32
    monitor-exit p0

    return v3

    .line 40
    .end local v0    # "cacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/util/font/FontCache$CacheItem;>;"
    .end local p1    # "font":Landroid/graphics/Typeface;
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method
