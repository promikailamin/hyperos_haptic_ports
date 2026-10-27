.class public final Lcom/android/server/inputmethod/ImeTrackerService;
.super Lcom/android/internal/inputmethod/IImeTracker$Stub;
.source "ImeTrackerService.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

.field public final mLock:Ljava/lang/Object;

.field public final mMetricsRecorder:Lcom/android/server/inputmethod/ImeTrackerService$MetricsRecorder;

.field public final mPendingRequestsListeners:Ljava/util/ArrayList;

.field public final mTimeoutMs:J


# direct methods
.method public static synthetic $r8$lambda$F6SD85YWf23pLaLqOBIu1EfAR64(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V
    .registers 11

    .line 104
    iget v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mUid:I

    invoke-static {p0}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmDuration(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)J

    move-result-wide v2

    iget v4, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mType:I

    iget v5, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStatus:I

    iget v6, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mReason:I

    iget v7, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mOrigin:I

    iget v8, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    iget-boolean v9, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mFromUser:Z

    const/16 v0, 0x245

    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJIIIIIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$eOOt5eUCs1ZW7l7gk0PjPRkYftA(Lcom/android/server/inputmethod/ImeTrackerService;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeTrackerService;->lambda$waitUntilNoPendingRequests$1(Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x4pxJopf79h3LdCZqlMY9-JYhgI(Lcom/android/server/inputmethod/ImeTrackerService;JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/ImeTrackerService;->lambda$registerTimeout$2(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 8

    .line 104
    new-instance v1, Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-direct {v1}, Lcom/android/server/inputmethod/ImeTrackerService$History;-><init>()V

    new-instance v5, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda1;-><init>()V

    const-wide/16 v3, 0x2710

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/ImeTrackerService;-><init>(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/os/Handler;JLcom/android/server/inputmethod/ImeTrackerService$MetricsRecorder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/os/Handler;JLcom/android/server/inputmethod/ImeTrackerService$MetricsRecorder;)V
    .registers 7

    .line 112
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mPendingRequestsListeners:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    .line 113
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    .line 114
    iput-object p2, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHandler:Landroid/os/Handler;

    .line 115
    iput-wide p3, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mTimeoutMs:J

    .line 116
    iput-object p5, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mMetricsRecorder:Lcom/android/server/inputmethod/ImeTrackerService$MetricsRecorder;

    return-void
.end method

.method public static varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 2

    .line 419
    invoke-static {p0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 420
    const-string p1, "ImeTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final complete(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V
    .registers 8

    .line 387
    invoke-static {p3}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmFinishTimestampMs(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)J

    move-result-wide v0

    invoke-static {p3}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmStartTimestampMs(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p3, v0, v1}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fputmDuration(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;J)V

    .line 388
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 389
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/inputmethod/ImeTrackerService$History;->complete(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    .line 390
    iget-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mMetricsRecorder:Lcom/android/server/inputmethod/ImeTrackerService$MetricsRecorder;

    invoke-interface {p1, p3}, Lcom/android/server/inputmethod/ImeTrackerService$MetricsRecorder;->record(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    .line 391
    iget-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mPendingRequestsListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_51

    iget-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-static {p1}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$fgetmActiveEntries(Lcom/android/server/inputmethod/ImeTrackerService$History;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_51

    const/4 p1, 0x0

    .line 392
    :goto_30
    iget-object p2, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mPendingRequestsListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4c

    .line 393
    iget-object p2, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mPendingRequestsListeners:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/infra/AndroidFuture;

    const/4 p3, 0x0

    .line 394
    invoke-virtual {p2, p3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 395
    iget-object p3, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_30

    .line 397
    :cond_4c
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mPendingRequestsListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_51
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 342
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 344
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public finishTrackingPendingRequests(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3

    .line 367
    invoke-super {p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->finishTrackingPendingRequests_enforcePermission()V

    .line 369
    :try_start_3
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_15

    .line 370
    :try_start_6
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/ImeTrackerService$History;->activeEntries()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 371
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_17

    const/4 p0, 0x0

    .line 372
    :try_start_11
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception p0

    goto :goto_1a

    :catchall_17
    move-exception p0

    .line 371
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    :try_start_19
    throw p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_15

    .line 374
    :goto_1a
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final synthetic lambda$registerTimeout$2(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V
    .registers 4

    .line 411
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/ImeTrackerService;->onTimeout(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    return-void
.end method

.method public final synthetic lambda$waitUntilNoPendingRequests$1(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3

    .line 357
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 358
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mPendingRequestsListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 5

    .line 293
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 294
    :try_start_4
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/inputmethod/ImeTrackerService;->onFinished(Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 295
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 5

    .line 314
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 315
    :try_start_5
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService;->onFinished(Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 316
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 5

    .line 286
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    .line 287
    :try_start_4
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/inputmethod/ImeTrackerService;->onFinished(Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 288
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final onFinished(Landroid/view/inputmethod/ImeTracker$Token;II)V
    .registers 9

    .line 211
    invoke-virtual {p1}, Landroid/view/inputmethod/ImeTracker$Token;->getId()J

    move-result-wide v0

    .line 212
    invoke-virtual {p1}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object p1

    .line 213
    iget-object v2, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/inputmethod/ImeTrackerService$History;->getActive(J)Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    move-result-object v2

    .line 214
    const-string v3, "%s: onFinished on previously finished token at %s with %s"

    if-eqz v2, :cond_4f

    .line 215
    iget-object v4, v2, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mTag:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 218
    invoke-static {p3}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object p0

    .line 219
    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$Debug;->statusToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 217
    invoke-static {v3, p0}, Lcom/android/server/inputmethod/ImeTrackerService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 222
    :cond_2a
    invoke-static {v2}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmFinished(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 224
    invoke-static {p3}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object p0

    .line 225
    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$Debug;->statusToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 223
    const-string p1, "%s: onFinished on previously finished but active token at %s with %s"

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/ImeTrackerService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 229
    :cond_42
    invoke-virtual {v2, p2, p3}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->onFinish(II)V

    .line 231
    invoke-static {v2}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmStarted(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 232
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService;->complete(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    :cond_4e
    return-void

    .line 235
    :cond_4f
    iget-object v2, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/inputmethod/ImeTrackerService$History;->isCompleted(J)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 237
    invoke-static {p3}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$Debug;->statusToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 236
    invoke-static {v3, p0}, Lcom/android/server/inputmethod/ImeTrackerService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 242
    :cond_67
    iget-object v2, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->isActiveFull()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 245
    invoke-static {p3}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object p0

    .line 246
    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$Debug;->statusToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 243
    const-string p1, "%s: onFinished at %s with %s while active entries are full, not tracking request"

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/ImeTrackerService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 250
    :cond_81
    new-instance v2, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    invoke-direct {v2}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;-><init>()V

    .line 251
    iput-object p1, v2, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mTag:Ljava/lang/String;

    .line 252
    invoke-virtual {v2, p2, p3}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->onFinish(II)V

    .line 254
    iget-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->putActive(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    .line 255
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService;->registerTimeout(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    return-void
.end method

.method public onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 5

    .line 307
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 308
    :try_start_5
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService;->onFinished(Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 309
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onImmsUpdate(Landroid/view/inputmethod/ImeTracker$Token;Ljava/lang/String;)V
    .registers 6

    .line 327
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {p1}, Landroid/view/inputmethod/ImeTracker$Token;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->getActive(J)Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 330
    invoke-static {p0, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fputmRequestWindowName(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;Ljava/lang/String;)V

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_17

    .line 332
    :cond_15
    :goto_15
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_13

    throw p0
.end method

.method public onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 7

    .line 166
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_3
    invoke-virtual {p1}, Landroid/view/inputmethod/ImeTracker$Token;->getId()J

    move-result-wide v1

    .line 168
    invoke-virtual {p1}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object p1

    .line 169
    iget-object v3, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->getActive(J)Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 171
    iget-object p0, v3, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mTag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 173
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    goto :goto_5c

    .line 175
    :cond_1f
    invoke-static {v3}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmFinished(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 176
    monitor-exit v0

    return-void

    .line 179
    :cond_27
    invoke-virtual {v3, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->onProgress(I)V

    goto :goto_5a

    .line 181
    :cond_2b
    iget-object v3, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->isCompleted(J)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 182
    monitor-exit v0

    return-void

    .line 185
    :cond_35
    iget-object v3, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/ImeTrackerService$History;->isActiveFull()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 186
    const-string p0, "%s: onProgress while active entries are full, not tracking request"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/ImeTrackerService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    monitor-exit v0

    return-void

    .line 190
    :cond_48
    new-instance v3, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    invoke-direct {v3}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;-><init>()V

    .line 191
    iput-object p1, v3, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mTag:Ljava/lang/String;

    .line 192
    invoke-virtual {v3, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->onProgress(I)V

    .line 194
    iget-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/inputmethod/ImeTrackerService$History;->putActive(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    .line 195
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/inputmethod/ImeTrackerService;->registerTimeout(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    .line 197
    :goto_5a
    monitor-exit v0

    return-void

    :goto_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_1d

    throw p0
.end method

.method public onShown(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 5

    .line 300
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 301
    :try_start_5
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService;->onFinished(Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 302
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onStart(Landroid/view/inputmethod/ImeTracker$Token;IIIIZJJ)V
    .registers 26

    .line 124
    iget-object v1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/ImeTracker$Token;->getId()J

    move-result-wide v2

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object v5

    .line 127
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/inputmethod/ImeTrackerService$History;->getActive(J)Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    move-result-object v4

    if-eqz v4, :cond_57

    .line 129
    iget-object v0, v4, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 131
    const-string p0, "%s: onStart on previously finished token"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/ImeTrackerService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    monitor-exit v1

    return-void

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto :goto_8e

    .line 134
    :cond_29
    invoke-static {v4}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmStarted(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 135
    const-string p0, "%s: onStart on previously started and not finished token: %s"

    iget-object v0, v4, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mTag:Ljava/lang/String;

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/ImeTrackerService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    monitor-exit v1

    return-void

    :cond_3c
    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    .line 140
    invoke-virtual/range {v4 .. v14}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->onStart(Ljava/lang/String;IIIIZJJ)V

    .line 143
    invoke-static {v4}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fgetmFinished(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 144
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/inputmethod/ImeTrackerService;->complete(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    goto :goto_8c

    .line 147
    :cond_57
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/ImeTrackerService$History;->isActiveFull()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 148
    const-string p0, "%s: onStart while active entries are full, not tracking request"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/ImeTrackerService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    monitor-exit v1

    return-void

    .line 152
    :cond_6a
    new-instance v4, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    invoke-direct {v4}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;-><init>()V

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 154
    invoke-virtual/range {v4 .. v14}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->onStart(Ljava/lang/String;IIIIZJJ)V

    .line 158
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/inputmethod/ImeTrackerService$History;->putActive(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    .line 159
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/inputmethod/ImeTrackerService;->registerTimeout(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    .line 161
    :cond_8c
    :goto_8c
    monitor-exit v1

    return-void

    :goto_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_3 .. :try_end_8f} :catchall_26

    throw p0
.end method

.method public final onTimeout(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V
    .registers 8

    .line 266
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->getActive(J)Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    move-result-object v1

    if-eq v1, p3, :cond_f

    .line 273
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_2b

    .line 276
    :cond_f
    const-string v1, "%s: onTimeout at %s"

    iget-object v2, p3, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mTag:Ljava/lang/String;

    iget v3, p3, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    invoke-static {v3}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget v1, p3, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    const/4 v2, 0x5

    invoke-virtual {p3, v2, v1}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->onFinish(II)V

    .line 280
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/ImeTrackerService;->complete(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    .line 281
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_d

    throw p0
.end method

.method public final registerTimeout(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V
    .registers 6

    .line 411
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/ImeTrackerService;JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    iget-wide p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mTimeoutMs:J

    invoke-virtual {v0, v1, p3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public waitUntilNoPendingRequests(Lcom/android/internal/infra/AndroidFuture;J)V
    .registers 7

    .line 350
    invoke-super {p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->waitUntilNoPendingRequests_enforcePermission()V

    .line 351
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_6
    iget-object v1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/ImeTrackerService$History;->activeEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 p0, 0x0

    .line 353
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_28

    :catchall_17
    move-exception p0

    goto :goto_2a

    .line 355
    :cond_19
    iget-object v1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mPendingRequestsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/ImeTrackerService;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 361
    :goto_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_17

    throw p0
.end method
