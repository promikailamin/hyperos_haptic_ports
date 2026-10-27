.class public Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;
.super Ljava/lang/Object;
.source "AmbientLuxObserver.java"


# instance fields
.field public final mPeriod:I

.field public final mRing:Ljava/util/LinkedList;

.field public mTotal:F


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 194
    iput v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F

    .line 211
    iput p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mPeriod:I

    return-void
.end method


# virtual methods
.method public declared-synchronized add(F)V
    .registers 6

    monitor-enter p0

    .line 215
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->expire()V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_15

    .line 216
    iget-object v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    if-nez v0, :cond_15

    .line 217
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    goto :goto_2a

    .line 219
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1}, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;-><init>(JF)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 220
    iget v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_13

    .line 221
    monitor-exit p0

    return-void

    :goto_2a
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_13

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 233
    :try_start_1
    iget-object v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 234
    iput v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 235
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public final expire()V
    .registers 7

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 239
    :goto_4
    iget-object v2, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_30

    iget-object v2, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    .line 240
    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;

    iget-wide v2, v2, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;->mTimestamp:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mPeriod:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_30

    .line 241
    iget v2, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F

    iget-object v3, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;

    iget v3, v3, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;->mValue:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F

    goto :goto_4

    :cond_30
    return-void
.end method

.method public declared-synchronized getAverage()F
    .registers 3

    monitor-enter p0

    .line 228
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->expire()V

    .line 229
    iget-object v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_18

    :cond_e
    iget v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F

    iget-object v1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_18
    monitor-exit p0

    return v0

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 2

    monitor-enter p0

    .line 224
    :try_start_1
    iget-object v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 247
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->expire()V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    iget-object v1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_23

    .line 251
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :catchall_21
    move-exception v0

    goto :goto_61

    .line 253
    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 255
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "average="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->getAverage()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRing=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_21

    .line 255
    monitor-exit p0

    return-object v0

    :goto_61
    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_21

    throw v0
.end method
