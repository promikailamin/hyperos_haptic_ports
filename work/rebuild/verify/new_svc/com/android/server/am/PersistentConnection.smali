.class public abstract Lcom/android/server/am/PersistentConnection;
.super Ljava/lang/Object;
.source "PersistentConnection.java"


# instance fields
.field public final mBindForBackoffRunnable:Ljava/lang/Runnable;

.field public mBound:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsConnected:Z

.field public mLastConnectedTime:J

.field public final mLock:Ljava/lang/Object;

.field public mNextBackoffMs:J

.field public mNumBindingDied:I

.field public mNumConnected:I

.field public mNumDisconnected:I

.field public final mRebindBackoffIncrease:D

.field public final mRebindBackoffMs:J

.field public final mRebindMaxBackoffMs:J

.field public mRebindScheduled:Z

.field public mReconnectTime:J

.field public final mResetBackoffDelay:J

.field public mService:Ljava/lang/Object;

.field public final mServiceConnection:Landroid/content/ServiceConnection;

.field public mShouldBeBound:Z

.field public final mStableCheck:Ljava/lang/Runnable;

.field public final mTag:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$CjtpKEkvktz4DIkv63_rNKq0jlA(Lcom/android/server/am/PersistentConnection;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->stableConnectionCheck()V

    return-void
.end method

.method public static synthetic $r8$lambda$lRJGeY3WLqv-T605fpV8cYhSeEw(Lcom/android/server/am/PersistentConnection;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBound(Lcom/android/server/am/PersistentConnection;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmComponentName(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNumBindingDied(Lcom/android/server/am/PersistentConnection;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNumConnected(Lcom/android/server/am/PersistentConnection;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNumDisconnected(Lcom/android/server/am/PersistentConnection;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/am/PersistentConnection;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsConnected(Lcom/android/server/am/PersistentConnection;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastConnectedTime(Lcom/android/server/am/PersistentConnection;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/am/PersistentConnection;->mLastConnectedTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNumBindingDied(Lcom/android/server/am/PersistentConnection;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNumConnected(Lcom/android/server/am/PersistentConnection;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNumDisconnected(Lcom/android/server/am/PersistentConnection;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmService(Lcom/android/server/am/PersistentConnection;Ljava/lang/Object;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanUpConnectionLocked(Lcom/android/server/am/PersistentConnection;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->cleanUpConnectionLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleStableCheckLocked(Lcom/android/server/am/PersistentConnection;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->scheduleStableCheckLocked()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ILandroid/content/ComponentName;JDJJ)V
    .registers 15

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 116
    new-instance v0, Lcom/android/server/am/PersistentConnection$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/PersistentConnection$1;-><init>(Lcom/android/server/am/PersistentConnection;)V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 180
    new-instance v0, Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/PersistentConnection;)V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    .line 412
    new-instance v0, Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/PersistentConnection;)V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Ljava/lang/Runnable;

    .line 186
    iput-object p1, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    .line 187
    iput-object p2, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    .line 188
    iput-object p3, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    .line 189
    iput p4, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 190
    iput-object p5, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    const-wide/16 p1, 0x3e8

    mul-long/2addr p6, p1

    .line 192
    iput-wide p6, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    .line 193
    iput-wide p8, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffIncrease:D

    mul-long/2addr p10, p1

    .line 194
    iput-wide p10, p0, Lcom/android/server/am/PersistentConnection;->mRebindMaxBackoffMs:J

    mul-long/2addr p12, p1

    .line 195
    iput-wide p12, p0, Lcom/android/server/am/PersistentConnection;->mResetBackoffDelay:J

    .line 197
    iput-wide p6, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    return-void
.end method


# virtual methods
.method public abstract asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
.end method

.method public final bind()V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 270
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    .line 272
    invoke-virtual {p0, v1}, Lcom/android/server/am/PersistentConnection;->bindInnerLocked(Z)V

    .line 273
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final bindForBackoff()V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    if-nez v1, :cond_b

    .line 347
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_11

    :cond_b
    const/4 v1, 0x0

    .line 350
    invoke-virtual {p0, v1}, Lcom/android/server/am/PersistentConnection;->bindInnerLocked(Z)V

    .line 351
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_9

    throw p0
.end method

.method public final bindInnerLocked(Z)V
    .registers 10

    .line 314
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleRebindLocked()V

    .line 316
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v0, :cond_8

    goto :goto_5f

    :cond_8
    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 321
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleStableCheckLocked()V

    if-eqz p1, :cond_13

    .line 324
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->resetBackoffLocked()V

    .line 327
    :cond_13
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 333
    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 334
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->getBindFlags()I

    move-result p1

    or-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    iget p1, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 335
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 333
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_5f

    .line 338
    iget-object p1, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " failed."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    :goto_5f
    return-void
.end method

.method public final cleanUpConnectionLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 356
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    const/4 v0, 0x0

    .line 357
    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    .line 359
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleStableCheckLocked()V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    .line 443
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    const-string v1, " u"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 447
    iget v1, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 448
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v1, :cond_22

    const-string v1, " [bound]"

    goto :goto_24

    :catchall_20
    move-exception p0

    goto :goto_95

    :cond_22
    const-string v1, " [not bound]"

    :goto_24
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    if-eqz v1, :cond_2e

    const-string v1, " [connected]"

    goto :goto_30

    :cond_2e
    const-string v1, " [not connected]"

    :goto_30
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    if-eqz v1, :cond_46

    .line 451
    const-string v1, " reconnect in "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 452
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 454
    :cond_46
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 456
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    const-string v1, "  Next backoff(sec): "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 458
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 459
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 461
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 462
    const-string p1, "  Connected: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    iget p1, p0, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 464
    const-string p1, "  Disconnected: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    iget p1, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 466
    const-string p1, "  Died: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 467
    iget p1, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 468
    iget-boolean p1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    if-eqz p1, :cond_90

    .line 469
    const-string p1, "  Duration: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v1

    iget-wide p0, p0, Lcom/android/server/am/PersistentConnection;->mLastConnectedTime:J

    sub-long/2addr v1, p0

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 472
    :cond_90
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 473
    monitor-exit v0

    return-void

    :goto_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_3 .. :try_end_96} :catchall_20

    throw p0
.end method

.method public abstract getBindFlags()I
.end method

.method public getBindForBackoffRunnableForTest()Ljava/lang/Runnable;
    .registers 1

    .line 508
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getNextBackoffMs()J
    .registers 4

    .line 278
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    monitor-exit v0

    return-wide v1

    :catchall_7
    move-exception p0

    .line 280
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getNextBackoffMsForTest()J
    .registers 3

    .line 493
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    return-wide v0
.end method

.method public getNumBindingDied()I
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_3
    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 301
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getNumConnected()I
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 287
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getNumDisconnected()I
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_3
    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 294
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getReconnectTimeForTest()J
    .registers 3

    .line 498
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    return-wide v0
.end method

.method public final getServiceBinder()Ljava/lang/Object;
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 262
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getServiceConnectionForTest()Landroid/content/ServiceConnection;
    .registers 1

    .line 503
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public getStableCheckRunnableForTest()Ljava/lang/Runnable;
    .registers 1

    .line 513
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getUserId()I
    .registers 1

    .line 205
    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    return p0
.end method

.method public injectPostAtTime(Ljava/lang/Runnable;J)V
    .registers 4

    .line 483
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public injectRemoveCallbacks(Ljava/lang/Runnable;)V
    .registers 2

    .line 478
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public injectUptimeMillis()J
    .registers 3

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isBound()Z
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 235
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isConnected()Z
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 253
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final synthetic lambda$new$0()V
    .registers 1

    .line 180
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->bindForBackoff()V

    return-void
.end method

.method public onConnected(Ljava/lang/Object;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDisconnected()V
    .registers 1

    .line 0
    return-void
.end method

.method public final resetBackoffLocked()V
    .registers 5

    .line 306
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    .line 307
    iput-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 308
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backoff reset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method public scheduleRebindLocked()V
    .registers 7

    .line 396
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unbindLocked()V

    .line 398
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    if-nez v0, :cond_44

    .line 399
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling to reconnect in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms (uptime)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    .line 403
    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/am/PersistentConnection;->injectPostAtTime(Ljava/lang/Runnable;J)V

    .line 405
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindMaxBackoffMs:J

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffIncrease:D

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    const/4 v0, 0x1

    .line 408
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    :cond_44
    return-void
.end method

.method public final scheduleStableCheckLocked()V
    .registers 6

    .line 435
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleStableCheckLocked()V

    .line 436
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/PersistentConnection;->mResetBackoffDelay:J

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/PersistentConnection;->injectPostAtTime(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public shouldBeBoundForTest()Z
    .registers 1

    .line 518
    iget-boolean p0, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    return p0
.end method

.method public final stableConnectionCheck()V
    .registers 8

    .line 415
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v1

    .line 417
    iget-wide v3, p0, Lcom/android/server/am/PersistentConnection;->mLastConnectedTime:J

    iget-wide v5, p0, Lcom/android/server/am/PersistentConnection;->mResetBackoffDelay:J

    add-long/2addr v3, v5

    sub-long/2addr v3, v1

    .line 422
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v1, :cond_21

    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    if-eqz v1, :cond_21

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-gtz v1, :cond_21

    .line 423
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->resetBackoffLocked()V

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_23

    .line 425
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1f

    throw p0
.end method

.method public final unbind()V
    .registers 3

    .line 366
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 367
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    .line 369
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unbindLocked()V

    .line 370
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleStableCheckLocked()V

    .line 371
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final unbindLocked()V
    .registers 4

    .line 376
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleRebindLocked()V

    .line 378
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-nez v0, :cond_8

    return-void

    .line 381
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 383
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->cleanUpConnectionLocked()V

    return-void
.end method

.method public unscheduleRebindLocked()V
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 391
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    return-void
.end method

.method public final unscheduleStableCheckLocked()V
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
