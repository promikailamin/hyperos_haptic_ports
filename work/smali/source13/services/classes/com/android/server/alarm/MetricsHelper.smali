.class Lcom/android/server/alarm/MetricsHelper;
.super Ljava/lang/Object;
.source "MetricsHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/alarm/MetricsHelper;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/server/alarm/MetricsHelper;->mLock:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method static synthetic lambda$registerPuller$0(Lcom/android/server/alarm/Alarm;)Z
    .registers 5
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 61
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$registerPuller$1(Lcom/android/server/alarm/Alarm;)Z
    .registers 2
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    return v0
.end method

.method static synthetic lambda$registerPuller$10(Lcom/android/server/alarm/Alarm;)Z
    .registers 2
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 77
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic lambda$registerPuller$11(Lcom/android/server/alarm/Alarm;)Z
    .registers 2
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 78
    iget v0, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$registerPuller$2(Lcom/android/server/alarm/Alarm;)Z
    .registers 2
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 64
    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$registerPuller$3(Lcom/android/server/alarm/Alarm;)Z
    .registers 2
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 66
    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$registerPuller$4(Lcom/android/server/alarm/Alarm;)Z
    .registers 2
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 67
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 68
    invoke-virtual {v0}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 67
    :goto_f
    return v0
.end method

.method static synthetic lambda$registerPuller$5(Lcom/android/server/alarm/Alarm;)Z
    .registers 2
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 70
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$registerPuller$6(Lcom/android/server/alarm/Alarm;)Z
    .registers 2
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 72
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isService()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$registerPuller$7(Lcom/android/server/alarm/Alarm;)Z
    .registers 2
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 73
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic lambda$registerPuller$8(JLcom/android/server/alarm/Alarm;)Z
    .registers 7
    .param p0, "now"    # J
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 75
    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    add-long/2addr v2, p0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method static synthetic lambda$registerPuller$9(Lcom/android/server/alarm/Alarm;)Z
    .registers 5
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 76
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static pushAlarmBatchDelivered(II)V
    .registers 3
    .param p0, "numAlarms"    # I
    .param p1, "wakeups"    # I

    .line 115
    const/16 v0, 0x16f

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 119
    return-void
.end method

.method static pushAlarmScheduled(Lcom/android/server/alarm/Alarm;I)V
    .registers 16
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;
    .param p1, "callerProcState"    # I

    .line 101
    iget v1, p0, Lcom/android/server/alarm/Alarm;->uid:I

    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_e

    move v6, v2

    goto :goto_f

    :cond_e
    move v6, v3

    :goto_f
    iget-boolean v7, p0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_19

    move v8, v2

    goto :goto_1a

    :cond_19
    move v8, v3

    :goto_1a
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_20

    move v9, v2

    goto :goto_21

    :cond_20
    move v9, v3

    :goto_21
    iget-wide v10, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    cmp-long v0, v10, v4

    if-eqz v0, :cond_29

    move v10, v2

    goto :goto_2a

    :cond_29
    move v10, v3

    :goto_2a
    iget v0, p0, Lcom/android/server/alarm/Alarm;->mExactAllowReason:I

    .line 109
    invoke-static {v0}, Lcom/android/server/alarm/MetricsHelper;->reasonToStatsReason(I)I

    move-result v11

    iget v0, p0, Lcom/android/server/alarm/Alarm;->type:I

    .line 110
    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v12

    .line 111
    invoke-static {p1}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v13

    .line 101
    const/16 v0, 0x170

    move v2, v6

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    move v7, v11

    move v8, v12

    move v9, v13

    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZZZZZIZI)V

    .line 112
    return-void
.end method

.method private static reasonToStatsReason(I)I
    .registers 2
    .param p0, "reasonCode"    # I

    .line 86
    packed-switch p0, :pswitch_data_e

    .line 96
    const/4 v0, 0x0

    return v0

    .line 94
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 92
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 88
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 90
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method synthetic lambda$registerPuller$12$com-android-server-alarm-MetricsHelper(Ljava/util/function/Supplier;ILjava/util/List;)I
    .registers 25
    .param p1, "alarmStoreSupplier"    # Ljava/util/function/Supplier;
    .param p2, "atomTag"    # I
    .param p3, "data"    # Ljava/util/List;

    .line 53
    move/from16 v15, p2

    const/16 v0, 0x277a

    if-ne v15, v0, :cond_af

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 57
    .local v13, "now":J
    move-object/from16 v12, p0

    iget-object v11, v12, Lcom/android/server/alarm/MetricsHelper;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 58
    :try_start_f
    invoke-interface/range {p1 .. p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/AlarmStore;

    .line 59
    .local v0, "alarmStore":Lcom/android/server/alarm/AlarmStore;
    nop

    .line 60
    invoke-interface {v0}, Lcom/android/server/alarm/AlarmStore;->size()I

    move-result v2

    new-instance v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 61
    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v3

    new-instance v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda4;-><init>()V

    .line 62
    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v4

    new-instance v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda5;-><init>()V

    .line 63
    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v5

    new-instance v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda6;-><init>()V

    .line 65
    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v6

    new-instance v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda7;-><init>()V

    .line 67
    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v7

    new-instance v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda8;-><init>()V

    .line 69
    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v8

    new-instance v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda9;-><init>()V

    .line 71
    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v9

    new-instance v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda10;-><init>()V

    .line 73
    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v10

    new-instance v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;

    invoke-direct {v1, v13, v14}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;-><init>(J)V

    .line 74
    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v16

    new-instance v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda12;-><init>()V

    .line 76
    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v17

    new-instance v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda2;-><init>()V

    .line 77
    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v18

    new-instance v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda3;-><init>()V

    .line 78
    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v19
    :try_end_86
    .catchall {:try_start_f .. :try_end_86} :catchall_a4

    .line 59
    move/from16 v1, p2

    move-object/from16 v20, v11

    move/from16 v11, v16

    move/from16 v12, v17

    move-wide/from16 v16, v13

    .end local v13    # "now":J
    .local v16, "now":J
    move/from16 v13, v18

    move/from16 v14, v19

    :try_start_94
    invoke-static/range {v1 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v1
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_a0

    move-object/from16 v2, p3

    :try_start_9a
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const/4 v1, 0x0

    monitor-exit v20

    return v1

    .line 81
    .end local v0    # "alarmStore":Lcom/android/server/alarm/AlarmStore;
    :catchall_a0
    move-exception v0

    move-object/from16 v2, p3

    goto :goto_ab

    .end local v16    # "now":J
    .restart local v13    # "now":J
    :catchall_a4
    move-exception v0

    move-object/from16 v2, p3

    move-object/from16 v20, v11

    move-wide/from16 v16, v13

    .end local v13    # "now":J
    .restart local v16    # "now":J
    :goto_ab
    monitor-exit v20
    :try_end_ac
    .catchall {:try_start_9a .. :try_end_ac} :catchall_ad

    throw v0

    :catchall_ad
    move-exception v0

    goto :goto_ab

    .line 54
    .end local v16    # "now":J
    :cond_af
    move-object/from16 v2, p3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method registerPuller(Ljava/util/function/Supplier;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/alarm/AlarmStore;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "alarmStoreSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/alarm/AlarmStore;>;"
    iget-object v0, p0, Lcom/android/server/alarm/MetricsHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 51
    .local v0, "statsManager":Landroid/app/StatsManager;
    nop

    .line 52
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/MetricsHelper;Ljava/util/function/Supplier;)V

    .line 51
    const/16 v3, 0x277a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 83
    return-void
.end method
