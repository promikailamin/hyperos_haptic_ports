.class public Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;
.super Ljava/lang/Object;
.source "BitmapOffloadProvider.java"


# instance fields
.field public final mBitmapData:Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;

.field public mNumOpens:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mSize:Ljava/util/concurrent/atomic/AtomicLong;

.field public mStatus:I


# direct methods
.method public constructor <init>(Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;)V
    .registers 5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;->mBitmapData:Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;->mStatus:I

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;->mSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;->mNumOpens:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;Lcom/android/server/bitmapoffload/BitmapOffloadProvider-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;-><init>(Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;->mBitmapData:Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", file size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;->mSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", opens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;->mNumOpens:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateStatus(I)V
    .registers 2

    .line 111
    monitor-enter p0

    .line 112
    :try_start_1
    iput p1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;->mStatus:I

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public waitForCompletion()Z
    .registers 5

    .line 92
    monitor-enter p0

    .line 93
    :goto_1
    :try_start_1
    iget v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;->mStatus:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const-wide/16 v2, 0x1f4

    .line 95
    :try_start_8
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_e
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    goto :goto_1

    :catchall_c
    move-exception v0

    goto :goto_1d

    .line 97
    :catch_e
    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 98
    monitor-exit p0

    return v1

    :cond_17
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1b

    move v1, v2

    .line 101
    :cond_1b
    monitor-exit p0

    return v1

    .line 102
    :goto_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_c

    throw v0
.end method
