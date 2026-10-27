.class public final Landroid/os/statistics/FilteringPerfEventCache;
.super Ljava/lang/Object;
.source "FilteringPerfEventCache.java"


# static fields
.field private static blacklist curSize:I

.field private static final blacklist head:Landroid/os/statistics/FilteringPerfEventListNode;

.field private static final blacklist lock:Ljava/lang/Object;

.field private static blacklist maxSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 14
    const/4 v0, 0x0

    sput v0, Landroid/os/statistics/FilteringPerfEventCache;->maxSize:I

    .line 15
    new-instance v1, Landroid/os/statistics/FilteringPerfEventListNode;

    invoke-direct {v1}, Landroid/os/statistics/FilteringPerfEventListNode;-><init>()V

    sput-object v1, Landroid/os/statistics/FilteringPerfEventCache;->head:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 16
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 17
    sput v0, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/statistics/FilteringPerfEventCache;->lock:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static blacklist compact()V
    .registers 6

    .line 85
    sget-object v0, Landroid/os/statistics/FilteringPerfEventCache;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    sget v1, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    sget v2, Landroid/os/statistics/FilteringPerfEventCache;->maxSize:I

    sub-int/2addr v1, v2

    .line 87
    .local v1, "exceedCount":I
    if-lez v1, :cond_1c

    .line 88
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_18

    .line 89
    sget-object v3, Landroid/os/statistics/FilteringPerfEventCache;->head:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v4, v3, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 90
    .local v4, "item":Landroid/os/statistics/FilteringPerfEventListNode;
    iget-object v5, v4, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v5, v3, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 92
    .end local v2    # "i":I
    .end local v4    # "item":Landroid/os/statistics/FilteringPerfEventListNode;
    :cond_18
    sget v2, Landroid/os/statistics/FilteringPerfEventCache;->maxSize:I

    sput v2, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    .line 94
    .end local v1    # "exceedCount":I
    :cond_1c
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public static blacklist obtain()Landroid/os/statistics/FilteringPerfEvent;
    .registers 4

    .line 29
    sget-object v0, Landroid/os/statistics/FilteringPerfEventCache;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_3
    sget v1, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    if-lez v1, :cond_19

    .line 31
    sget-object v1, Landroid/os/statistics/FilteringPerfEventCache;->head:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v2, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 32
    .local v2, "item":Landroid/os/statistics/FilteringPerfEventListNode;
    iget-object v3, v2, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v3, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 33
    sget v1, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    .line 34
    iget-object v1, v2, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    monitor-exit v0

    return-object v1

    .line 36
    .end local v2    # "item":Landroid/os/statistics/FilteringPerfEventListNode;
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_20

    .line 37
    new-instance v0, Landroid/os/statistics/FilteringPerfEvent;

    invoke-direct {v0}, Landroid/os/statistics/FilteringPerfEvent;-><init>()V

    return-object v0

    .line 36
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public static blacklist recycle(Landroid/os/statistics/FilteringPerfEvent;)V
    .registers 4
    .param p0, "item"    # Landroid/os/statistics/FilteringPerfEvent;

    .line 41
    invoke-virtual {p0}, Landroid/os/statistics/FilteringPerfEvent;->dispose()V

    .line 42
    sget-object v0, Landroid/os/statistics/FilteringPerfEventCache;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_6
    sget v1, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    sget v2, Landroid/os/statistics/FilteringPerfEventCache;->maxSize:I

    if-ge v1, v2, :cond_18

    .line 44
    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    .line 45
    sget-object v1, Landroid/os/statistics/FilteringPerfEventCache;->head:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v2, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v2, p0, Landroid/os/statistics/FilteringPerfEvent;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 46
    iput-object p0, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 48
    :cond_18
    monitor-exit v0

    .line 49
    return-void

    .line 48
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static blacklist recycleAllUnchecked(Landroid/os/statistics/FilteringPerfEventList;)V
    .registers 8
    .param p0, "srcList"    # Landroid/os/statistics/FilteringPerfEventList;

    .line 61
    iget v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    .line 62
    .local v0, "srcSize":I
    if-nez v0, :cond_5

    .line 63
    return-void

    .line 66
    :cond_5
    iget-object v1, p0, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 67
    .local v1, "pos":Landroid/os/statistics/FilteringPerfEventListNode;
    :goto_7
    if-eq v1, p0, :cond_11

    .line 68
    iget-object v2, v1, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    invoke-virtual {v2}, Landroid/os/statistics/FilteringPerfEvent;->dispose()V

    .line 69
    iget-object v1, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    goto :goto_7

    .line 72
    :cond_11
    iget-object v2, p0, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 73
    .local v2, "srcFirst":Landroid/os/statistics/FilteringPerfEventListNode;
    iget-object v3, p0, Landroid/os/statistics/FilteringPerfEventList;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 74
    .local v3, "srcLast":Landroid/os/statistics/FilteringPerfEventListNode;
    invoke-virtual {p0}, Landroid/os/statistics/FilteringPerfEventList;->detachElements()V

    .line 75
    sget-object v4, Landroid/os/statistics/FilteringPerfEventCache;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 76
    :try_start_1b
    sget v5, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    add-int/2addr v5, v0

    sput v5, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    .line 77
    sget-object v5, Landroid/os/statistics/FilteringPerfEventCache;->head:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v6, v5, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 78
    .local v6, "curFirst":Landroid/os/statistics/FilteringPerfEventListNode;
    iput-object v2, v5, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 79
    iput-object v6, v3, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 80
    .end local v6    # "curFirst":Landroid/os/statistics/FilteringPerfEventListNode;
    monitor-exit v4

    .line 81
    return-void

    .line 80
    :catchall_2a
    move-exception v5

    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_2a

    throw v5
.end method

.method public static blacklist recycleUnchecked(Landroid/os/statistics/FilteringPerfEvent;)V
    .registers 4
    .param p0, "item"    # Landroid/os/statistics/FilteringPerfEvent;

    .line 52
    invoke-virtual {p0}, Landroid/os/statistics/FilteringPerfEvent;->dispose()V

    .line 53
    sget-object v0, Landroid/os/statistics/FilteringPerfEventCache;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_6
    sget v1, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    .line 55
    sget-object v1, Landroid/os/statistics/FilteringPerfEventCache;->head:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v2, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v2, p0, Landroid/os/statistics/FilteringPerfEvent;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 56
    iput-object p0, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 57
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public static blacklist setCapacity(I)V
    .registers 1
    .param p0, "capacity"    # I

    .line 25
    sput p0, Landroid/os/statistics/FilteringPerfEventCache;->maxSize:I

    .line 26
    return-void
.end method
