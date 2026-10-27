.class public final Landroid/os/statistics/FilteringPerfEvent;
.super Landroid/os/statistics/FilteringPerfEventListNode;
.source "FilteringPerfEvent.java"


# instance fields
.field public blacklist beginUptimeMillis:J

.field public blacklist detailsPtr:J

.field public blacklist durationMillis:I

.field public blacklist endUptimeMillis:J

.field blacklist enoughPeerWaitDuration:I

.field public blacklist event:Landroid/os/statistics/PerfEvent;

.field public blacklist eventFlags:I

.field public blacklist eventSeq:J

.field public blacklist eventType:I

.field public blacklist inclusionId:J

.field volatile blacklist matchedPeerWaitDuration:I

.field blacklist sortingUptimeMillis:J

.field public blacklist synchronizationId:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroid/os/statistics/FilteringPerfEventListNode;-><init>()V

    .line 25
    iput-object p0, p0, Landroid/os/statistics/FilteringPerfEvent;->value:Landroid/os/statistics/FilteringPerfEvent;

    .line 26
    return-void
.end method

.method private static native blacklist nativeDipose(JI)V
.end method

.method private static native blacklist nativeResolve(Landroid/os/statistics/PerfEvent;JILandroid/os/Parcel;J)V
.end method

.method private static native blacklist nativeWriteToParcel(Landroid/os/Parcel;JIIJJJJJJ)V
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 6

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    .line 80
    iget-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    .line 81
    iget v4, p0, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    invoke-static {v0, v1, v4}, Landroid/os/statistics/FilteringPerfEvent;->nativeDipose(JI)V

    .line 82
    iput-wide v2, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    .line 84
    :cond_12
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Landroid/os/statistics/FilteringPerfEvent;->dispose()V

    .line 31
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 32
    return-void
.end method

.method public blacklist resolve(Landroid/os/Parcel;J)V
    .registers 15
    .param p1, "tempParcel"    # Landroid/os/Parcel;
    .param p2, "tempParcelNativePtr"    # J

    .line 48
    iget-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3b

    .line 50
    iget v0, p0, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    invoke-static {v0}, Landroid/os/statistics/PerfEventFactory;->createPerfEvent(I)Landroid/os/statistics/PerfEvent;

    move-result-object v0

    .line 51
    .local v0, "temp":Landroid/os/statistics/PerfEvent;
    iget v1, p0, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    iput v1, v0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    .line 52
    iget-wide v4, p0, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iput-wide v4, v0, Landroid/os/statistics/PerfEvent;->beginUptimeMillis:J

    .line 53
    iget-wide v4, p0, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iput-wide v4, v0, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    .line 54
    iget-wide v4, p0, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    iput-wide v4, v0, Landroid/os/statistics/PerfEvent;->inclusionId:J

    .line 55
    iget-wide v4, p0, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    iput-wide v4, v0, Landroid/os/statistics/PerfEvent;->synchronizationId:J

    .line 56
    iget-wide v4, p0, Landroid/os/statistics/FilteringPerfEvent;->eventSeq:J

    iput-wide v4, v0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    .line 57
    iget-wide v5, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    iget v7, p0, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    move-object v4, v0

    move-object v8, p1

    move-wide v9, p2

    invoke-static/range {v4 .. v10}, Landroid/os/statistics/FilteringPerfEvent;->nativeResolve(Landroid/os/statistics/PerfEvent;JILandroid/os/Parcel;J)V

    .line 58
    iget-wide v4, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    iget v1, p0, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    invoke-static {v4, v5, v1}, Landroid/os/statistics/FilteringPerfEvent;->nativeDipose(JI)V

    .line 59
    iput-wide v2, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    .line 60
    iput-object v0, p0, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    .line 62
    .end local v0    # "temp":Landroid/os/statistics/PerfEvent;
    :cond_3b
    return-void
.end method

.method public blacklist resolveTo(Landroid/os/statistics/PerfEvent;Landroid/os/Parcel;J)V
    .registers 16
    .param p1, "targetEvent"    # Landroid/os/statistics/PerfEvent;
    .param p2, "tempParcel"    # Landroid/os/Parcel;
    .param p3, "tempParcelNativePtr"    # J

    .line 65
    iget-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_33

    .line 66
    iget v0, p0, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    iput v0, p1, Landroid/os/statistics/PerfEvent;->eventFlags:I

    .line 67
    iget-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iput-wide v0, p1, Landroid/os/statistics/PerfEvent;->beginUptimeMillis:J

    .line 68
    iget-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iput-wide v0, p1, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    .line 69
    iget-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    iput-wide v0, p1, Landroid/os/statistics/PerfEvent;->inclusionId:J

    .line 70
    iget-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    iput-wide v0, p1, Landroid/os/statistics/PerfEvent;->synchronizationId:J

    .line 71
    iget-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->eventSeq:J

    iput-wide v0, p1, Landroid/os/statistics/PerfEvent;->eventSeq:J

    .line 72
    iget-wide v5, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    iget v7, p0, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    move-object v4, p1

    move-object v8, p2

    move-wide v9, p3

    invoke-static/range {v4 .. v10}, Landroid/os/statistics/FilteringPerfEvent;->nativeResolve(Landroid/os/statistics/PerfEvent;JILandroid/os/Parcel;J)V

    .line 73
    iget-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    iget v4, p0, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    invoke-static {v0, v1, v4}, Landroid/os/statistics/FilteringPerfEvent;->nativeDipose(JI)V

    .line 74
    iput-wide v2, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    .line 76
    :cond_33
    return-void
.end method

.method public blacklist set(Landroid/os/statistics/PerfEvent;)V
    .registers 6
    .param p1, "_event"    # Landroid/os/statistics/PerfEvent;

    .line 35
    iget v0, p1, Landroid/os/statistics/PerfEvent;->eventType:I

    iput v0, p0, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    .line 36
    iget v0, p1, Landroid/os/statistics/PerfEvent;->eventFlags:I

    iput v0, p0, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    .line 37
    iget-wide v0, p1, Landroid/os/statistics/PerfEvent;->beginUptimeMillis:J

    iput-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    .line 38
    iget-wide v0, p1, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    iput-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    .line 39
    iget-wide v0, p1, Landroid/os/statistics/PerfEvent;->inclusionId:J

    iput-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    .line 40
    iget-wide v0, p1, Landroid/os/statistics/PerfEvent;->synchronizationId:J

    iput-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    .line 41
    iget-wide v0, p1, Landroid/os/statistics/PerfEvent;->eventSeq:J

    iput-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->eventSeq:J

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    .line 43
    iput-object p1, p0, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    .line 44
    iget-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget-wide v2, p0, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    .line 45
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;J)V
    .registers 25
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "destNativePtr"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 87
    iget v4, v0, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    iget v5, v0, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    iget-wide v6, v0, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iget-wide v8, v0, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget-wide v10, v0, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    iget-wide v12, v0, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    iget-wide v14, v0, Landroid/os/statistics/FilteringPerfEvent;->eventSeq:J

    move-object/from16 v18, v1

    move-wide/from16 v19, v2

    iget-wide v1, v0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    move-wide/from16 v16, v1

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-static/range {v1 .. v17}, Landroid/os/statistics/FilteringPerfEvent;->nativeWriteToParcel(Landroid/os/Parcel;JIIJJJJJJ)V

    .line 88
    return-void
.end method
