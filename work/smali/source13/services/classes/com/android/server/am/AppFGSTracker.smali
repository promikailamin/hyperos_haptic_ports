.class final Lcom/android/server/am/AppFGSTracker;
.super Lcom/android/server/am/BaseAppStateDurationsTracker;
.source "AppFGSTracker.java"

# interfaces
.implements Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;,
        Lcom/android/server/am/AppFGSTracker$NotificationListener;,
        Lcom/android/server/am/AppFGSTracker$PackageDurations;,
        Lcom/android/server/am/AppFGSTracker$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateDurationsTracker<",
        "Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;",
        "Lcom/android/server/am/AppFGSTracker$PackageDurations;",
        ">;",
        "Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;"
    }
.end annotation


# static fields
.field static final DEBUG_BACKGROUND_FGS_TRACKER:Z = false

.field static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/UidProcessMap<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

.field final mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

.field final mProcessObserver:Landroid/app/IProcessObserver$Stub;

.field private final mTmpPkgDurations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/am/AppFGSTracker$PackageDurations;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/am/AppFGSTracker;)Lcom/android/server/am/AppFGSTracker$MyHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckLongRunningFgs(Lcom/android/server/am/AppFGSTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppFGSTracker;->checkLongRunningFgs()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleForegroundServiceNotificationUpdated(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IIZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppFGSTracker;->handleForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppFGSTracker;->handleForegroundServicesChanged(Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IIZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppFGSTracker;->handleForegroundServicesChanged(Ljava/lang/String;IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNotificationPosted(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppFGSTracker;->handleNotificationPosted(Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNotificationRemoved(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppFGSTracker;->handleNotificationRemoved(Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBgFgsLongRunningThresholdChanged(Lcom/android/server/am/AppFGSTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppFGSTracker;->onBgFgsLongRunningThresholdChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBgFgsMonitorEnabled(Lcom/android/server/am/AppFGSTracker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppFGSTracker;->onBgFgsMonitorEnabled(Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/server/am/AppRestrictionController;

    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/am/AppFGSTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/server/am/AppRestrictionController;
    .param p4, "outerContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/am/AppRestrictionController;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/android/server/am/BaseAppStateTracker$Injector<",
            "Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 184
    .local p3, "injector":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/server/am/BaseAppStateTracker$Injector<Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateDurationsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 81
    new-instance v0, Lcom/android/server/am/UidProcessMap;

    invoke-direct {v0}, Lcom/android/server/am/UidProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 85
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mTmpPkgDurations:Landroid/util/ArrayMap;

    .line 87
    new-instance v0, Lcom/android/server/am/AppFGSTracker$NotificationListener;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppFGSTracker$NotificationListener;-><init>(Lcom/android/server/am/AppFGSTracker;)V

    iput-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

    .line 90
    new-instance v0, Lcom/android/server/am/AppFGSTracker$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppFGSTracker$1;-><init>(Lcom/android/server/am/AppFGSTracker;)V

    iput-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    .line 185
    new-instance v0, Lcom/android/server/am/AppFGSTracker$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppFGSTracker$MyHandler;-><init>(Lcom/android/server/am/AppFGSTracker;)V

    iput-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    .line 186
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance v1, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    iget-object v2, p0, Lcom/android/server/am/AppFGSTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-direct {v1, v2, p0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppFGSTracker;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->setPolicy(Lcom/android/server/am/BaseAppStatePolicy;)V

    .line 187
    return-void
.end method

.method private checkLongRunningFgs()V
    .registers 22

    .line 396
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/AppFGSTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    .line 397
    .local v2, "policy":Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;
    iget-object v3, v1, Lcom/android/server/am/AppFGSTracker;->mTmpPkgDurations:Landroid/util/ArrayMap;

    .line 398
    .local v3, "pkgWithLongFgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/am/AppFGSTracker$PackageDurations;Ljava/lang/Long;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 399
    .local v4, "now":J
    invoke-virtual {v2}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->getFgsLongRunningThreshold()J

    move-result-wide v6

    .line 400
    .local v6, "threshold":J
    invoke-virtual {v2}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->getFgsLongRunningWindowSize()J

    move-result-wide v8

    .line 401
    .local v8, "windowSize":J
    sub-long v10, v4, v8

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 403
    .local v10, "trimTo":J
    iget-object v12, v1, Lcom/android/server/am/AppFGSTracker;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 404
    :try_start_24
    iget-object v0, v1, Lcom/android/server/am/AppFGSTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v0

    .line 405
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .local v13, "i":I
    :goto_30
    if-ltz v13, :cond_8d

    .line 406
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArrayMap;

    .line 407
    .local v15, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;"
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v14, v16

    .local v14, "j":I
    :goto_40
    if-ltz v14, :cond_82

    .line 408
    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    move-object/from16 v17, v16

    .line 409
    .local v17, "pkg":Lcom/android/server/am/AppFGSTracker$PackageDurations;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v16

    if-eqz v16, :cond_74

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->isLongRunning()Z

    move-result v16

    if-nez v16, :cond_74

    .line 410
    move-object/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "pkg":Lcom/android/server/am/AppFGSTracker$PackageDurations;
    .local v0, "pkg":Lcom/android/server/am/AppFGSTracker$PackageDurations;
    .local v16, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/am/AppFGSTracker;->getTotalDurations(Lcom/android/server/am/AppFGSTracker$PackageDurations;J)J

    move-result-wide v17
    :try_end_5e
    .catchall {:try_start_24 .. :try_end_5e} :catchall_db

    .line 411
    .local v17, "totalDuration":J
    cmp-long v19, v17, v6

    if-ltz v19, :cond_70

    .line 412
    move-wide/from16 v19, v6

    .end local v6    # "threshold":J
    .local v19, "threshold":J
    :try_start_64
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->setIsLongRunning(Z)V

    goto :goto_7b

    .line 411
    .end local v19    # "threshold":J
    .restart local v6    # "threshold":J
    :cond_70
    move-wide/from16 v19, v6

    const/4 v6, 0x1

    .end local v6    # "threshold":J
    .restart local v19    # "threshold":J
    goto :goto_7b

    .line 409
    .end local v16    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    .end local v19    # "threshold":J
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    .restart local v6    # "threshold":J
    .local v17, "pkg":Lcom/android/server/am/AppFGSTracker$PackageDurations;
    :cond_74
    move-object/from16 v16, v0

    move-wide/from16 v19, v6

    move-object/from16 v0, v17

    const/4 v6, 0x1

    .line 407
    .end local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    .end local v6    # "threshold":J
    .end local v17    # "pkg":Lcom/android/server/am/AppFGSTracker$PackageDurations;
    .restart local v16    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    .restart local v19    # "threshold":J
    :goto_7b
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, v16

    move-wide/from16 v6, v19

    goto :goto_40

    .end local v16    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    .end local v19    # "threshold":J
    .restart local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    .restart local v6    # "threshold":J
    :cond_82
    move-object/from16 v16, v0

    move-wide/from16 v19, v6

    const/4 v6, 0x1

    .line 405
    .end local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    .end local v6    # "threshold":J
    .end local v14    # "j":I
    .end local v15    # "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;"
    .restart local v16    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    .restart local v19    # "threshold":J
    add-int/lit8 v13, v13, -0x1

    move v14, v6

    move-wide/from16 v6, v19

    goto :goto_30

    .end local v16    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    .end local v19    # "threshold":J
    .restart local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    .restart local v6    # "threshold":J
    :cond_8d
    move-object/from16 v16, v0

    move-wide/from16 v19, v6

    .line 426
    .end local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    .end local v6    # "threshold":J
    .end local v13    # "i":I
    .restart local v16    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    .restart local v19    # "threshold":J
    invoke-virtual {v1, v10, v11}, Lcom/android/server/am/AppFGSTracker;->trim(J)V

    .line 427
    .end local v16    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    monitor-exit v12
    :try_end_95
    .catchall {:try_start_64 .. :try_end_95} :catchall_e0

    .line 429
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 430
    .local v6, "size":I
    if-lez v6, :cond_d0

    .line 432
    new-array v0, v6, [Ljava/lang/Integer;

    .line 433
    .local v0, "indices":[Ljava/lang/Integer;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9e
    if-ge v7, v6, :cond_a9

    .line 434
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v0, v7

    .line 433
    add-int/lit8 v7, v7, 0x1

    goto :goto_9e

    .line 436
    .end local v7    # "i":I
    :cond_a9
    new-instance v7, Lcom/android/server/am/AppFGSTracker$$ExternalSyntheticLambda0;

    invoke-direct {v7, v3}, Lcom/android/server/am/AppFGSTracker$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;)V

    invoke-static {v0, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 439
    add-int/lit8 v7, v6, -0x1

    .restart local v7    # "i":I
    :goto_b3
    if-ltz v7, :cond_cd

    .line 440
    aget-object v12, v0, v7

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 441
    .local v12, "pkg":Lcom/android/server/am/AppFGSTracker$PackageDurations;
    iget-object v13, v12, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mPackageName:Ljava/lang/String;

    iget v14, v12, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mUid:I

    iget v15, v12, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mExemptReason:I

    invoke-virtual {v2, v13, v14, v15}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->onLongRunningFgs(Ljava/lang/String;II)V

    .line 439
    .end local v12    # "pkg":Lcom/android/server/am/AppFGSTracker$PackageDurations;
    add-int/lit8 v7, v7, -0x1

    goto :goto_b3

    .line 443
    .end local v7    # "i":I
    :cond_cd
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 446
    .end local v0    # "indices":[Ljava/lang/Integer;
    :cond_d0
    iget-object v7, v1, Lcom/android/server/am/AppFGSTracker;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 447
    :try_start_d3
    invoke-direct {v1, v4, v5}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    .line 448
    monitor-exit v7

    .line 449
    return-void

    .line 448
    :catchall_d8
    move-exception v0

    monitor-exit v7
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_d8

    throw v0

    .line 427
    .end local v19    # "threshold":J
    .local v6, "threshold":J
    :catchall_db
    move-exception v0

    move-wide/from16 v19, v6

    .end local v6    # "threshold":J
    .restart local v19    # "threshold":J
    :goto_de
    :try_start_de
    monitor-exit v12
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_e0

    throw v0

    :catchall_e0
    move-exception v0

    goto :goto_de
.end method

.method static foregroundServiceTypeToIndex(I)I
    .registers 2
    .param p0, "serviceType"    # I

    .line 507
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    .line 508
    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 507
    :goto_a
    return v0
.end method

.method private handleForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "notificationId"    # I
    .param p4, "canceling"    # Z

    .line 255
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 257
    .local v1, "notificationIDs":Landroid/util/SparseBooleanArray;
    if-nez p4, :cond_1f

    .line 258
    if-nez v1, :cond_1a

    .line 259
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v1, v2

    .line 260
    iget-object v2, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v2, p2, p1, v1}, Lcom/android/server/am/UidProcessMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_1a
    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_5b

    .line 264
    :cond_1f
    if-eqz v1, :cond_5b

    .line 265
    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    .line 266
    .local v2, "indexOfKey":I
    if-ltz v2, :cond_5b

    .line 267
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    .line 268
    .local v3, "wasVisible":Z
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 269
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-nez v4, :cond_39

    .line 270
    iget-object v4, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/am/UidProcessMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    .line 274
    :cond_39
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_3f
    if-ltz v4, :cond_4c

    .line 275
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 277
    monitor-exit v0

    return-void

    .line 274
    :cond_49
    add-int/lit8 v4, v4, -0x1

    goto :goto_3f

    .line 280
    .end local v4    # "i":I
    :cond_4c
    if-eqz v3, :cond_5b

    .line 282
    const/4 v7, 0x0

    .line 283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v10, 0x8

    .line 282
    move-object v4, p0

    move v5, p2

    move-object v6, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/AppFGSTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    .line 289
    .end local v1    # "notificationIDs":Landroid/util/SparseBooleanArray;
    .end local v2    # "indexOfKey":I
    .end local v3    # "wasVisible":Z
    :cond_5b
    :goto_5b
    monitor-exit v0

    .line 290
    return-void

    .line 289
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method private handleForegroundServicesChanged(Ljava/lang/String;II)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 452
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 453
    return-void

    .line 455
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->shouldExemptUid(I)I

    move-result v0

    .line 456
    .local v0, "exemptReason":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 462
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 463
    :try_start_22
    iget-object v4, p0, Lcom/android/server/am/AppFGSTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 464
    .local v4, "pkg":Lcom/android/server/am/AppFGSTracker$PackageDurations;
    if-nez v4, :cond_3f

    .line 465
    new-instance v5, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    iget-object v6, p0, Lcom/android/server/am/AppFGSTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;

    invoke-direct {v5, p2, p1, v6, p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;Lcom/android/server/am/AppFGSTracker;)V

    move-object v4, v5

    .line 466
    iget-object v5, p0, Lcom/android/server/am/AppFGSTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v5, p2, p1, v4}, Lcom/android/server/am/UidProcessMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_3f
    invoke-virtual {v4, p3, v1, v2}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->setForegroundServiceType(IJ)V

    .line 469
    iput v0, v4, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mExemptReason:I

    .line 470
    .end local v4    # "pkg":Lcom/android/server/am/AppFGSTracker$PackageDurations;
    monitor-exit v3

    .line 471
    return-void

    .line 470
    :catchall_46
    move-exception v4

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_22 .. :try_end_48} :catchall_46

    throw v4
.end method

.method private handleForegroundServicesChanged(Ljava/lang/String;IIZ)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "started"    # Z

    .line 220
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 221
    return-void

    .line 223
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 224
    .local v0, "now":J
    const/4 v2, 0x0

    .line 225
    .local v2, "longRunningFGSGone":Z
    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {v3, p3}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->shouldExemptUid(I)I

    move-result v3

    .line 231
    .local v3, "exemptReason":I
    iget-object v4, p0, Lcom/android/server/am/AppFGSTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 232
    :try_start_23
    iget-object v5, p0, Lcom/android/server/am/AppFGSTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v5, p3, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 233
    .local v5, "pkg":Lcom/android/server/am/AppFGSTracker$PackageDurations;
    if-nez v5, :cond_37

    .line 234
    invoke-virtual {p0, p3, p1}, Lcom/android/server/am/AppFGSTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/AppFGSTracker$PackageDurations;

    move-result-object v6

    move-object v5, v6

    .line 235
    iget-object v6, p0, Lcom/android/server/am/AppFGSTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v6, p3, p1, v5}, Lcom/android/server/am/UidProcessMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_37
    invoke-virtual {v5}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->isLongRunning()Z

    move-result v6

    .line 238
    .local v6, "wasLongRunning":Z
    invoke-virtual {v5, p4, v0, v1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->addEvent(ZJ)V

    .line 239
    const/4 v7, 0x0

    if-eqz v6, :cond_49

    invoke-virtual {v5}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v8

    if-nez v8, :cond_49

    const/4 v8, 0x1

    goto :goto_4a

    :cond_49
    move v8, v7

    :goto_4a
    move v2, v8

    .line 240
    if-eqz v2, :cond_50

    .line 241
    invoke-virtual {v5, v7}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->setIsLongRunning(Z)V

    .line 243
    :cond_50
    iput v3, v5, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mExemptReason:I

    .line 245
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    .line 246
    .end local v5    # "pkg":Lcom/android/server/am/AppFGSTracker$PackageDurations;
    .end local v6    # "wasLongRunning":Z
    monitor-exit v4
    :try_end_56
    .catchall {:try_start_23 .. :try_end_56} :catchall_64

    .line 247
    if-eqz v2, :cond_63

    .line 249
    iget-object v4, p0, Lcom/android/server/am/AppFGSTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->onLongRunningFgsGone(Ljava/lang/String;I)V

    .line 251
    :cond_63
    return-void

    .line 246
    :catchall_64
    move-exception v5

    :try_start_65
    monitor-exit v4
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v5
.end method

.method private handleNotificationPosted(Ljava/lang/String;II)V
    .registers 19
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "notificationId"    # I

    .line 307
    move-object v8, p0

    iget-object v9, v8, Lcom/android/server/am/AppFGSTracker;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 308
    :try_start_4
    iget-object v0, v8, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_56

    move-object/from16 v10, p1

    move/from16 v11, p2

    :try_start_a
    invoke-virtual {v0, v11, v10}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_54

    .line 310
    .local v0, "notificationIDs":Landroid/util/SparseBooleanArray;
    if-eqz v0, :cond_50

    .line 311
    move/from16 v12, p3

    :try_start_14
    invoke-virtual {v0, v12}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    move v13, v1

    .local v13, "indexOfKey":I
    if-gez v1, :cond_1c

    goto :goto_52

    .line 314
    :cond_1c
    invoke-virtual {v0, v13}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 316
    monitor-exit v9

    return-void

    .line 318
    :cond_24
    const/4 v1, 0x0

    .line 320
    .local v1, "anyVisible":Z
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_2b
    if-ltz v2, :cond_39

    .line 321
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 322
    const/4 v1, 0x1

    .line 323
    move v14, v1

    goto :goto_3a

    .line 320
    :cond_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_2b

    :cond_39
    move v14, v1

    .line 326
    .end local v1    # "anyVisible":Z
    .end local v2    # "i":I
    .local v14, "anyVisible":Z
    :goto_3a
    invoke-virtual {v0, v13, v3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 327
    if-nez v14, :cond_4e

    .line 330
    const/4 v4, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/16 v7, 0x8

    move-object v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppFGSTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    .line 333
    .end local v0    # "notificationIDs":Landroid/util/SparseBooleanArray;
    .end local v13    # "indexOfKey":I
    .end local v14    # "anyVisible":Z
    :cond_4e
    monitor-exit v9

    .line 334
    return-void

    .line 310
    .restart local v0    # "notificationIDs":Landroid/util/SparseBooleanArray;
    :cond_50
    move/from16 v12, p3

    .line 312
    :goto_52
    monitor-exit v9

    return-void

    .line 333
    .end local v0    # "notificationIDs":Landroid/util/SparseBooleanArray;
    :catchall_54
    move-exception v0

    goto :goto_5b

    :catchall_56
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v11, p2

    :goto_5b
    move/from16 v12, p3

    :goto_5d
    monitor-exit v9
    :try_end_5e
    .catchall {:try_start_14 .. :try_end_5e} :catchall_5f

    throw v0

    :catchall_5f
    move-exception v0

    goto :goto_5d
.end method

.method private handleNotificationRemoved(Ljava/lang/String;II)V
    .registers 15
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "notificationId"    # I

    .line 337
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 340
    .local v1, "notificationIDs":Landroid/util/SparseBooleanArray;
    if-eqz v1, :cond_43

    .line 341
    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    move v3, v2

    .local v3, "indexOfKey":I
    if-gez v2, :cond_15

    goto :goto_43

    .line 344
    :cond_15
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 346
    monitor-exit v0

    return-void

    .line 348
    :cond_1d
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 350
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_27
    if-ltz v2, :cond_34

    .line 351
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 353
    monitor-exit v0

    return-void

    .line 350
    :cond_31
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 357
    .end local v2    # "i":I
    :cond_34
    const/4 v7, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v10, 0x8

    move-object v4, p0

    move v5, p2

    move-object v6, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/AppFGSTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    .line 359
    .end local v1    # "notificationIDs":Landroid/util/SparseBooleanArray;
    .end local v3    # "indexOfKey":I
    monitor-exit v0

    .line 360
    return-void

    .line 342
    .restart local v1    # "notificationIDs":Landroid/util/SparseBooleanArray;
    :cond_43
    :goto_43
    monitor-exit v0

    return-void

    .line 359
    .end local v1    # "notificationIDs":Landroid/util/SparseBooleanArray;
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method private hasForegroundServiceNotificationsLocked(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 294
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 295
    .local v0, "notificationIDs":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_12

    goto :goto_25

    .line 298
    :cond_12
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_24

    .line 299
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 300
    return v3

    .line 298
    :cond_21
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 303
    .end local v2    # "i":I
    :cond_24
    return v1

    .line 296
    :cond_25
    :goto_25
    return v1
.end method

.method static indexToForegroundServiceType(I)I
    .registers 3
    .param p0, "index"    # I

    .line 512
    sget v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    if-ne p0, v0, :cond_6

    .line 513
    const/4 v0, 0x0

    goto :goto_b

    :cond_6
    add-int/lit8 v0, p0, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 512
    :goto_b
    return v0
.end method

.method static synthetic lambda$checkLongRunningFgs$0(Landroid/util/ArrayMap;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 7
    .param p0, "pkgWithLongFgs"    # Landroid/util/ArrayMap;
    .param p1, "a"    # Ljava/lang/Integer;
    .param p2, "b"    # Ljava/lang/Integer;

    .line 436
    nop

    .line 437
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 436
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method private onBgFgsLongRunningThresholdChanged()V
    .registers 4

    .line 499
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 501
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    .line 503
    :cond_18
    monitor-exit v0

    .line 504
    return-void

    .line 503
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private onBgFgsMonitorEnabled(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .line 474
    if-eqz p1, :cond_24

    .line 475
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    .line 477
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_21

    .line 479
    :try_start_d
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/server/am/AppFGSTracker$NotificationListener;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/AppFGSTracker$NotificationListener;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1e} :catch_1f

    goto :goto_20

    .line 482
    :catch_1f
    move-exception v0

    .line 484
    :goto_20
    goto :goto_3a

    .line 477
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1

    .line 487
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

    invoke-virtual {v0}, Lcom/android/server/am/AppFGSTracker$NotificationListener;->unregisterAsSystemService()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a

    .line 490
    goto :goto_2b

    .line 488
    :catch_2a
    move-exception v0

    .line 491
    :goto_2b
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppFGSTracker$MyHandler;->removeMessages(I)V

    .line 492
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_34
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->clear()V

    .line 494
    monitor-exit v0

    .line 496
    :goto_3a
    return-void

    .line 494
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private scheduleDurationCheckLocked(J)V
    .registers 14
    .param p1, "now"    # J

    .line 365
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v0

    .line 366
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    const-wide/16 v1, -0x1

    .line 367
    .local v1, "longest":J
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_e
    if-ltz v3, :cond_3f

    .line 368
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 369
    .local v4, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_1c
    if-ltz v5, :cond_3c

    .line 370
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 371
    .local v6, "pkg":Lcom/android/server/am/AppFGSTracker$PackageDurations;
    invoke-virtual {v6}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-virtual {v6}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->isLongRunning()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 373
    goto :goto_39

    .line 375
    :cond_31
    invoke-virtual {p0, v6, p1, p2}, Lcom/android/server/am/AppFGSTracker;->getTotalDurations(Lcom/android/server/am/AppFGSTracker$PackageDurations;J)J

    move-result-wide v7

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 369
    .end local v6    # "pkg":Lcom/android/server/am/AppFGSTracker$PackageDurations;
    :cond_39
    :goto_39
    add-int/lit8 v5, v5, -0x1

    goto :goto_1c

    .line 367
    .end local v4    # "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;"
    .end local v5    # "j":I
    :cond_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    .line 379
    .end local v3    # "i":I
    :cond_3f
    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/server/am/AppFGSTracker$MyHandler;->removeMessages(I)V

    .line 380
    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-ltz v3, :cond_68

    .line 383
    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getServiceStartForegroundTimeout()J

    move-result-wide v7

    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 384
    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {v3}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->getFgsLongRunningThreshold()J

    move-result-wide v9

    sub-long/2addr v9, v1

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    add-long/2addr v7, v5

    .line 389
    .local v7, "future":J
    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    invoke-virtual {v3, v4, v7, v8}, Lcom/android/server/am/AppFGSTracker$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 393
    .end local v7    # "future":J
    :cond_68
    return-void
.end method


# virtual methods
.method public createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/AppFGSTracker$PackageDurations;
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 210
    new-instance v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;Lcom/android/server/am/AppFGSTracker;)V

    return-object v0
.end method

.method public createAppStateEvents(Lcom/android/server/am/AppFGSTracker$PackageDurations;)Lcom/android/server/am/AppFGSTracker$PackageDurations;
    .registers 3
    .param p1, "other"    # Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 215
    new-instance v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    invoke-direct {v0, p1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;-><init>(Lcom/android/server/am/AppFGSTracker$PackageDurations;)V

    return-object v0
.end method

.method public bridge synthetic createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;
    .registers 3

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppFGSTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/AppFGSTracker$PackageDurations;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;
    .registers 2

    .line 73
    check-cast p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppFGSTracker;->createAppStateEvents(Lcom/android/server/am/AppFGSTracker$PackageDurations;)Lcom/android/server/am/AppFGSTracker$PackageDurations;

    move-result-object p1

    return-object p1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 589
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 590
    const-string v0, "APP FOREGROUND SERVICE TRACKER:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method dumpOthers(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 596
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    const-string v0, "APPS WITH ACTIVE FOREGROUND SERVICES:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 599
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 600
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 601
    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v1

    .line 602
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseBooleanArray;>;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_32

    .line 603
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    const-string v2, "(none)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    :cond_32
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "size":I
    :goto_37
    if-ge v2, v3, :cond_74

    .line 607
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 608
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v5

    .line 609
    .local v5, "uidString":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 610
    .local v6, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseBooleanArray;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .local v8, "numOfPkgs":I
    :goto_4c
    if-ge v7, v8, :cond_71

    .line 611
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 612
    .local v9, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 614
    const/16 v10, 0x2f

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 615
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 616
    const-string v10, " notification="

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 617
    invoke-direct {p0, v9, v4}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotificationsLocked(Ljava/lang/String;I)Z

    move-result v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Z)V

    .line 610
    .end local v9    # "pkgName":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    .line 606
    .end local v4    # "uid":I
    .end local v5    # "uidString":Ljava/lang/String;
    .end local v6    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseBooleanArray;>;"
    .end local v7    # "j":I
    .end local v8    # "numOfPkgs":I
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 620
    .end local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseBooleanArray;>;>;"
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_74
    monitor-exit v0

    .line 621
    return-void

    .line 620
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_1e .. :try_end_78} :catchall_76

    throw v1
.end method

.method getTotalDurations(IJ)J
    .registers 6
    .param p1, "uid"    # I
    .param p2, "now"    # J

    .line 523
    nop

    .line 524
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v0

    .line 523
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/AppFGSTracker;->getTotalDurations(IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method getTotalDurations(Lcom/android/server/am/AppFGSTracker$PackageDurations;J)J
    .registers 10
    .param p1, "pkg"    # Lcom/android/server/am/AppFGSTracker$PackageDurations;
    .param p2, "now"    # J

    .line 517
    iget-object v1, p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mPackageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mUid:I

    .line 518
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v5

    .line 517
    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppFGSTracker;->getTotalDurations(Ljava/lang/String;IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method getTrackerInfoForStatsd(I)[B
    .registers 8
    .param p1, "uid"    # I

    .line 574
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/AppFGSTracker;->getTotalDurations(IJ)J

    move-result-wide v0

    .line 575
    .local v0, "fgsDurations":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 577
    const/4 v2, 0x0

    return-object v2

    .line 579
    :cond_10
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 580
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x10800000001L

    .line 581
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotifications(I)Z

    move-result v5

    .line 580
    invoke-virtual {v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 582
    const-wide v3, 0x10300000002L

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 583
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 584
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    return-object v3
.end method

.method getType()I
    .registers 2

    .line 191
    const/4 v0, 0x3

    return v0
.end method

.method hasForegroundServiceNotifications(I)Z
    .registers 8
    .param p1, "uid"    # I

    .line 557
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 559
    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v1

    .line 560
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseBooleanArray;>;>;"
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 561
    .local v2, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseBooleanArray;>;"
    if-eqz v2, :cond_2a

    .line 562
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_17
    if-ltz v3, :cond_2a

    .line 563
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, p1}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotificationsLocked(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 564
    monitor-exit v0

    return v4

    .line 562
    :cond_27
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 568
    .end local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseBooleanArray;>;>;"
    .end local v2    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseBooleanArray;>;"
    .end local v3    # "i":I
    :cond_2a
    monitor-exit v0

    .line 569
    const/4 v0, 0x0

    return v0

    .line 568
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method hasForegroundServiceNotifications(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 551
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotificationsLocked(Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 553
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method hasForegroundServices(I)Z
    .registers 9
    .param p1, "uid"    # I

    .line 535
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v1

    .line 537
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 538
    .local v2, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;"
    if-eqz v2, :cond_2a

    .line 539
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_17
    if-ltz v3, :cond_2a

    .line 540
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 541
    .local v5, "pkg":Lcom/android/server/am/AppFGSTracker$PackageDurations;
    invoke-virtual {v5}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 542
    monitor-exit v0

    return v4

    .line 539
    .end local v5    # "pkg":Lcom/android/server/am/AppFGSTracker$PackageDurations;
    :cond_27
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 546
    .end local v3    # "i":I
    :cond_2a
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 547
    .end local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;>;"
    .end local v2    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/AppFGSTracker$PackageDurations;>;"
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method hasForegroundServices(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 528
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 530
    .local v1, "pkg":Lcom/android/server/am/AppFGSTracker$PackageDurations;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    monitor-exit v0

    return v2

    .line 531
    .end local v1    # "pkg":Lcom/android/server/am/AppFGSTracker$PackageDurations;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public onForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "foregroundId"    # I
    .param p4, "canceling"    # Z

    .line 119
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 120
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 121
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 122
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 123
    if-eqz p4, :cond_f

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_11

    :cond_f
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_11
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/AppFGSTracker$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 126
    return-void
.end method

.method public onForegroundServiceStateChanged(Ljava/lang/String;IIZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "started"    # Z

    .line 112
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    if-eqz p4, :cond_6

    const/4 v1, 0x0

    goto :goto_7

    .line 113
    :cond_6
    const/4 v1, 0x1

    .line 112
    :goto_7
    invoke-virtual {v0, v1, p3, p2, p1}, Lcom/android/server/am/AppFGSTracker$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 114
    return-void
.end method

.method onSystemReady()V
    .registers 3

    .line 196
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->onSystemReady()V

    .line 197
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->addForegroundServiceStateListener(Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 199
    return-void
.end method

.method reset()V
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppFGSTracker$MyHandler;->removeMessages(I)V

    .line 205
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->reset()V

    .line 206
    return-void
.end method
