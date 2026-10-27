.class Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;
.super Ljava/lang/Thread;
.source "PerfEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfEventReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcPerfEventReaderThread"
.end annotation


# static fields
.field private static final blacklist sInstance:Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;


# instance fields
.field private blacklist latestSendUptimeMillis:J

.field private blacklist mEffectivePerfEvents:Landroid/os/statistics/FilteringPerfEventList;

.field private blacklist mPerfEventFetchingBuffer:[Landroid/os/statistics/FilteringPerfEvent;

.field private blacklist mSuspectedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

.field private blacklist maxEventCountOfOneBatch:I

.field private blacklist myTid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;

    invoke-direct {v0}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;-><init>()V

    sput-object v0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->sInstance:Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 64
    const-string v0, "Binder:read-perf-event"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v0, Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {v0}, Landroid/os/statistics/FilteringPerfEventList;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mEffectivePerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    .line 57
    new-instance v0, Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {v0}, Landroid/os/statistics/FilteringPerfEventList;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mSuspectedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    .line 65
    return-void
.end method

.method private blacklist dividePerfEventsFromBuffer(ILandroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEventList;)V
    .registers 11
    .param p1, "count"    # I
    .param p2, "effectiveEvents"    # Landroid/os/statistics/FilteringPerfEventList;
    .param p3, "suspectedEvents"    # Landroid/os/statistics/FilteringPerfEventList;

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_53

    .line 133
    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mPerfEventFetchingBuffer:[Landroid/os/statistics/FilteringPerfEvent;

    aget-object v2, v1, v0

    .line 134
    .local v2, "filteringPerfEvent":Landroid/os/statistics/FilteringPerfEvent;
    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 135
    iget-wide v3, v2, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_4c

    iget v1, v2, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    if-ltz v1, :cond_4c

    iget v1, v2, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    const/high16 v3, 0x10000

    if-lt v1, v3, :cond_1d

    goto :goto_4c

    .line 143
    :cond_1d
    iget v1, v2, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    const/high16 v4, 0x10000000

    if-lt v1, v3, :cond_2a

    .line 144
    const/4 v1, 0x1

    .line 145
    .local v1, "isEffectiveEvent":Z
    iget v3, v2, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    or-int/2addr v3, v4

    iput v3, v2, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    goto :goto_42

    .line 147
    .end local v1    # "isEffectiveEvent":Z
    :cond_2a
    iget v1, v2, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    const v3, 0x40001

    and-int/2addr v1, v3

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    .line 148
    .restart local v1    # "isEffectiveEvent":Z
    :goto_35
    iget v3, v2, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    and-int/lit16 v3, v3, 0x300

    const/16 v5, 0x100

    if-ne v3, v5, :cond_42

    .line 149
    iget v3, v2, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    or-int/2addr v3, v4

    iput v3, v2, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    .line 153
    :cond_42
    :goto_42
    if-eqz v1, :cond_48

    .line 154
    invoke-virtual {p2, v2}, Landroid/os/statistics/FilteringPerfEventList;->addLast(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_50

    .line 156
    :cond_48
    invoke-virtual {p3, v2}, Landroid/os/statistics/FilteringPerfEventList;->addLast(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_50

    .line 138
    .end local v1    # "isEffectiveEvent":Z
    :cond_4c
    :goto_4c
    invoke-static {v2}, Landroid/os/statistics/FilteringPerfEventCache;->recycle(Landroid/os/statistics/FilteringPerfEvent;)V

    .line 139
    nop

    .line 132
    .end local v2    # "filteringPerfEvent":Landroid/os/statistics/FilteringPerfEvent;
    :goto_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    .end local v0    # "i":I
    :cond_53
    return-void
.end method

.method private blacklist fetchPerfEventsFromBuffer(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEventList;)V
    .registers 5
    .param p1, "effectiveEvents"    # Landroid/os/statistics/FilteringPerfEventList;
    .param p2, "suspectedEvents"    # Landroid/os/statistics/FilteringPerfEventList;

    .line 121
    iget-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mPerfEventFetchingBuffer:[Landroid/os/statistics/FilteringPerfEvent;

    invoke-static {v0}, Landroid/os/statistics/PerfEventReporter;->-$$Nest$smfetchProcUserspacePerfEvents([Landroid/os/statistics/FilteringPerfEvent;)I

    move-result v0

    .line 122
    .local v0, "count":I
    if-eqz v0, :cond_b

    .line 123
    invoke-direct {p0, v0, p1, p2}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->dividePerfEventsFromBuffer(ILandroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    .line 125
    :cond_b
    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mPerfEventFetchingBuffer:[Landroid/os/statistics/FilteringPerfEvent;

    invoke-static {v1}, Landroid/os/statistics/PerfEventReporter;->-$$Nest$smfetchProcKernelPerfEvents([Landroid/os/statistics/FilteringPerfEvent;)I

    move-result v0

    .line 126
    if-eqz v0, :cond_16

    .line 127
    invoke-direct {p0, v0, p1, p2}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->dividePerfEventsFromBuffer(ILandroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    .line 129
    :cond_16
    return-void
.end method

.method public static blacklist getInstance()Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;
    .registers 1

    .line 60
    sget-object v0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->sInstance:Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;

    return-object v0
.end method

.method private blacklist loopOnce()V
    .registers 10

    .line 88
    const-wide/16 v0, 0x0

    .line 89
    .local v0, "earliestBeginUptimeMillisOfExecutingRootEvents":J
    const-wide/16 v2, 0x0

    .line 92
    .local v2, "now":J
    :goto_4
    iget-object v4, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mEffectivePerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget v4, v4, Landroid/os/statistics/FilteringPerfEventList;->size:I

    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mSuspectedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget v5, v5, Landroid/os/statistics/FilteringPerfEventList;->size:I

    add-int/2addr v4, v5

    if-lez v4, :cond_14

    .line 93
    sget v4, Landroid/os/statistics/PerfEventFilter;->APP_MAX_FILTER_INTERVAL_MILLIS:I

    shr-int/lit8 v4, v4, 0x2

    .local v4, "timeoutMillis":I
    goto :goto_15

    .line 95
    .end local v4    # "timeoutMillis":I
    :cond_14
    const/4 v4, -0x1

    .line 97
    .restart local v4    # "timeoutMillis":I
    :goto_15
    invoke-static {v4}, Landroid/os/statistics/PerfEventReporter;->-$$Nest$smwaitForPerfEventArrived(I)V

    .line 101
    invoke-static {}, Landroid/os/statistics/PerfEventReporter;->getEarliestBeginUptimeMillisOfExecutingRootEvents()J

    move-result-wide v0

    .line 102
    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mEffectivePerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget-object v6, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mSuspectedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {p0, v5, v6}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->fetchPerfEventsFromBuffer(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    .line 103
    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v2

    .line 104
    iget-wide v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->latestSendUptimeMillis:J

    sub-long v5, v2, v5

    sget v7, Landroid/os/statistics/PerfEventFilter;->APP_MAX_FILTER_INTERVAL_MILLIS:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_4b

    iget-wide v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->latestSendUptimeMillis:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_4b

    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mEffectivePerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget v5, v5, Landroid/os/statistics/FilteringPerfEventList;->size:I

    iget-object v6, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mSuspectedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget v6, v6, Landroid/os/statistics/FilteringPerfEventList;->size:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->maxEventCountOfOneBatch:I

    if-lt v5, v6, :cond_4a

    goto :goto_4b

    .line 110
    .end local v4    # "timeoutMillis":I
    :cond_4a
    goto :goto_4

    .line 107
    .restart local v4    # "timeoutMillis":I
    :cond_4b
    :goto_4b
    iput-wide v2, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->latestSendUptimeMillis:J

    .line 108
    nop

    .line 112
    .end local v4    # "timeoutMillis":I
    iget-object v4, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mEffectivePerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    .line 113
    .local v4, "effectiveEvents":Landroid/os/statistics/FilteringPerfEventList;
    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mSuspectedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    .line 114
    .local v5, "suspectedEvents":Landroid/os/statistics/FilteringPerfEventList;
    new-instance v6, Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {v6}, Landroid/os/statistics/FilteringPerfEventList;-><init>()V

    iput-object v6, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mEffectivePerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    .line 115
    new-instance v6, Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {v6}, Landroid/os/statistics/FilteringPerfEventList;-><init>()V

    iput-object v6, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mSuspectedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    .line 116
    invoke-static {}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->getInstance()Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v0, v1}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->send(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEventList;J)V

    .line 117
    return-void
.end method


# virtual methods
.method public blacklist hasPendingPerfEvents()Z
    .registers 4

    .line 68
    iget-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mEffectivePerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    .line 69
    .local v0, "effectiveEvents":Landroid/os/statistics/FilteringPerfEventList;
    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mSuspectedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    .line 70
    .local v1, "suspectedEvents":Landroid/os/statistics/FilteringPerfEventList;
    if-eqz v0, :cond_a

    iget v2, v0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-gtz v2, :cond_10

    :cond_a
    if-eqz v1, :cond_12

    iget v2, v1, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v2, :cond_12

    :cond_10
    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method public whitelist test-api run()V
    .registers 3

    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/statistics/PerfSuperviser;->setThreadPerfSupervisionOn(Z)V

    .line 76
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->myTid:I

    .line 77
    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->latestSendUptimeMillis:J

    .line 78
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSystemServer()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 79
    const/16 v0, 0x258

    goto :goto_1b

    :cond_19
    const/16 v0, 0xc8

    :goto_1b
    iput v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->maxEventCountOfOneBatch:I

    .line 80
    new-array v0, v0, [Landroid/os/statistics/FilteringPerfEvent;

    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mPerfEventFetchingBuffer:[Landroid/os/statistics/FilteringPerfEvent;

    .line 81
    iget v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->myTid:I

    const/16 v1, -0xa

    invoke-static {v0, v1}, Landroid/os/statistics/OsUtils;->setThreadPriorityUnconditonally(II)V

    .line 83
    :goto_28
    invoke-direct {p0}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->loopOnce()V

    goto :goto_28
.end method
