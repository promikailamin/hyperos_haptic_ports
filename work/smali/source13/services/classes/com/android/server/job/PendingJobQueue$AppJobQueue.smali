.class final Lcom/android/server/job/PendingJobQueue$AppJobQueue;
.super Ljava/lang/Object;
.source "PendingJobQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/PendingJobQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppJobQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;
    }
.end annotation


# static fields
.field static final NO_NEXT_OVERRIDE_STATE:I = -0x1

.field static final NO_NEXT_TIMESTAMP:J = -0x1L

.field private static final mAdjustedJobStatusPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final sJobComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurIndex:I

.field private final mJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 258
    new-instance v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->sJobComparator:Ljava/util/Comparator;

    .line 299
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/PendingJobQueue$AppJobQueue-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;-><init>()V

    return-void
.end method

.method private indexOf(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_19

    .line 393
    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 394
    .local v2, "adjustedJobStatus":Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;
    iget-object v3, v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    if-ne v3, p1, :cond_16

    .line 395
    return v0

    .line 392
    .end local v2    # "adjustedJobStatus":Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 398
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method static synthetic lambda$static$0(Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;)I
    .registers 12
    .param p0, "aj1"    # Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;
    .param p1, "aj2"    # Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 259
    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    .line 260
    return v0

    .line 262
    :cond_4
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 263
    .local v1, "job1":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 264
    .local v2, "job2":Lcom/android/server/job/controllers/JobStatus;
    if-ne v1, v2, :cond_b

    .line 265
    return v0

    .line 269
    :cond_b
    iget v0, v1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    iget v3, v2, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    if-eq v0, v3, :cond_1a

    .line 272
    iget v0, v2, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    iget v3, v1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    invoke-static {v0, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    .line 275
    :cond_1a
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    .line 276
    .local v0, "job1EJ":Z
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v3

    .line 277
    .local v3, "job2EJ":Z
    if-eq v0, v3, :cond_2a

    .line 280
    if-eqz v0, :cond_28

    const/4 v4, -0x1

    goto :goto_29

    :cond_28
    const/4 v4, 0x1

    :goto_29
    return v4

    .line 283
    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v4

    .line 284
    .local v4, "job1Priority":I
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v5

    .line 285
    .local v5, "job2Priority":I
    if-eq v4, v5, :cond_39

    .line 288
    invoke-static {v5, v4}, Ljava/lang/Integer;->compare(II)I

    move-result v6

    return v6

    .line 291
    :cond_39
    iget v6, v1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    iget v7, v2, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-eq v6, v7, :cond_48

    .line 293
    iget v6, v2, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    iget v7, v1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    invoke-static {v6, v7}, Ljava/lang/Integer;->compare(II)I

    move-result v6

    return v6

    .line 296
    :cond_48
    iget-wide v6, v1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-wide v8, v2, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Long;->compare(JJ)I

    move-result v6

    return v6
.end method


# virtual methods
.method add(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 11
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 306
    sget-object v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 307
    .local v0, "adjustedJobStatus":Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;
    if-nez v0, :cond_11

    .line 308
    new-instance v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;-><init>(Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus-IA;)V

    move-object v0, v1

    .line 310
    :cond_11
    iget-wide v1, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iput-wide v1, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 311
    iput-object p1, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 313
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    sget-object v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->sJobComparator:Ljava/util/Comparator;

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 314
    .local v1, "where":I
    if-gez v1, :cond_22

    .line 315
    not-int v1, v1

    .line 317
    :cond_22
    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 318
    iget v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    if-ge v1, v2, :cond_2d

    .line 321
    iput v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 324
    :cond_2d
    if-lez v1, :cond_43

    .line 325
    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-wide v2, v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 326
    .local v2, "prevTimestamp":J
    iget-wide v4, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 327
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 329
    .end local v2    # "prevTimestamp":J
    :cond_43
    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 330
    .local v2, "numJobs":I
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_68

    .line 332
    move v3, v1

    .local v3, "i":I
    :goto_4e
    if-ge v3, v2, :cond_68

    .line 333
    iget-object v4, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 334
    .local v4, "ajs":Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;
    iget-wide v5, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    iget-wide v7, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_61

    .line 336
    goto :goto_68

    .line 338
    :cond_61
    iget-wide v5, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    iput-wide v5, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 332
    .end local v4    # "ajs":Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 341
    .end local v3    # "i":I
    :cond_68
    :goto_68
    return-void
.end method

.method addAll(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 344
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    const v0, 0x7fffffff

    .line 346
    .local v0, "earliestIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_45

    .line 347
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 349
    .local v3, "job":Lcom/android/server/job/controllers/JobStatus;
    sget-object v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    invoke-interface {v4}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 350
    .local v4, "adjustedJobStatus":Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;
    if-nez v4, :cond_22

    .line 351
    new-instance v5, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;-><init>(Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus-IA;)V

    move-object v4, v5

    .line 353
    :cond_22
    iget-wide v5, v3, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iput-wide v5, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 354
    iput-object v3, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 356
    iget-object v5, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    sget-object v6, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->sJobComparator:Ljava/util/Comparator;

    invoke-static {v5, v4, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v5

    .line 357
    .local v5, "where":I
    if-gez v5, :cond_33

    .line 358
    not-int v5, v5

    .line 360
    :cond_33
    iget-object v6, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v6, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 361
    iget v6, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    if-ge v5, v6, :cond_3e

    .line 364
    iput v5, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 366
    :cond_3e
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 346
    .end local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v4    # "adjustedJobStatus":Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;
    .end local v5    # "where":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 369
    .end local v1    # "i":I
    :cond_45
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 370
    .local v1, "numJobs":I
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .local v2, "i":I
    :goto_4f
    if-ge v2, v1, :cond_70

    .line 371
    iget-object v3, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 372
    .local v3, "ajs":Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;
    iget-object v4, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 373
    .local v4, "prev":Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;
    iget-wide v5, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    iget-wide v7, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 374
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 370
    .end local v3    # "ajs":Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;
    .end local v4    # "prev":Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 376
    .end local v2    # "i":I
    :cond_70
    return-void
.end method

.method clear()V
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 381
    return-void
.end method

.method contains(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 384
    invoke-direct {p0, p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->indexOf(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method next()Lcom/android/server/job/controllers/JobStatus;
    .registers 4

    .line 403
    iget v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_c

    .line 404
    const/4 v0, 0x0

    return-object v0

    .line 406
    :cond_c
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    iget v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-object v0, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    return-object v0
.end method

.method peekNextOverrideState()I
    .registers 3

    .line 410
    iget v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_c

    .line 411
    const/4 v0, -0x1

    return v0

    .line 413
    :cond_c
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    iget v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-object v0, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    return v0
.end method

.method peekNextTimestamp()J
    .registers 3

    .line 417
    iget v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_d

    .line 418
    const-wide/16 v0, -0x1

    return-wide v0

    .line 420
    :cond_d
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    iget v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-wide v0, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    return-wide v0
.end method

.method remove(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 424
    invoke-direct {p0, p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->indexOf(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v0

    .line 425
    .local v0, "idx":I
    if-gez v0, :cond_8

    .line 427
    const/4 v1, 0x0

    return v1

    .line 429
    :cond_8
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 430
    .local v1, "adjustedJobStatus":Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->clear()V

    .line 431
    sget-object v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    invoke-interface {v2, v1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 432
    iget v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_20

    .line 433
    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 435
    :cond_20
    return v3
.end method

.method resetIterator(J)V
    .registers 9
    .param p1, "earliestEnqueueTime"    # J

    .line 443
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_3d

    .line 449
    :cond_f
    const/4 v0, 0x0

    .line 450
    .local v0, "low":I
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 452
    .local v1, "high":I
    :goto_18
    if-ge v0, v1, :cond_3a

    .line 453
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 454
    .local v2, "mid":I
    iget-object v3, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 456
    .local v3, "midVal":Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;
    iget-wide v4, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    cmp-long v4, v4, p1

    if-gez v4, :cond_2f

    .line 457
    add-int/lit8 v0, v2, 0x1

    goto :goto_39

    .line 458
    :cond_2f
    iget-wide v4, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_38

    .line 459
    add-int/lit8 v1, v2, -0x1

    goto :goto_39

    .line 461
    :cond_38
    move v1, v2

    .line 463
    .end local v2    # "mid":I
    .end local v3    # "midVal":Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;
    :goto_39
    goto :goto_18

    .line 464
    :cond_3a
    iput v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 465
    return-void

    .line 444
    .end local v0    # "low":I
    .end local v1    # "high":I
    :cond_3d
    :goto_3d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 445
    return-void
.end method

.method size()I
    .registers 2

    .line 468
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
