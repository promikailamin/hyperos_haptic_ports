.class public final Landroid/app/jank/JankDataProcessor$PendingJankStat;
.super Ljava/lang/Object;
.source "JankDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/jank/JankDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingJankStat"
.end annotation


# static fields
.field private static final blacklist NANOS_PER_MS:I = 0xf4240

.field private static final blacklist sFrameOverrunHistogramBounds:[I


# instance fields
.field private blacklist mActivityName:Ljava/lang/String;

.field private final blacklist mFrameOverrunBuckets:[I

.field private blacklist mJankyFrames:J

.field private blacklist mRefreshRate:I

.field private blacklist mTotalFrames:J

.field private blacklist mUid:I

.field private blacklist mWidgetCategory:Ljava/lang/String;

.field private blacklist mWidgetId:Ljava/lang/String;

.field private blacklist mWidgetState:Ljava/lang/String;

.field public blacklist processedVsyncId:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityName(Landroid/app/jank/JankDataProcessor$PendingJankStat;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mActivityName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameOverrunBuckets(Landroid/app/jank/JankDataProcessor$PendingJankStat;)[I
    .registers 1

    iget-object p0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJankyFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mJankyFrames:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mTotalFrames:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActivityName(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mActivityName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmJankyFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mJankyFrames:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mTotalFrames:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUid(Landroid/app/jank/JankDataProcessor$PendingJankStat;I)V
    .registers 2

    iput p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mUid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWidgetCategory(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetCategory:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWidgetId(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWidgetState(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetState:Ljava/lang/String;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 363
    const/16 v0, 0x35

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->sFrameOverrunHistogramBounds:[I

    return-void

    :array_a
    .array-data 4
        -0x80000000
        -0xc8
        -0x96
        -0x64
        -0x5a
        -0x50
        -0x46
        -0x3c
        -0x32
        -0x28
        -0x1e
        -0x19
        -0x14
        -0x12
        -0x10
        -0xe
        -0xc
        -0xa
        -0x8
        -0x6
        -0x4
        -0x2
        0x0
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
        0x10
        0x12
        0x14
        0x19
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
        0x96
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e8
        0x7fffffff
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->processedVsyncId:J

    .line 369
    sget-object v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->sFrameOverrunHistogramBounds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    .line 373
    return-void
.end method

.method private blacklist clearHistogram()V
    .registers 4

    .line 480
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    array-length v2, v2

    if-ge v1, v2, :cond_e

    .line 481
    iget-object v2, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    aput v0, v2, v1

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 483
    :cond_e
    return-void
.end method

.method private blacklist indexForFrameOverrun(I)I
    .registers 7

    .line 487
    const/16 v0, 0xc8

    const/16 v1, 0x1e

    const/16 v2, 0x64

    const/16 v3, 0x14

    if-ge p1, v3, :cond_34

    .line 488
    const/16 v4, -0x14

    if-lt p1, v4, :cond_14

    .line 489
    add-int/2addr p1, v3

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0xc

    return p1

    .line 491
    :cond_14
    const/16 v3, -0x1e

    if-lt p1, v3, :cond_1e

    .line 492
    add-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0xa

    return p1

    .line 494
    :cond_1e
    const/16 v1, -0x64

    if-lt p1, v1, :cond_28

    .line 495
    add-int/2addr p1, v2

    div-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x3

    return p1

    .line 497
    :cond_28
    const/16 v1, -0xc8

    if-lt p1, v1, :cond_32

    .line 498
    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x32

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 500
    :cond_32
    const/4 p1, 0x0

    return p1

    .line 502
    :cond_34
    if-ge p1, v1, :cond_3c

    .line 503
    sub-int/2addr p1, v3

    div-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x20

    return p1

    .line 505
    :cond_3c
    if-ge p1, v2, :cond_44

    .line 506
    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x22

    return p1

    .line 508
    :cond_44
    if-ge p1, v0, :cond_4c

    .line 509
    add-int/lit8 p1, p1, -0x32

    div-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x29

    return p1

    .line 511
    :cond_4c
    const/16 v1, 0x3e8

    if-gt p1, v1, :cond_55

    .line 512
    sub-int/2addr p1, v0

    div-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x2b

    return p1

    .line 514
    :cond_55
    iget-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method


# virtual methods
.method public blacklist clearStats()V
    .registers 4

    .line 468
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mUid:I

    .line 469
    const-string v0, ""

    iput-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mActivityName:Ljava/lang/String;

    .line 470
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->processedVsyncId:J

    .line 471
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mJankyFrames:J

    .line 472
    iput-wide v1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mTotalFrames:J

    .line 473
    iput-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetCategory:Ljava/lang/String;

    .line 474
    iput-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetState:Ljava/lang/String;

    .line 475
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mRefreshRate:I

    .line 476
    invoke-direct {p0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->clearHistogram()V

    .line 477
    return-void
.end method

.method public blacklist getActivityName()Ljava/lang/String;
    .registers 2

    .line 392
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFrameOverrunBuckets()[I
    .registers 2

    .line 440
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    return-object v0
.end method

.method public blacklist getJankyFrames()J
    .registers 3

    .line 432
    iget-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mJankyFrames:J

    return-wide v0
.end method

.method public blacklist getProcessedVsyncId()J
    .registers 3

    .line 376
    iget-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->processedVsyncId:J

    return-wide v0
.end method

.method public blacklist getRefreshRate()I
    .registers 2

    .line 444
    iget v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mRefreshRate:I

    return v0
.end method

.method public blacklist getTotalFrames()J
    .registers 3

    .line 424
    iget-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mTotalFrames:J

    return-wide v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 384
    iget v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mUid:I

    return v0
.end method

.method public blacklist getWidgetCategory()Ljava/lang/String;
    .registers 2

    .line 408
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetCategory:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getWidgetId()Ljava/lang/String;
    .registers 2

    .line 400
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getWidgetState()Ljava/lang/String;
    .registers 2

    .line 416
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetState:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist recordFrameOverrun(J)V
    .registers 4

    .line 457
    long-to-int p1, p1

    const p2, 0xf4240

    :try_start_4
    div-int/2addr p1, p2

    .line 458
    iget-object p2, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    invoke-direct {p0, p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->indexForFrameOverrun(I)I

    move-result p1

    aget v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, p1
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_11} :catch_12

    .line 461
    goto :goto_13

    .line 459
    :catch_12
    move-exception p1

    .line 462
    :goto_13
    return-void
.end method

.method public blacklist setActivityName(Ljava/lang/String;)V
    .registers 2

    .line 396
    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mActivityName:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public blacklist setJankyFrames(J)V
    .registers 3

    .line 436
    iput-wide p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mJankyFrames:J

    .line 437
    return-void
.end method

.method public blacklist setProcessedVsyncId(J)V
    .registers 3

    .line 380
    iput-wide p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->processedVsyncId:J

    .line 381
    return-void
.end method

.method public blacklist setRefreshRate(I)V
    .registers 2

    .line 448
    iput p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mRefreshRate:I

    .line 449
    return-void
.end method

.method public blacklist setTotalFrames(J)V
    .registers 3

    .line 428
    iput-wide p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mTotalFrames:J

    .line 429
    return-void
.end method

.method public blacklist setUid(I)V
    .registers 2

    .line 388
    iput p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mUid:I

    .line 389
    return-void
.end method

.method public blacklist setWidgetCategory(Ljava/lang/String;)V
    .registers 2

    .line 412
    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetCategory:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public blacklist setWidgetId(Ljava/lang/String;)V
    .registers 2

    .line 404
    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetId:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public blacklist setWidgetState(Ljava/lang/String;)V
    .registers 2

    .line 420
    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetState:Ljava/lang/String;

    .line 421
    return-void
.end method
