.class public final Lcom/android/server/job/PendingJobQueue$AppJobQueue;
.super Ljava/lang/Object;
.source "PendingJobQueue.java"


# static fields
.field public static final mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

.field public static final sJobComparator:Ljava/util/Comparator;


# instance fields
.field public mCurIndex:I

.field public final mJobs:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$g0OYYwC3jkCSkqvBk21tiP7tdvI(Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;)I
    .registers 4

    if-ne p0, p1, :cond_3

    goto :goto_9

    .line 266
    :cond_3
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 267
    iget-object p1, p1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    if-ne p0, p1, :cond_b

    :goto_9
    const/4 p0, 0x0

    return p0

    .line 273
    :cond_b
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    if-eq v0, v1, :cond_16

    .line 276
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 279
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v0

    .line 280
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v1

    if-eq v0, v1, :cond_2b

    if-eqz v0, :cond_39

    goto :goto_37

    .line 286
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    .line 287
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    if-eq v0, v1, :cond_3b

    if-eqz v0, :cond_39

    :goto_37
    const/4 p0, -0x1

    return p0

    :cond_39
    const/4 p0, 0x1

    return p0

    .line 294
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 295
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    .line 296
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v1

    if-eq v0, v1, :cond_58

    .line 300
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 304
    :cond_58
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-eq v0, v1, :cond_63

    .line 306
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 309
    :cond_63
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-wide p0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 262
    new-instance v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->sJobComparator:Ljava/util/Comparator;

    .line 312
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    const/4 v0, 0x0

    .line 316
    iput v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/PendingJobQueue-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 9

    .line 319
    sget-object v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    if-nez v0, :cond_10

    .line 321
    new-instance v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;-><init>(Lcom/android/server/job/PendingJobQueue-IA;)V

    .line 323
    :cond_10
    iget-wide v1, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iput-wide v1, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 324
    iput-object p1, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 326
    iget-object p1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    sget-object v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->sJobComparator:Ljava/util/Comparator;

    invoke-static {p1, v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-gez p1, :cond_21

    not-int p1, p1

    .line 330
    :cond_21
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 331
    iget v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    if-ge p1, v1, :cond_2c

    .line 334
    iput p1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    :cond_2c
    if-lez p1, :cond_42

    .line 338
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-wide v1, v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 339
    iget-wide v3, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 340
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 342
    :cond_42
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    if-ge p1, v2, :cond_64

    :goto_4c
    if-ge p1, v1, :cond_64

    .line 346
    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 347
    iget-wide v3, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    iget-wide v5, v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_5f

    goto :goto_64

    .line 351
    :cond_5f
    iput-wide v3, v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    add-int/lit8 p1, p1, 0x1

    goto :goto_4c

    :cond_64
    :goto_64
    return-void
.end method

.method public addAll(Ljava/util/List;)V
    .registers 9

    .line 359
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const v2, 0x7fffffff

    :goto_9
    if-ltz v0, :cond_44

    .line 360
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 362
    sget-object v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    invoke-interface {v4}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    if-nez v4, :cond_21

    .line 364
    new-instance v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;-><init>(Lcom/android/server/job/PendingJobQueue-IA;)V

    .line 366
    :cond_21
    iget-wide v5, v3, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iput-wide v5, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 367
    iput-object v3, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 369
    iget-object v3, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    sget-object v5, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->sJobComparator:Ljava/util/Comparator;

    invoke-static {v3, v4, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    if-gez v3, :cond_32

    not-int v3, v3

    .line 373
    :cond_32
    iget-object v5, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v5, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 374
    iget v4, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    if-ge v3, v4, :cond_3d

    .line 377
    iput v3, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 379
    :cond_3d
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 382
    :cond_44
    iget-object p1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 383
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_4e
    if-ge v0, p1, :cond_6f

    .line 384
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 385
    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 386
    iget-wide v3, v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    iget-wide v5, v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 387
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_6f
    return-void
.end method

.method public clear()V
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 393
    iput v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    return-void
.end method

.method public contains(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->indexOf(Lcom/android/server/job/controllers/JobStatus;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final indexOf(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 5

    .line 405
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 406
    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 407
    iget-object v2, v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    if-ne v2, p1, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public next()Lcom/android/server/job/controllers/JobStatus;
    .registers 4

    .line 416
    iget v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 419
    :cond_c
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    iget v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    return-object p0
.end method

.method public peekNextOverrideState()I
    .registers 3

    .line 423
    iget v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 p0, -0x1

    return p0

    .line 426
    :cond_c
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    iget p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    return p0
.end method

.method public peekNextTimestamp()J
    .registers 3

    .line 430
    iget v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_d

    const-wide/16 v0, -0x1

    return-wide v0

    .line 433
    :cond_d
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    iget p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-wide v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    return-wide v0
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 4

    .line 437
    invoke-virtual {p0, p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->indexOf(Lcom/android/server/job/controllers/JobStatus;)I

    move-result p1

    if-gez p1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 442
    :cond_8
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 443
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->clear()V

    .line 444
    sget-object v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 445
    iget v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_20

    sub-int/2addr v0, v1

    .line 446
    iput v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    :cond_20
    return v1
.end method

.method public resetIterator(J)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 456
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_3b

    .line 463
    :cond_10
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_18
    if-ge v1, v0, :cond_38

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 467
    iget-object v3, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 469
    iget-wide v3, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    cmp-long v5, v3, p1

    if-gez v5, :cond_30

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_18

    :cond_30
    cmp-long v0, v3, p1

    if-lez v0, :cond_36

    add-int/lit8 v2, v2, -0x1

    :cond_36
    move v0, v2

    goto :goto_18

    .line 477
    :cond_38
    iput v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    return-void

    .line 457
    :cond_3b
    :goto_3b
    iput v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    return-void
.end method

.method public size()I
    .registers 1

    .line 481
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
