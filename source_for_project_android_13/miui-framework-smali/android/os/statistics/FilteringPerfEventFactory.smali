.class public Landroid/os/statistics/FilteringPerfEventFactory;
.super Ljava/lang/Object;
.source "FilteringPerfEventFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createFilteringPerfEvent(IIJJJJJJ)Landroid/os/statistics/FilteringPerfEvent;
    .registers 30
    .param p0, "eventType"    # I
    .param p1, "eventFlags"    # I
    .param p2, "beginUptimeMillis"    # J
    .param p4, "endUptimeMillis"    # J
    .param p6, "inclusionId"    # J
    .param p8, "synchronizationId"    # J
    .param p10, "eventSeq"    # J
    .param p12, "detailsPtr"    # J

    .line 10
    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    invoke-static {}, Landroid/os/statistics/FilteringPerfEventCache;->obtain()Landroid/os/statistics/FilteringPerfEvent;

    move-result-object v4

    .line 11
    .local v4, "filteringPerfEvent":Landroid/os/statistics/FilteringPerfEvent;
    move/from16 v5, p0

    iput v5, v4, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    .line 12
    move/from16 v6, p1

    iput v6, v4, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    .line 13
    iput-wide v0, v4, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    .line 14
    iput-wide v2, v4, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    .line 15
    move-wide/from16 v7, p6

    iput-wide v7, v4, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    .line 16
    move-wide/from16 v9, p8

    iput-wide v9, v4, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    .line 17
    move-wide/from16 v11, p10

    iput-wide v11, v4, Landroid/os/statistics/FilteringPerfEvent;->eventSeq:J

    .line 18
    move-wide/from16 v13, p12

    iput-wide v13, v4, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    .line 19
    const/4 v15, 0x0

    iput-object v15, v4, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    .line 20
    sub-long v5, v2, v0

    long-to-int v5, v5

    iput v5, v4, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    .line 21
    return-object v4
.end method

.method public static blacklist createFilteringPerfEvent(Landroid/os/statistics/PerfEvent;)Landroid/os/statistics/FilteringPerfEvent;
    .registers 2
    .param p0, "event"    # Landroid/os/statistics/PerfEvent;

    .line 25
    invoke-static {}, Landroid/os/statistics/FilteringPerfEventCache;->obtain()Landroid/os/statistics/FilteringPerfEvent;

    move-result-object v0

    .line 26
    .local v0, "filteringPerfEvent":Landroid/os/statistics/FilteringPerfEvent;
    invoke-virtual {v0, p0}, Landroid/os/statistics/FilteringPerfEvent;->set(Landroid/os/statistics/PerfEvent;)V

    .line 27
    return-object v0
.end method
