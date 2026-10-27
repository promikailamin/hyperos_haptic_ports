.class Lcom/android/server/job/PendingJobQueue;
.super Ljava/lang/Object;
.source "PendingJobQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    }
.end annotation


# instance fields
.field private final mAppJobQueuePool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/server/job/PendingJobQueue$AppJobQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/job/PendingJobQueue$AppJobQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedToResetIterators:Z

.field private mOptimizeIteration:Z

.field private final mOrderedQueues:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/android/server/job/PendingJobQueue$AppJobQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mPullCount:I

.field private mSize:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mAppJobQueuePool:Landroid/util/Pools$Pool;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    .line 46
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/job/PendingJobQueue;->mOptimizeIteration:Z

    .line 83
    iput v0, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    .line 85
    iput-boolean v0, p0, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    return-void
.end method

.method private getAppJobQueue(IZ)Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    .registers 6
    .param p1, "uid"    # I
    .param p2, "create"    # Z

    .line 137
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 138
    .local v0, "ajq":Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    if-nez v0, :cond_23

    if-eqz p2, :cond_23

    .line 139
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue;->mAppJobQueuePool:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 140
    if-nez v0, :cond_1e

    .line 141
    new-instance v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;-><init>(Lcom/android/server/job/PendingJobQueue$AppJobQueue-IA;)V

    move-object v0, v1

    .line 143
    :cond_1e
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    :cond_23
    return-object v0
.end method

.method static synthetic lambda$new$0(Lcom/android/server/job/PendingJobQueue$AppJobQueue;Lcom/android/server/job/PendingJobQueue$AppJobQueue;)I
    .registers 9
    .param p0, "ajq1"    # Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    .param p1, "ajq2"    # Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 48
    invoke-virtual {p0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v0

    .line 49
    .local v0, "t1":J
    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v2

    .line 50
    .local v2, "t2":J
    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_16

    .line 51
    cmp-long v4, v2, v4

    if-nez v4, :cond_14

    .line 52
    const/4 v4, 0x0

    return v4

    .line 54
    :cond_14
    const/4 v4, 0x1

    return v4

    .line 55
    :cond_16
    cmp-long v4, v2, v4

    if-nez v4, :cond_1c

    .line 56
    const/4 v4, -0x1

    return v4

    .line 58
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextOverrideState()I

    move-result v4

    .line 59
    .local v4, "o1":I
    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextOverrideState()I

    move-result v5

    .line 60
    .local v5, "o2":I
    if-eq v4, v5, :cond_2b

    .line 63
    invoke-static {v5, v4}, Ljava/lang/Integer;->compare(II)I

    move-result v6

    return v6

    .line 65
    :cond_2b
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v6

    return v6
.end method


# virtual methods
.method add(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 88
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/job/PendingJobQueue;->getAppJobQueue(IZ)Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    move-result-object v0

    .line 89
    .local v0, "ajq":Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v2

    .line 90
    .local v2, "prevTimestamp":J
    invoke-virtual {v0, p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 91
    iget v4, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 92
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_27

    .line 93
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 96
    :cond_27
    return-void
.end method

.method addAll(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 100
    .local v0, "jobsByUid":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_32

    .line 101
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 102
    .local v3, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 103
    .local v4, "appJobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v4, :cond_2c

    .line 104
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 105
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    :cond_2c
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v4    # "appJobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 109
    .end local v1    # "i":I
    :cond_32
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_37
    if-ltz v1, :cond_4d

    .line 110
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/android/server/job/PendingJobQueue;->getAppJobQueue(IZ)Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    move-result-object v3

    .line 111
    .local v3, "ajq":Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->addAll(Ljava/util/List;)V

    .line 109
    .end local v3    # "ajq":Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    add-int/lit8 v1, v1, -0x1

    goto :goto_37

    .line 113
    .end local v1    # "i":I
    :cond_4d
    iget v1, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 114
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 115
    return-void
.end method

.method clear()V
    .registers 4

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 119
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_20

    .line 120
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 121
    .local v1, "ajq":Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->clear()V

    .line 122
    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue;->mAppJobQueuePool:Landroid/util/Pools$Pool;

    invoke-interface {v2, v1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 119
    .end local v1    # "ajq":Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 124
    .end local v0    # "i":I
    :cond_20
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 125
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 126
    return-void
.end method

.method contains(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 4
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 129
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 130
    .local v0, "ajq":Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    if-nez v0, :cond_10

    .line 131
    const/4 v1, 0x0

    return v1

    .line 133
    :cond_10
    invoke-virtual {v0, p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    return v1
.end method

.method next()Lcom/android/server/job/controllers/JobStatus;
    .registers 12

    .line 150
    iget-boolean v0, p0, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    .line 151
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 152
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_12
    if-ltz v0, :cond_29

    .line 153
    iget-object v3, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 154
    .local v3, "ajq":Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->resetIterator(J)V

    .line 155
    iget-object v4, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 152
    .end local v3    # "ajq":Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 157
    .end local v0    # "i":I
    :cond_29
    iput-boolean v1, p0, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    .line 159
    iput v1, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    goto :goto_51

    .line 160
    :cond_2e
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-nez v0, :cond_51

    .line 163
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_3d
    if-ltz v0, :cond_4f

    .line 164
    iget-object v3, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 165
    .restart local v3    # "ajq":Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    iget-object v4, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 163
    .end local v3    # "ajq":Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    add-int/lit8 v0, v0, -0x1

    goto :goto_3d

    .line 168
    .end local v0    # "i":I
    :cond_4f
    iput v1, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    .line 170
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    .line 171
    .local v0, "numQueues":I
    const/4 v3, 0x0

    if-nez v0, :cond_5b

    .line 172
    return-object v3

    .line 179
    :cond_5b
    iget-boolean v4, p0, Lcom/android/server/job/PendingJobQueue;->mOptimizeIteration:Z

    if-eqz v4, :cond_6a

    const/4 v4, 0x3

    add-int/lit8 v5, v0, -0x1

    ushr-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_6b

    :cond_6a
    move v4, v2

    .line 181
    .local v4, "pullLimit":I
    :goto_6b
    iget-object v5, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 182
    .local v5, "earliestQueue":Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    if-eqz v5, :cond_a9

    .line 183
    invoke-virtual {v5}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 187
    .local v3, "job":Lcom/android/server/job/controllers/JobStatus;
    iget v6, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    const-wide/16 v7, -0x1

    if-ge v6, v4, :cond_94

    if-eqz v3, :cond_8c

    .line 188
    invoke-virtual {v5}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextOverrideState()I

    move-result v2

    iget v6, v3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    if-ne v2, v6, :cond_94

    .line 189
    :cond_8c
    invoke-virtual {v5}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v9

    cmp-long v2, v9, v7

    if-nez v2, :cond_a8

    .line 190
    :cond_94
    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 191
    invoke-virtual {v5}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v9

    cmp-long v2, v9, v7

    if-eqz v2, :cond_a6

    .line 193
    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v5}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 196
    :cond_a6
    iput v1, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    .line 198
    :cond_a8
    return-object v3

    .line 200
    .end local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_a9
    return-object v3
.end method

.method remove(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 9
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 204
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/job/PendingJobQueue;->getAppJobQueue(IZ)Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    move-result-object v0

    .line 205
    .local v0, "ajq":Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    if-nez v0, :cond_c

    .line 206
    return v1

    .line 209
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v2

    .line 210
    .local v2, "prevTimestamp":J
    invoke-virtual {v0, p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 211
    return v1

    .line 214
    :cond_17
    iget v1, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 215
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->size()I

    move-result v1

    if-nez v1, :cond_3a

    .line 216
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 217
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->clear()V

    .line 219
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue;->mAppJobQueuePool:Landroid/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 220
    :cond_3a
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v5

    cmp-long v1, v2, v5

    if-eqz v1, :cond_4c

    .line 221
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 222
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 225
    :cond_4c
    :goto_4c
    return v4
.end method

.method resetIterator()V
    .registers 2

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    .line 233
    return-void
.end method

.method setOptimizeIteration(Z)V
    .registers 2
    .param p1, "optimize"    # Z

    .line 237
    iput-boolean p1, p0, Lcom/android/server/job/PendingJobQueue;->mOptimizeIteration:Z

    .line 238
    return-void
.end method

.method size()I
    .registers 2

    .line 241
    iget v0, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    return v0
.end method
