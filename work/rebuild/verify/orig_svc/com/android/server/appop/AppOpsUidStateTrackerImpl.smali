.class public Lcom/android/server/appop/AppOpsUidStateTrackerImpl;
.super Ljava/lang/Object;
.source "AppOpsUidStateTrackerImpl.java"

# interfaces
.implements Lcom/android/server/appop/AppOpsUidStateTracker;


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAppWidgetVisible:Landroid/util/SparseBooleanArray;

.field public mCapability:Landroid/util/SparseIntArray;

.field public final mClock:Lcom/android/internal/os/Clock;

.field public mConstants:Lcom/android/server/appop/AppOpsService$Constants;

.field public final mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

.field public final mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

.field public mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

.field public mPendingCapability:Landroid/util/SparseIntArray;

.field public mPendingCommitTime:Landroid/util/SparseLongArray;

.field public mPendingUidStates:Landroid/util/SparseIntArray;

.field public mUidStateChangedCallbacks:Landroid/util/ArrayMap;

.field public mUidStates:Landroid/util/SparseIntArray;


# direct methods
.method public static synthetic $r8$lambda$DDarXSJMLhcQjOvjQGC1suxs48A(Lcom/android/server/appop/AppOpsUidStateTrackerImpl;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeeded(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManagerInternal;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;)V
    .registers 8

    move-object v0, p2

    .line 95
    new-instance p2, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;

    invoke-direct {p2, v0, p3}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    .line 105
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p3

    move-object v1, p5

    move-object p5, p3

    move-object p3, p4

    move-object p4, v1

    .line 95
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;-><init>(Landroid/app/ActivityManagerInternal;Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManagerInternal;Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;Ljava/lang/Thread;)V
    .registers 7

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    .line 71
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    .line 72
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    .line 73
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    .line 74
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 75
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 76
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    .line 112
    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 113
    iput-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    .line 114
    iput-object p3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 115
    iput-object p4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 117
    new-instance p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    invoke-direct {p1, p2, p5}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;-><init>(Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Ljava/lang/Thread;)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    return-void
.end method


# virtual methods
.method public addUidStateChangedCallback(Ljava/util/concurrent/Executor;Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;)V
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 196
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 193
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Callback is already registered."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final commitUidPendingState(I)V
    .registers 18

    move-object/from16 v0, p0

    move/from16 v2, p1

    .line 335
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const v7, 0x7fffffff

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 336
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 337
    iget-object v3, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    .line 339
    iget-object v4, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 340
    iget-object v4, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 341
    iget-object v5, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    const/16 v6, 0x2bc

    .line 345
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 346
    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v12, 0x1

    const/16 v13, 0x1f4

    if-gt v11, v13, :cond_3d

    move v14, v12

    goto :goto_3e

    :cond_3d
    move v14, v9

    :goto_3e
    if-gt v6, v13, :cond_42

    move v13, v12

    goto :goto_43

    :cond_42
    move v13, v9

    :goto_43
    if-ne v14, v13, :cond_4c

    if-ne v1, v4, :cond_4c

    if-eq v3, v5, :cond_4a

    goto :goto_4c

    :cond_4a
    move v13, v9

    goto :goto_4d

    :cond_4c
    :goto_4c
    move v13, v12

    :goto_4d
    if-ne v11, v6, :cond_53

    if-ne v1, v4, :cond_53

    if-eq v3, v5, :cond_98

    :cond_53
    if-eqz v13, :cond_62

    .line 359
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    if-eq v3, v5, :cond_5c

    move v3, v6

    move v6, v12

    goto :goto_5e

    :cond_5c
    move v3, v6

    move v6, v9

    :goto_5e
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->logCommitUidState(IIIZZ)V

    goto :goto_63

    :cond_62
    move v3, v6

    :goto_63
    move v1, v9

    .line 363
    :goto_64
    iget-object v6, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_98

    .line 364
    iget-object v6, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;

    .line 365
    iget-object v11, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/concurrent/Executor;

    .line 367
    new-instance v12, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 368
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 369
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 367
    invoke-static {v12, v6, v14, v15, v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x0

    goto :goto_64

    :cond_98
    if-ne v10, v7, :cond_d7

    if-eq v8, v10, :cond_d7

    .line 374
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 375
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 376
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    const/4 v9, 0x0

    .line 378
    :goto_ac
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v9, v1, :cond_e6

    .line 379
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;

    .line 380
    iget-object v3, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 383
    new-instance v4, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda2;-><init>()V

    .line 384
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 383
    invoke-static {v4, v1, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_ac

    .line 388
    :cond_d7
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 389
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 390
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 393
    :cond_e6
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 394
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 395
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 396
    iget-object v0, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .registers 2

    .line 315
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->dumpEvents(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpUidState(Ljava/io/PrintWriter;IJ)V
    .registers 9

    .line 276
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const/16 v1, 0x2bc

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 278
    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 279
    const-string v2, "    state="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    invoke-static {v0}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eq v0, v1, :cond_28

    .line 282
    const-string v0, "    pendingState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    :cond_28
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 287
    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 288
    const-string v3, "    capability="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 290
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eq v0, v2, :cond_4d

    .line 292
    const-string v0, "    pendingCapability="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    invoke-static {p1, v2}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 294
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 296
    :cond_4d
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 298
    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 299
    const-string v2, "    appWidgetVisible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    if-eq v0, v1, :cond_6b

    .line 302
    const-string v0, "    pendingAppWidgetVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 305
    :cond_6b
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-eqz p0, :cond_82

    .line 307
    const-string p0, "    pendingStateCommitTime="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    invoke-static {v2, v3, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 309
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_82
    return-void
.end method

.method public evalMode(III)I
    .registers 11

    const/4 v0, 0x4

    if-eq p3, v0, :cond_4

    return p3

    .line 136
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getUidState(I)I

    move-result v3

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getUidCapability(I)I

    move-result v4

    .line 138
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->evalModeInternal(IIII)I

    move-result v6

    .line 140
    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->logEvalForegroundMode(IIIII)V

    return v6
.end method

.method public final evalModeInternal(IIII)I
    .registers 7

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getUidAppWidgetVisible(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isPendingTopUid(I)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 146
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isTempAllowlistedForFgsWhileInUse(I)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_2b

    .line 150
    :cond_18
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getOpCapability(I)I

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_24

    and-int/2addr p0, p4

    if-nez p0, :cond_23

    return p1

    :cond_23
    return v1

    .line 159
    :cond_24
    invoke-static {p2}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result p0

    if-le p3, p0, :cond_2b

    return p1

    :cond_2b
    :goto_2b
    return v1
.end method

.method public final getOpCapability(I)I
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_25

    if-eq p1, p0, :cond_25

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_24

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_22

    const/16 v0, 0x29

    if-eq p1, v0, :cond_25

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_25

    const/16 p0, 0x79

    if-eq p1, p0, :cond_22

    const/16 p0, 0x9a

    if-eq p1, p0, :cond_1f

    const/4 p0, 0x0

    return p0

    :cond_1f
    const/16 p0, 0x40

    return p0

    :cond_22
    const/4 p0, 0x4

    return p0

    :cond_24
    const/4 p0, 0x2

    :cond_25
    return p0
.end method

.method public final getUidAppWidgetVisible(I)Z
    .registers 3

    .line 404
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public final getUidCapability(I)I
    .registers 3

    .line 400
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getUidState(I)I
    .registers 2

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getUidStateLocked(I)I

    move-result p0

    return p0
.end method

.method public final getUidStateLocked(I)I
    .registers 3

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeeded(I)V

    .line 127
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const/16 v0, 0x2bc

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public isUidInForeground(I)Z
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x4

    .line 187
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->evalMode(III)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
    .registers 7

    .line 209
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_16

    .line 211
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 212
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 214
    invoke-virtual {p0, v2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    return-void
.end method

.method public final updateUidPendingStateIfNeeded(I)V
    .registers 2

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeededLocked(I)V

    return-void
.end method

.method public final updateUidPendingStateIfNeededLocked(I)V
    .registers 7

    .line 323
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_20

    .line 325
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 326
    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1d

    goto :goto_20

    .line 329
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    :cond_20
    :goto_20
    return-void
.end method

.method public updateUidProcState(III)V
    .registers 16

    .line 220
    invoke-static {p2}, Lcom/android/server/appop/AppOpsUidStateTracker;->processStateToUidState(I)I

    move-result v0

    .line 222
    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const v2, 0x7fffffff

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 223
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 224
    iget-object v5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 225
    iget-object v6, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 226
    iget-object v7, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, p1, v8, v9}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v10

    cmp-long v7, v10, v8

    if-nez v7, :cond_30

    if-ne v0, v1, :cond_36

    if-ne p3, v3, :cond_36

    :cond_30
    if-eqz v7, :cond_9b

    if-ne v0, v5, :cond_36

    if-eq p3, v6, :cond_9b

    .line 235
    :cond_36
    iget-object v5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->logUpdateUidProcState(III)V

    .line 236
    iget-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 237
    iget-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    not-int p2, p3

    and-int/2addr p2, v3

    if-eqz p2, :cond_4a

    const/4 v4, 0x1

    :cond_4a
    if-ne v0, v2, :cond_50

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    return-void

    :cond_50
    if-ge v0, v1, :cond_56

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    return-void

    :cond_56
    if-eq v0, v1, :cond_5c

    const/16 p2, 0x1f4

    if-gt v0, p2, :cond_62

    :cond_5c
    if-nez v4, :cond_62

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    return-void

    :cond_62
    if-nez v7, :cond_9b

    const/16 p2, 0xc8

    if-gt v1, p2, :cond_6d

    .line 258
    iget-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide p2, p2, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    goto :goto_7a

    :cond_6d
    const/16 p2, 0x190

    if-gt v1, p2, :cond_76

    .line 260
    iget-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide p2, p2, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    goto :goto_7a

    .line 262
    :cond_76
    iget-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide p2, p2, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 264
    :goto_7a
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 265
    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 267
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 267
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    const-wide/16 v1, 0x1

    add-long/2addr p2, v1

    invoke-interface {v0, p0, p2, p3}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_9b
    return-void
.end method
