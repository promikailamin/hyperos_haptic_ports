.class public Lcom/android/server/am/BroadcastProcessQueue;
.super Ljava/lang/Object;
.source "BroadcastProcessQueue.java"


# instance fields
.field public app:Lcom/android/server/am/ProcessRecord;

.field public final constants:Lcom/android/server/am/BroadcastConstants;

.field public lastProcessState:I

.field public mActive:Lcom/android/server/am/BroadcastRecord;

.field public mActiveAssumedDeliveryCountSinceIdle:I

.field public mActiveCountConsecutiveNormal:I

.field public mActiveCountConsecutiveUrgent:I

.field public mActiveCountSinceIdle:I

.field public mActiveFirstLaunch:Z

.field public mActiveIndex:I

.field public mActiveReEnqueued:Z

.field public mActiveViaColdStart:Z

.field public mActiveWasStopped:Z

.field public mCachedToShortString:Ljava/lang/String;

.field public mCachedToString:Ljava/lang/String;

.field public mCountAlarm:I

.field public mCountDeferred:I

.field public mCountEnqueued:I

.field public mCountForeground:I

.field public mCountForegroundDeferred:I

.field public mCountInstrumented:I

.field public mCountInteractive:I

.field public mCountManifest:I

.field public mCountOrdered:I

.field public mCountPrioritizeEarliestRequests:I

.field public mCountPrioritized:I

.field public mCountPrioritizedDeferred:I

.field public mCountResultTo:I

.field public mForcedDelayedDurationMs:J

.field public mLastDeferredStates:Z

.field public final mOutgoingBroadcasts:Ljava/util/ArrayList;

.field public final mPending:Ljava/util/ArrayDeque;

.field public final mPendingOffload:Ljava/util/ArrayDeque;

.field public final mPendingUrgent:Ljava/util/ArrayDeque;

.field public mProcessFreezable:Z

.field public mProcessInstrumented:Z

.field public mProcessPersistent:Z

.field public mProcessStartInitiatedTimestampMillis:J

.field public mRunnableAt:J

.field public mRunnableAtInvalidated:Z

.field public mRunnableAtReason:I

.field public mTimeoutScheduled:Z

.field public mUidForeground:Z

.field public final processName:Ljava/lang/String;

.field public processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

.field public runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

.field public runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

.field public runningOomAdjusted:Z

.field public runningTraceTrackName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public static synthetic $r8$lambda$7LuENv9AvlpyJsICrtISXBsS3_E(Lcom/android/server/am/BroadcastRecord;I)Z
    .registers 2

    .line 1371
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$7jvfHufVyE3JdVe4Li1zoeZOhgw(Lcom/android/server/am/BroadcastRecord;I)Z
    .registers 2

    .line 1357
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$uTkPoca9PFx_MiK361g77-Nbtxk(Lcom/android/server/am/BroadcastRecord;I)Z
    .registers 2

    .line 1361
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastConstants;Ljava/lang/String;I)V
    .registers 6

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    .line 127
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    .line 134
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    const-wide v0, 0x7fffffffffffffffL

    .line 212
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x0

    .line 213
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    .line 253
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    .line 254
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    .line 255
    iput p3, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    return-void
.end method

.method public static insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;
    .registers 8

    if-nez p0, :cond_3

    return-object p1

    .line 1433
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v2, p0

    :goto_a
    if-eqz v2, :cond_2c

    .line 1437
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-lez v3, :cond_26

    .line 1438
    iput-object v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1439
    iget-object v0, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1441
    iput-object p1, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1443
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_22

    .line 1444
    iput-object p1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    :cond_22
    if-ne v2, p0, :cond_25

    return-object p1

    :cond_25
    return-object p0

    .line 1449
    :cond_26
    iget-object v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_a

    .line 1451
    :cond_2c
    iput-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1452
    iput-object p1, v3, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    return-object p0
.end method

.method public static isQueueEmpty(Ljava/util/ArrayDeque;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 947
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static reasonToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_44

    .line 1218
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1217
    :pswitch_8
    const-string p0, "TOP_PROCESS"

    return-object p0

    .line 1216
    :pswitch_b
    const-string p0, "CORE_UID"

    return-object p0

    .line 1215
    :pswitch_e
    const-string p0, "FOREGROUND"

    return-object p0

    .line 1214
    :pswitch_11
    const-string p0, "CONTAINS_MANIFEST"

    return-object p0

    .line 1213
    :pswitch_14
    const-string p0, "CONTAINS_INSTRUMENTED"

    return-object p0

    .line 1212
    :pswitch_17
    const-string p0, "CONTAINS_RESULT_TO"

    return-object p0

    .line 1211
    :pswitch_1a
    const-string p0, "CONTAINS_INTERACTIVE"

    return-object p0

    .line 1210
    :pswitch_1d
    const-string p0, "CONTAINS_PRIORITIZED"

    return-object p0

    .line 1209
    :pswitch_20
    const-string p0, "CONTAINS_ALARM"

    return-object p0

    .line 1208
    :pswitch_23
    const-string p0, "CONTAINS_ORDERED"

    return-object p0

    .line 1207
    :pswitch_26
    const-string p0, "CONTAINS_FOREGROUND"

    return-object p0

    .line 1206
    :pswitch_29
    const-string p0, "INFINITE_DEFER"

    return-object p0

    .line 1205
    :pswitch_2c
    const-string p0, "FORCE_DELAYED"

    return-object p0

    .line 1204
    :pswitch_2f
    const-string p0, "PERSISTENT"

    return-object p0

    .line 1203
    :pswitch_32
    const-string p0, "INSTRUMENTED"

    return-object p0

    .line 1202
    :pswitch_35
    const-string p0, "BLOCKED"

    return-object p0

    .line 1201
    :pswitch_38
    const-string p0, "MAX_PENDING"

    return-object p0

    .line 1200
    :pswitch_3b
    const-string p0, "NORMAL"

    return-object p0

    .line 1199
    :pswitch_3e
    const-string p0, "CACHED"

    return-object p0

    .line 1198
    :pswitch_41
    const-string p0, "EMPTY"

    return-object p0

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_3
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;
    .registers 4

    if-ne p0, p1, :cond_4

    .line 1467
    iget-object p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1469
    :cond_4
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_c

    .line 1470
    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1472
    :cond_c
    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v1, :cond_12

    .line 1473
    iput-object v0, v1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    :cond_12
    const/4 v0, 0x0

    .line 1475
    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1476
    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    return-object p0
.end method


# virtual methods
.method public addPrioritizeEarliestRequest()Z
    .registers 3

    .line 962
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    const/4 v1, 0x1

    if-nez v0, :cond_c

    add-int/2addr v0, v1

    .line 963
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    .line 964
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    return v1

    :cond_c
    add-int/2addr v0, v1

    .line 967
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    const/4 p0, 0x0

    return p0
.end method

.method public assertHealthLocked()V
    .registers 3

    .line 1391
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1392
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "mRunnableAtInvalidated"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1395
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    .line 1396
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    .line 1397
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    return-void
.end method

.method public final assertHealthLocked(Ljava/util/ArrayDeque;)V
    .registers 7

    .line 1401
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_46

    .line 1403
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1404
    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 1405
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1406
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 1407
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1409
    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1410
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastRecord;->isDeferUntilActive()Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_b

    .line 1414
    :cond_2e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x927c0

    cmp-long p1, v1, v3

    if-gez p1, :cond_3e

    const/4 p1, 0x1

    goto :goto_3f

    :cond_3e
    const/4 p1, 0x0

    .line 1415
    :goto_3f
    const-string/jumbo v0, "waitingTime"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    goto :goto_b

    :cond_46
    :goto_46
    return-void
.end method

.method public clearDeferredStates(Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)V
    .registers 4

    .line 1368
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 1369
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    .line 1370
    new-instance v1, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    :cond_f
    return-void
.end method

.method public clearOutgoingBroadcasts()V
    .registers 1

    .line 284
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearProcessStartInitiatedTimestampMillis()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 689
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    return-void
.end method

.method public describeStateLocked()Ljava/lang/String;
    .registers 3

    .line 1513
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->describeStateLocked(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public describeStateLocked(J)Ljava/lang/String;
    .registers 6

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1518
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1519
    const-string/jumbo v1, "runnable at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/lang/StringBuilder;)V

    goto :goto_1f

    .line 1522
    :cond_19
    const-string/jumbo p1, "not runnable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    :goto_1f
    const-string p1, " because "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    invoke-static {p0}, Lcom/android/server/am/BroadcastProcessQueue;->reasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final dumpBroadcastCounts(Landroid/util/IndentingPrintWriter;)V
    .registers 3
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1602
    const-string v0, "e:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1603
    const-string v0, " d:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1604
    const-string v0, " f:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1605
    const-string v0, " fd:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1606
    const-string v0, " o:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1607
    const-string v0, " a:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1608
    const-string v0, " p:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1609
    const-string v0, " pd:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1610
    const-string v0, " int:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1611
    const-string v0, " rt:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1612
    const-string v0, " ins:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1613
    const-string v0, " m:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1615
    const-string v0, " csi:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1616
    const-string v0, " adcsi:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1617
    const-string v0, " ccu:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1618
    const-string v0, " ccn:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1619
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public dumpLocked(JLandroid/util/IndentingPrintWriter;)V
    .registers 12
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1531
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isOutgoingEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    .line 1533
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1534
    const-string v1, " "

    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1535
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/BroadcastProcessQueue;->describeStateLocked(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1536
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1538
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1539
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastProcessQueue;->dumpProcessState(Landroid/util/IndentingPrintWriter;)V

    .line 1540
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastProcessQueue;->dumpBroadcastCounts(Landroid/util/IndentingPrintWriter;)V

    .line 1542
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    const/4 v1, 0x0

    .line 1543
    :goto_39
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 1544
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/am/BroadcastProcessQueue;->dumpOutgoingRecord(JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 1548
    :cond_4f
    iget-object v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-eqz v5, :cond_5d

    .line 1549
    const-string v1, "ACTIVE"

    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    .line 1551
    :cond_5d
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_63
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1552
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    .line 1553
    const-string v2, "URGENT"

    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object v0, p0

    move-object v4, p3

    move-object v1, v2

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_63

    .line 1555
    :cond_80
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_86
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1556
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    const/4 v2, 0x0

    .line 1557
    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object v0, p0

    move-object v4, p3

    move-object v1, v2

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_86

    .line 1559
    :cond_a2
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1560
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    .line 1561
    const-string v2, "OFFLOAD"

    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object v0, p0

    move-object v4, p3

    move-object v1, v2

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_a8

    .line 1563
    :cond_c5
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1564
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public final dumpOutgoingRecord(JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;)V
    .registers 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1625
    const-string p0, "OUTGOING "

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1626
    iget-wide v0, p4, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const/16 p0, 0x20

    .line 1627
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 1628
    invoke-virtual {p4}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpProcessState(Landroid/util/IndentingPrintWriter;)V
    .registers 6
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1570
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    if-eqz v1, :cond_e

    .line 1571
    const-string v1, "FG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    :cond_e
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    const-string/jumbo v2, "|"

    if-eqz v1, :cond_23

    .line 1574
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    :cond_1e
    const-string v1, "FRZ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    :cond_23
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    if-eqz v1, :cond_35

    .line 1578
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    :cond_30
    const-string v1, "INSTR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    :cond_35
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    if-eqz v1, :cond_47

    .line 1582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_42

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    :cond_42
    const-string v1, "PER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_56

    .line 1586
    const-string/jumbo v1, "state:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1588
    :cond_56
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    if-eqz v0, :cond_65

    .line 1589
    const-string/jumbo v0, "runningOomAdjusted:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1591
    :cond_65
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    if-eqz v0, :cond_73

    .line 1592
    const-string v0, "activeReEnqueued:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1594
    :cond_73
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8a

    .line 1595
    const-string/jumbo v0, "processStartInitiatedTimestamp:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    .line 1596
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object p0

    .line 1595
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_8a
    return-void
.end method

.method public final dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V
    .registers 9
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1634
    iget-wide v0, p5, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    invoke-static {v0, v1, p2, p3, p4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const/16 p0, 0x20

    .line 1635
    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 1636
    invoke-virtual {p5}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1637
    const-string v0, "    "

    invoke-virtual {p4, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1638
    iget-object v0, p5, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v0, v0, p6

    .line 1639
    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 1641
    const-string v0, " at "

    invoke-virtual {p4, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1642
    iget-object v0, p5, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v0, v0, p6

    invoke-static {v0, v1, p2, p3, p4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :cond_30
    if-eqz p1, :cond_38

    .line 1645
    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 1646
    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1648
    :cond_38
    iget-object p0, p5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p0, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 1649
    instance-of p1, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz p1, :cond_55

    .line 1650
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    .line 1651
    const-string p1, " for registered "

    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1652
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_63

    .line 1654
    :cond_55
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 1655
    const-string p1, " for manifest "

    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1656
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1658
    :goto_63
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1659
    iget-object p0, p5, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    aget p0, p0, p6

    const/4 p1, -0x1

    if-eq p0, p1, :cond_8d

    .line 1661
    const-string p1, "    blocked until "

    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1662
    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1663
    const-string p0, ", currently at "

    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1664
    iget p0, p5, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1665
    const-string p0, " of "

    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1666
    iget-object p0, p5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->println(I)V

    :cond_8d
    return-void
.end method

.method public enqueueOrReplaceBroadcast(Lcom/android/server/am/BroadcastRecord;ILcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)Lcom/android/server/am/BroadcastRecord;
    .registers 6

    .line 309
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isReplacePending()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 310
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupPolicy()I

    move-result v0

    if-nez v0, :cond_26

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;->replaceBroadcast(Lcom/android/server/am/BroadcastRecord;I)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 313
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->shouldBeDeferred()Z

    move-result p0

    if-eqz p0, :cond_25

    .line 314
    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    if-nez p0, :cond_25

    .line 316
    invoke-interface {p3, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    :cond_25
    return-object v0

    .line 324
    :cond_26
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 325
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 326
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 337
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->shouldBeDeferred()Z

    move-result p0

    if-eqz p0, :cond_4b

    .line 338
    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    if-nez p0, :cond_4b

    .line 339
    invoke-interface {p3, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    :cond_4b
    const/4 p0, 0x0

    return-object p0
.end method

.method public enqueueOutgoingBroadcasts(Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;)V
    .registers 4

    const/4 v0, 0x0

    .line 277
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 278
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    invoke-interface {p1, v1}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;->accept(Lcom/android/server/am/BroadcastRecord;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 280
    :cond_17
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z
    .registers 6

    .line 465
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v0

    .line 467
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 469
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z
    .registers 10

    .line 479
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 480
    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 481
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 482
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 483
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 484
    invoke-interface {p2, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;->test(Lcom/android/server/am/BroadcastRecord;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 485
    invoke-interface {p3, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    if-eqz p4, :cond_2c

    .line 487
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 488
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 489
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_2f

    .line 493
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    :goto_2f
    const/4 v0, 0x1

    goto :goto_5

    :cond_31
    return v0
.end method

.method public forceDelayBroadcastDelivery(J)Z
    .registers 5

    .line 877
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_d

    .line 878
    iput-wide p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    .line 879
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public getActive()Lcom/android/server/am/BroadcastRecord;
    .registers 2

    .line 846
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p0, v0

    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    return-object v0
.end method

.method public getActiveAssumedDeliveryCountSinceIdle()I
    .registers 1

    .line 631
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    return p0
.end method

.method public getActiveCountSinceIdle()I
    .registers 1

    .line 623
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    return p0
.end method

.method public getActiveFirstLaunch()Z
    .registers 1

    .line 655
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveFirstLaunch:Z

    return p0
.end method

.method public getActiveIndex()I
    .registers 3

    .line 854
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 855
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    return p0
.end method

.method public getActiveViaColdStart()Z
    .registers 1

    .line 647
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    return p0
.end method

.method public getActiveWasStopped()Z
    .registers 1

    .line 651
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 697
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPreferredSchedulingGroupLocked()I
    .registers 4

    .line 604
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_9

    const/high16 p0, -0x80000000

    return p0

    .line 606
    :cond_9
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    const/4 v2, 0x2

    if-le v0, v1, :cond_11

    return v2

    .line 610
    :cond_11
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result p0

    if-eqz p0, :cond_1c

    return v2

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public getProcessStartInitiatedTimestampMillis()J
    .registers 3

    .line 664
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    return-wide v0
.end method

.method public final getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;
    .registers 3

    .line 259
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isUrgent()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 260
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    return-object p0

    .line 261
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isOffload()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 262
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    return-object p0

    .line 264
    :cond_12
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method public getRunnableAt()J
    .registers 3

    .line 1133
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1134
    :cond_7
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    return-wide v0
.end method

.method public getRunnableAtReason()I
    .registers 2

    .line 1142
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1143
    :cond_7
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    return p0
.end method

.method public hasProcessStartInitiationTimedout()Z
    .registers 7

    .line 668
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_a

    return v1

    .line 671
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    sub-long/2addr v2, v4

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v4, p0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_ABANDON_TIMEOUT_MILLIS:J

    cmp-long p0, v2, v4

    if-lez p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v1
.end method

.method public invalidateRunnableAt()V
    .registers 2

    const/4 v0, 0x1

    .line 1147
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    return-void
.end method

.method public isActive()Z
    .registers 1

    .line 867
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isBeyondBarrierLocked(J)Z
    .registers 11

    .line 1056
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1057
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1058
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1061
    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_27

    iget-wide v6, v3, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v3, v6, p1

    if-lez v3, :cond_25

    goto :goto_27

    :cond_25
    move v3, v5

    goto :goto_28

    :cond_27
    :goto_27
    move v3, v4

    :goto_28
    if-eqz v0, :cond_37

    .line 1063
    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v0, v6, p1

    if-lez v0, :cond_35

    goto :goto_37

    :cond_35
    move v0, v5

    goto :goto_38

    :cond_37
    :goto_37
    move v0, v4

    :goto_38
    if-eqz v1, :cond_47

    .line 1065
    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iget-wide v6, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v1, v6, p1

    if-lez v1, :cond_45

    goto :goto_47

    :cond_45
    move v1, v5

    goto :goto_48

    :cond_47
    :goto_47
    move v1, v4

    :goto_48
    if-eqz v2, :cond_57

    .line 1067
    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget-wide v6, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long p1, v6, p1

    if-lez p1, :cond_55

    goto :goto_57

    :cond_55
    move p1, v5

    goto :goto_58

    :cond_57
    :goto_57
    move p1, v4

    :goto_58
    if-eqz v3, :cond_60

    if-eqz v0, :cond_60

    if-eqz v1, :cond_60

    if-nez p1, :cond_66

    .line 1071
    :cond_60
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDeferredUntilActive()Z

    move-result p0

    if-eqz p0, :cond_67

    :cond_66
    return v4

    :cond_67
    return v5
.end method

.method public isDeferredUntilActive()Z
    .registers 2

    .line 1115
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1116
    :cond_7
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public isDispatched(Landroid/content/Intent;)Z
    .registers 8

    .line 1079
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1080
    invoke-virtual {p1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v2

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v1

    .line 1081
    :goto_12
    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v3, p1}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    move-result v3

    .line 1082
    iget-object v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    move-result v4

    .line 1083
    iget-object v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v5, p1}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    move-result p1

    if-eqz v0, :cond_2c

    if-eqz v3, :cond_2c

    if-eqz v4, :cond_2c

    if-nez p1, :cond_32

    .line 1086
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDeferredUntilActive()Z

    move-result p0

    if-eqz p0, :cond_33

    :cond_32
    return v1

    :cond_33
    return v2
.end method

.method public final isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z
    .registers 4

    .line 1095
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1096
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_22

    .line 1097
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    if-nez p1, :cond_14

    return v0

    .line 1101
    :cond_14
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/BroadcastRecord;

    .line 1102
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_22
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 863
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public isIdle()Z
    .registers 2

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDeferredUntilActive()Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public isOutgoingEmpty()Z
    .registers 1

    .line 859
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isPendingManifest()Z
    .registers 1

    .line 1016
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isPendingOrdered()Z
    .registers 1

    .line 1024
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isPendingResultTo()Z
    .registers 1

    .line 1032
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isPendingUrgent()Z
    .registers 1

    .line 1039
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->peekNextBroadcastRecord()Lcom/android/server/am/BroadcastRecord;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->isUrgent()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isProcessStartInitiationTimeoutExpected()Z
    .registers 9

    .line 681
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_a

    return v1

    .line 684
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    sub-long/2addr v2, v4

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v4, p0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_ABANDON_TIMEOUT_MILLIS:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    cmp-long p0, v2, v4

    if-lez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1
.end method

.method public isProcessWarm()Z
    .registers 2

    .line 600
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getOnewayThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public isRunnable()Z
    .registers 5

    .line 1110
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1111
    :cond_7
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public makeActiveIdle()V
    .registers 2

    const/4 v0, 0x0

    .line 722
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    const/4 v0, 0x0

    .line 723
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    .line 724
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    .line 725
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    .line 726
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    .line 727
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    .line 728
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    return-void
.end method

.method public makeActiveNextPending()V
    .registers 7

    .line 705
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->removeNextBroadcast()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 706
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iput-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 707
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    .line 708
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_16

    move v3, v5

    goto :goto_17

    :cond_16
    move v3, v4

    :goto_17
    iput-boolean v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    .line 709
    iget v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    .line 710
    iget v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    .line 711
    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastRecord;->isAssumedDelivered(I)Z

    move-result v1

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    .line 712
    iput-boolean v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    .line 713
    iput-boolean v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    .line 714
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 715
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public final onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V
    .registers 4

    .line 780
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    .line 781
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_10

    .line 782
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    .line 784
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 785
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_20

    .line 786
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    .line 788
    :cond_20
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    .line 790
    :cond_26
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v0, :cond_30

    .line 791
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    .line 793
    :cond_30
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v0, :cond_3a

    .line 794
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    .line 796
    :cond_3a
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v0, :cond_4e

    .line 797
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_48

    .line 798
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    .line 800
    :cond_48
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    .line 802
    :cond_4e
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v0, :cond_58

    .line 803
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    .line 805
    :cond_58
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_62

    .line 806
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    .line 808
    :cond_62
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    if-eqz v0, :cond_6c

    .line 809
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    .line 811
    :cond_6c
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_7c

    .line 812
    iget p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    .line 814
    :cond_7c
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    return-void
.end method

.method public final onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V
    .registers 4

    .line 739
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    .line 740
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_10

    .line 741
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    .line 743
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 744
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_20

    .line 745
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    .line 747
    :cond_20
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    .line 749
    :cond_26
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v0, :cond_30

    .line 750
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    .line 752
    :cond_30
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v0, :cond_3a

    .line 753
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    .line 755
    :cond_3a
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v0, :cond_4e

    .line 756
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_48

    .line 757
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    .line 759
    :cond_48
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    .line 761
    :cond_4e
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v0, :cond_58

    .line 762
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    .line 764
    :cond_58
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_62

    .line 765
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    .line 767
    :cond_62
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    if-eqz v0, :cond_6c

    .line 768
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    .line 770
    :cond_6c
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_7c

    .line 771
    iget p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    .line 773
    :cond_7c
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    return-void
.end method

.method public peekNextBroadcast()Lcom/android/internal/os/SomeArgs;
    .registers 2

    .line 1001
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    move-result-object p0

    .line 1002
    invoke-static {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public peekNextBroadcastRecord()Lcom/android/server/am/BroadcastRecord;
    .registers 2

    .line 1007
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    move-result-object p0

    .line 1008
    invoke-static {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    iget-object p0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public queueForNextBroadcast()Ljava/util/ArrayDeque;
    .registers 5

    .line 905
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    iget v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget v3, v3, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;

    move-result-object v0

    .line 908
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    iget v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget v3, v3, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_URGENT_DISPATCHES:I

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;

    move-result-object p0

    return-object p0
.end method

.method public final queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;
    .registers 9

    .line 920
    invoke-static {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p2

    .line 924
    :cond_7
    invoke-static {p2}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p1

    .line 934
    :cond_e
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 935
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 936
    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 937
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 938
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    if-gtz p0, :cond_2a

    if-lt p3, p4, :cond_39

    .line 940
    :cond_2a
    iget-wide p3, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iget-wide v2, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long p0, p3, v2

    if-gtz p0, :cond_39

    .line 942
    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastRecord;->isBlocked(I)Z

    move-result p0

    if-nez p0, :cond_39

    return-object p2

    :cond_39
    return-object p1
.end method

.method public reEnqueueActiveBroadcast()V
    .registers 5

    .line 353
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 354
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v1

    .line 356
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 357
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 358
    iput v1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v3, 0x1

    .line 359
    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 360
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 361
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public final removeNextBroadcast()Lcom/android/internal/os/SomeArgs;
    .registers 4

    .line 891
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    move-result-object v0

    .line 892
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    if-ne v0, v1, :cond_f

    .line 893
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    goto :goto_25

    .line 894
    :cond_f
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1d

    .line 895
    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    .line 896
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    goto :goto_25

    .line 897
    :cond_1d
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    if-ne v0, v1, :cond_25

    .line 898
    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    .line 899
    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    .line 901
    :cond_25
    :goto_25
    invoke-static {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result p0

    if-nez p0, :cond_32

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    return-object p0

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public removePrioritizeEarliestRequest()Z
    .registers 3

    .line 985
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    if-nez v0, :cond_c

    .line 987
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    return v1

    :cond_c
    const/4 v1, 0x0

    if-gez v0, :cond_11

    .line 990
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    :cond_11
    return v1
.end method

.method public final replaceBroadcast(Lcom/android/server/am/BroadcastRecord;I)Lcom/android/server/am/BroadcastRecord;
    .registers 4

    .line 375
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    move-result-object v0

    .line 376
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;->replaceBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastRecord;I)Lcom/android/server/am/BroadcastRecord;

    move-result-object p0

    return-object p0
.end method

.method public final replaceBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastRecord;I)Lcom/android/server/am/BroadcastRecord;
    .registers 11

    .line 391
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 392
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 393
    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 394
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 395
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 396
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 397
    iget-object v4, v2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne p2, v2, :cond_25

    goto :goto_5b

    .line 404
    :cond_25
    iget v5, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v6, v2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-ne v5, v6, :cond_a

    iget v5, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v6, v2, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v5, v6, :cond_a

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v6, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 406
    invoke-virtual {v5, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 407
    invoke-static {v0, v4}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 408
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->allReceiversPending()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 409
    invoke-virtual {p2, v2}, Lcom/android/server/am/BroadcastRecord;->isMatchingRecord(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 411
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 412
    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 413
    invoke-virtual {p2, v2}, Lcom/android/server/am/BroadcastRecord;->copyEnqueueTimeFrom(Lcom/android/server/am/BroadcastRecord;)V

    .line 414
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 415
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    return-object v2

    :cond_5b
    :goto_5b
    const/4 p0, 0x0

    return-object p0
.end method

.method public setActiveFirstLaunch(Z)V
    .registers 2

    .line 643
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveFirstLaunch:Z

    return-void
.end method

.method public setActiveViaColdStart(Z)V
    .registers 2

    .line 635
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    return-void
.end method

.method public setActiveWasStopped(Z)V
    .registers 2

    .line 639
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    return-void
.end method

.method public setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z
    .registers 5

    .line 513
    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v0, 0x0

    .line 516
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    .line 517
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    .line 521
    invoke-virtual {p0, p2}, Lcom/android/server/am/BroadcastProcessQueue;->setUidForeground(Z)Z

    move-result p2

    .line 522
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessFreezable(Z)Z

    move-result p3

    or-int/2addr p2, p3

    .line 523
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object p3

    if-eqz p3, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessInstrumented(Z)Z

    move-result p3

    or-int/2addr p2, p3

    .line 524
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessPersistent(Z)Z

    move-result p0

    or-int/2addr p0, p2

    return p0

    .line 526
    :cond_29
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->setUidForeground(Z)Z

    move-result p1

    .line 527
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessFreezable(Z)Z

    move-result p2

    or-int/2addr p1, p2

    .line 528
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessInstrumented(Z)Z

    move-result p2

    or-int/2addr p1, p2

    .line 529
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessPersistent(Z)Z

    move-result p0

    or-int/2addr p0, p1

    return p0
.end method

.method public final setProcessFreezable(Z)Z
    .registers 3

    .line 556
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    if-eq v0, p1, :cond_b

    .line 557
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    .line 558
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public final setProcessInstrumented(Z)Z
    .registers 3

    .line 572
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    if-eq v0, p1, :cond_b

    .line 573
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    .line 574
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public final setProcessPersistent(Z)Z
    .registers 3

    .line 587
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    if-eq v0, p1, :cond_b

    .line 588
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    .line 589
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public setProcessStartInitiatedTimestampMillis(J)V
    .registers 3

    .line 659
    iput-wide p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    return-void
.end method

.method public setTimeoutScheduled(Z)V
    .registers 2

    .line 1485
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mTimeoutScheduled:Z

    return-void
.end method

.method public final setUidForeground(Z)Z
    .registers 3

    .line 541
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    if-eq v0, p1, :cond_b

    .line 542
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    .line 543
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public shouldBeDeferred()Z
    .registers 3

    .line 1378
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1379
    :cond_7
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/16 v1, 0x8

    if-ne p0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    return v0
.end method

.method public timeoutScheduled()Z
    .registers 1

    .line 1492
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mTimeoutScheduled:Z

    return p0
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 1504
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    if-nez v0, :cond_49

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_28

    :cond_26
    const-string v1, "?"

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 1507
    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    .line 1509
    :cond_49
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1497
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastProcessQueue{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    .line 1500
    :cond_21
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    return-object p0
.end method

.method public traceActiveBegin()V
    .registers 5

    .line 833
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 834
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scheduled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const-wide/16 v2, 0x40

    .line 833
    invoke-static {v2, v3, v0, v1, p0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public traceActiveEnd()V
    .registers 4

    .line 838
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 839
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const-wide/16 v1, 0x40

    .line 838
    invoke-static {v1, v2, v0, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public traceProcessEnd()V
    .registers 4

    .line 828
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 829
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const-wide/16 v1, 0x40

    .line 828
    invoke-static {v1, v2, v0, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public traceProcessRunningBegin()V
    .registers 5

    .line 823
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const-wide/16 v2, 0x40

    .line 823
    invoke-static {v2, v3, v0, v1, p0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public traceProcessStartingBegin()V
    .registers 5

    .line 818
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 819
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " starting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const-wide/16 v2, 0x40

    .line 818
    invoke-static {v2, v3, v0, v1, p0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateDeferredStates(Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)V
    .registers 5

    .line 1351
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->shouldBeDeferred()Z

    move-result v0

    .line 1353
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eq v1, v0, :cond_1e

    .line 1354
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 1356
    new-instance p2, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    return-void

    .line 1360
    :cond_16
    new-instance p1, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    :cond_1e
    return-void
.end method

.method public updateRunnableAt()V
    .registers 12

    .line 1226
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-nez v0, :cond_6

    goto/16 :goto_17c

    :cond_6
    const/4 v0, 0x0

    .line 1227
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 1229
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->peekNextBroadcast()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    if-eqz v1, :cond_17d

    .line 1231
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 1232
    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1233
    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 1235
    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastRecord;->isBlocked(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1236
    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x4

    .line 1237
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    return-void

    .line 1241
    :cond_28
    iget-wide v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_38

    add-long/2addr v6, v4

    .line 1242
    iput-wide v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x7

    .line 1243
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_157

    .line 1244
    :cond_38
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    const/16 v7, 0xa

    if-le v1, v6, :cond_4b

    .line 1245
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1246
    iput v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_157

    .line 1247
    :cond_4b
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    if-lez v1, :cond_5c

    .line 1248
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0xe

    .line 1249
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_157

    .line 1250
    :cond_5c
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    if-lez v1, :cond_6d

    .line 1251
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x10

    .line 1252
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_157

    .line 1253
    :cond_6d
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    if-eqz v1, :cond_7d

    .line 1254
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x5

    .line 1255
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_157

    .line 1256
    :cond_7d
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    if-eqz v1, :cond_8e

    .line 1257
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x12

    .line 1258
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_157

    .line 1259
    :cond_8e
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x2

    if-eqz v1, :cond_a6

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v1

    if-ne v1, v6, :cond_a6

    .line 1262
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x14

    .line 1263
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_157

    .line 1264
    :cond_a6
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    if-eqz v1, :cond_b6

    .line 1265
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_PERSISTENT_PROC_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x6

    .line 1266
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_157

    .line 1267
    :cond_b6
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    if-lez v1, :cond_c2

    .line 1268
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0xb

    .line 1269
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_157

    .line 1270
    :cond_c2
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    if-lez v1, :cond_ce

    .line 1271
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0xc

    .line 1272
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_157

    .line 1273
    :cond_ce
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    iget v8, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    const/16 v9, 0xd

    if-le v1, v8, :cond_dc

    .line 1274
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1275
    iput v9, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_157

    .line 1276
    :cond_dc
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    if-lez v1, :cond_e8

    .line 1277
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x11

    .line 1278
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_157

    .line 1279
    :cond_e8
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    const/16 v8, 0xf

    if-eqz v1, :cond_136

    .line 1280
    iget-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    const/4 v6, 0x1

    if-eqz v1, :cond_12c

    .line 1282
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    iget v10, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    if-ne v1, v10, :cond_100

    .line 1283
    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x8

    .line 1284
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_157

    .line 1289
    :cond_100
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_110

    .line 1290
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1291
    iput v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_157

    .line 1292
    :cond_110
    iget-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v1, :cond_119

    .line 1293
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1294
    iput v9, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_157

    .line 1295
    :cond_119
    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_122

    .line 1296
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1297
    iput v8, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_157

    .line 1299
    :cond_122
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1300
    iput v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_157

    .line 1305
    :cond_12c
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1306
    iput v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_157

    .line 1308
    :cond_136
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    if-lez v0, :cond_13f

    .line 1311
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1312
    iput v8, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_157

    .line 1313
    :cond_13f
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 1314
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x13

    .line 1315
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_157

    .line 1317
    :cond_14e
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_NORMAL_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1318
    iput v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 1323
    :goto_157
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    .line 1324
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget v1, v1, Lcom/android/server/am/BroadcastConstants;->MAX_PENDING_BROADCASTS:I

    if-lt v0, v1, :cond_17c

    .line 1325
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x3

    .line 1326
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    :cond_17c
    :goto_17c
    return-void

    .line 1338
    :cond_17d
    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1339
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    return-void
.end method

.method public wasActiveBroadcastReEnqueued()Z
    .registers 1

    .line 732
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    return p0
.end method
