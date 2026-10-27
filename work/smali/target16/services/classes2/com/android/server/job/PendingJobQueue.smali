.class public Lcom/android/server/job/PendingJobQueue;
.super Ljava/lang/Object;
.source "PendingJobQueue.java"


# instance fields
.field public final mAppJobQueuePool:Landroid/util/Pools$Pool;

.field public final mCurrentQueues:Landroid/util/SparseArray;

.field public mNeedToResetIterators:Z

.field public mOptimizeIteration:Z

.field public final mOrderedQueues:Ljava/util/PriorityQueue;

.field public mPullCount:I

.field public mSize:I


# direct methods
.method public static synthetic $r8$lambda$M4BYHsJI5-OqL8hZ_zUrbsjiO-g(Lcom/android/server/job/PendingJobQueue$AppJobQueue;Lcom/android/server/job/PendingJobQueue$AppJobQueue;)I
    .registers 9

    .line 50
    invoke-virtual {p0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v0

    .line 51
    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_16

    cmp-long p0, v2, v4

    if-nez p0, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    cmp-long v4, v2, v4

    if-nez v4, :cond_1c

    const/4 p0, -0x1

    return p0

    .line 60
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextOverrideState()I

    move-result p0

    .line 61
    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextOverrideState()I

    move-result p1

    if-eq p0, p1, :cond_2b

    .line 65
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 67
    :cond_2b
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mAppJobQueuePool:Landroid/util/Pools$Pool;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    .line 48
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    const/4 v1, 0x1

    .line 79
    iput-boolean v1, p0, Lcom/android/server/job/PendingJobQueue;->mOptimizeIteration:Z

    .line 85
    iput v0, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    .line 87
    iput-boolean v0, p0, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8

    .line 90
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/PendingJobQueue;->getAppJobQueue(IZ)Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v2

    .line 92
    invoke-virtual {v0, p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 93
    iget p1, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 94
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_27

    .line 95
    iget-object p1, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 96
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    :cond_27
    return-void
.end method

.method public addAll(Landroid/util/ArraySet;)V
    .registers 8

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_b
    if-ltz v1, :cond_31

    .line 103
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 104
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_2b

    .line 106
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    :cond_2b
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 111
    :cond_31
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_36
    if-ltz v1, :cond_4c

    .line 112
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/android/server/job/PendingJobQueue;->getAppJobQueue(IZ)Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    move-result-object v3

    .line 113
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->addAll(Ljava/util/List;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_36

    .line 115
    :cond_4c
    iget v0, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 116
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->clear()V

    return-void
.end method

.method public clear()V
    .registers 4

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 121
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_20

    .line 122
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 123
    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->clear()V

    .line 124
    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue;->mAppJobQueuePool:Landroid/util/Pools$Pool;

    invoke-interface {v2, v1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 126
    :cond_20
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 127
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->clear()V

    return-void
.end method

.method public contains(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3

    .line 131
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 135
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public final getAppJobQueue(IZ)Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    if-nez v0, :cond_22

    if-eqz p2, :cond_22

    .line 141
    iget-object p2, p0, Lcom/android/server/job/PendingJobQueue;->mAppJobQueuePool:Landroid/util/Pools$Pool;

    invoke-interface {p2}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    if-nez p2, :cond_1c

    .line 143
    new-instance p2, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;-><init>(Lcom/android/server/job/PendingJobQueue-IA;)V

    .line 145
    :cond_1c
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p2

    :cond_22
    return-object v0
.end method

.method public next()Lcom/android/server/job/controllers/JobStatus;
    .registers 11

    .line 152
    iget-boolean v0, p0, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    .line 153
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 154
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_12
    if-ltz v0, :cond_29

    .line 155
    iget-object v3, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    const-wide/16 v4, 0x0

    .line 156
    invoke-virtual {v3, v4, v5}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->resetIterator(J)V

    .line 157
    iget-object v4, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 159
    :cond_29
    iput-boolean v1, p0, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    .line 161
    iput v1, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    goto :goto_51

    .line 162
    :cond_2e
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-nez v0, :cond_51

    .line 165
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_3d
    if-ltz v0, :cond_4f

    .line 166
    iget-object v3, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 167
    iget-object v4, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_3d

    .line 170
    :cond_4f
    iput v1, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    .line 172
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_5b

    return-object v3

    .line 181
    :cond_5b
    iget-boolean v4, p0, Lcom/android/server/job/PendingJobQueue;->mOptimizeIteration:Z

    if-eqz v4, :cond_69

    sub-int/2addr v0, v2

    ushr-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    const/4 v4, 0x3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_6a

    :cond_69
    move v0, v2

    .line 183
    :goto_6a
    iget-object v4, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    if-eqz v4, :cond_a9

    .line 185
    invoke-virtual {v4}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 189
    iget v5, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    const-wide/16 v6, -0x1

    if-ge v5, v0, :cond_95

    if-eqz v3, :cond_8b

    .line 190
    invoke-virtual {v4}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextOverrideState()I

    move-result v0

    iget v2, v3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    if-ne v0, v2, :cond_95

    .line 191
    :cond_8b
    invoke-virtual {v4}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-nez v0, :cond_94

    goto :goto_95

    :cond_94
    return-object v3

    .line 192
    :cond_95
    :goto_95
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 193
    invoke-virtual {v4}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_a7

    .line 195
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 198
    :cond_a7
    iput v1, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    :cond_a9
    return-object v3
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 9

    .line 206
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/PendingJobQueue;->getAppJobQueue(IZ)Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    move-result-object v0

    if-nez v0, :cond_c

    return v1

    .line 211
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v2

    .line 212
    invoke-virtual {v0, p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    if-nez v4, :cond_17

    return v1

    .line 216
    :cond_17
    iget v1, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 217
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->size()I

    move-result v1

    if-nez v1, :cond_3a

    .line 218
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 219
    iget-object p1, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->clear()V

    .line 221
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mAppJobQueuePool:Landroid/util/Pools$Pool;

    invoke-interface {p0, v0}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 222
    :cond_3a
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v5

    cmp-long p1, v2, v5

    if-eqz p1, :cond_4c

    .line 225
    iget-object p1, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 226
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    :cond_4c
    :goto_4c
    return v4
.end method

.method public resetIterator()V
    .registers 2

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    return-void
.end method

.method public setOptimizeIteration(Z)V
    .registers 2

    .line 241
    iput-boolean p1, p0, Lcom/android/server/job/PendingJobQueue;->mOptimizeIteration:Z

    return-void
.end method

.method public size()I
    .registers 1

    .line 245
    iget p0, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    return p0
.end method
