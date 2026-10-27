.class public Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;
.super Ljava/util/concurrent/ConcurrentLinkedDeque;
.source "ConcurrentLinkedEvictingDeque.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentLinkedDeque<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private mSize:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "size"    # I

    .line 29
    .local p0, "this":Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;, "Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->mSize:I

    .line 31
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 35
    .local p0, "this":Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;, "Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque<TE;>;"
    .local p1, "elem":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 36
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->mSize:I

    if-ne v0, v1, :cond_c

    .line 37
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->poll()Ljava/lang/Object;

    .line 40
    :cond_c
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 41
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method
