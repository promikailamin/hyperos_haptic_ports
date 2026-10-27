.class public Lcom/android/server/alarm/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# instance fields
.field public mFalseWakeups:I

.field public mWtfThreshold:I

.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    .line 4440
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 4441
    const-string p1, "AlarmManager"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4442
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    const/16 p1, 0x64

    .line 4443
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    move-object/from16 v0, p0

    .line 4447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4449
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4450
    :try_start_c
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 4451
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 4452
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2c6

    .line 4455
    :goto_25
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->waitForAlarm()I

    move-result v2

    .line 4456
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    .line 4457
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v5}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v5

    .line 4458
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4459
    :try_start_48
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v8, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmLastWakeup(Lcom/android/server/alarm/AlarmManagerService;J)V

    .line 4460
    monitor-exit v7
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_2c3

    if-nez v2, :cond_6f

    .line 4462
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "waitForAlarm returned 0, nowRTC = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", nowElapsed = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4465
    :cond_6f
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/high16 v7, 0x10000

    and-int v8, v2, v7

    const/4 v9, 0x1

    if-eqz v8, :cond_110

    .line 4472
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 4473
    :try_start_7e
    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v11, v10, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 4474
    iget-wide v13, v10, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    sub-long v13, v5, v13

    add-long/2addr v11, v13

    .line 4476
    monitor-exit v8
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_10d

    const-wide/16 v13, 0x3e8

    sub-long v15, v11, v13

    cmp-long v8, v3, v15

    if-ltz v8, :cond_95

    add-long/2addr v11, v13

    cmp-long v8, v3, v11

    if-lez v8, :cond_110

    :cond_95
    const/16 v8, 0x2d

    .line 4484
    invoke-static {v8, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    .line 4485
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v8, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v10}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4486
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v8, Lcom/android/server/alarm/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v8, v10, v11}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4487
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v8}, Lcom/android/server/alarm/AlarmManagerService;->reevaluateRtcAlarms()V

    .line 4488
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v8}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 4489
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v8}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 4490
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v8, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 4491
    :try_start_c1
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v12, v8, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    add-int/2addr v12, v9

    iput v12, v8, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    .line 4492
    iput-wide v3, v8, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 4493
    iput-wide v5, v8, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 4494
    monitor-exit v10
    :try_end_cd
    .catchall {:try_start_c1 .. :try_end_cd} :catchall_10a

    .line 4495
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.TIME_SET"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x25200000

    .line 4496
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4500
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v12, v4, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v4

    .line 4501
    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v13

    const/16 v16, 0xcd

    const-string v17, ""

    const/4 v15, 0x0

    .line 4500
    invoke-virtual/range {v12 .. v17}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 4504
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    invoke-virtual {v4, v9}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 4506
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 4507
    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    .line 4506
    invoke-virtual {v4, v3, v8, v11, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    or-int/lit8 v2, v2, 0x5

    goto :goto_110

    :catchall_10a
    move-exception v0

    .line 4494
    :try_start_10b
    monitor-exit v10
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_10a

    throw v0

    :catchall_10d
    move-exception v0

    .line 4476
    :try_start_10e
    monitor-exit v8
    :try_end_10f
    .catchall {:try_start_10e .. :try_end_10f} :catchall_10d

    throw v0

    :cond_110
    :goto_110
    if-eq v2, v7, :cond_2b3

    .line 4517
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4523
    :try_start_117
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmStartUserBeforeScheduledAlarms(Lcom/android/server/alarm/AlarmManagerService;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_15a

    .line 4524
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    .line 4525
    invoke-virtual {v3, v5, v6}, Lcom/android/server/alarm/UserWakeupStore;->getUserIdsToWakeup(J)[I

    move-result-object v3

    move v7, v4

    .line 4526
    :goto_129
    array-length v8, v3

    if-ge v7, v8, :cond_15a

    .line 4527
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v8}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v8

    aget v10, v3, v7

    invoke-virtual {v8, v10, v4}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v8

    if-nez v8, :cond_14e

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v8}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v8

    aget v10, v3, v7

    sget v11, Lcom/android/server/alarm/UserWakeupStore;->USER_RUN_FOR_TIME_SECS:I

    .line 4529
    invoke-virtual {v8, v10, v11}, Landroid/app/ActivityManagerInternal;->startUserInBackgroundTemporarily(II)Z

    move-result v8

    if-nez v8, :cond_157

    goto :goto_14e

    :catchall_14b
    move-exception v0

    goto/16 :goto_2b1

    .line 4532
    :cond_14e
    :goto_14e
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    aget v10, v3, v7

    invoke-virtual {v8, v10}, Lcom/android/server/alarm/UserWakeupStore;->removeUserWakeup(I)V

    :cond_157
    add-int/lit8 v7, v7, 0x1

    goto :goto_129

    .line 4536
    :cond_15a
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v3, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmLastTrigger(Lcom/android/server/alarm/AlarmManagerService;J)V

    .line 4537
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v3, v1, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;J)I

    move-result v3

    if-nez v3, :cond_1a8

    .line 4538
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v7, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v7

    if-eqz v7, :cond_1a8

    .line 4541
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_18a

    .line 4542
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iput-wide v5, v3, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 4544
    invoke-virtual {v3, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v7

    const-wide/16 v9, 0x3

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x2

    div-long/2addr v7, v9

    add-long/2addr v5, v7

    iput-wide v5, v3, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 4546
    :cond_18a
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4547
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v4, v3, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    .line 4548
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4549
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    goto/16 :goto_2ae

    .line 4555
    :cond_1a8
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1df

    .line 4556
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v7, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 4557
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4558
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4559
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v10, v7, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v10, v5, v10

    .line 4560
    iget-wide v12, v7, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v12, v10

    iput-wide v12, v7, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 4561
    iget-wide v12, v7, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v8, v12, v10

    if-gez v8, :cond_1da

    .line 4562
    iput-wide v10, v7, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 4564
    :cond_1da
    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 4566
    :cond_1df
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_224

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_224

    .line 4567
    iget v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    add-int/2addr v7, v9

    iput v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    iget v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    if-lt v7, v8, :cond_224

    .line 4568
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Too many ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") false wakeups, nowElapsed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4570
    iget v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    const v8, 0x186a0

    if-ge v7, v8, :cond_222

    mul-int/lit8 v7, v7, 0xa

    .line 4571
    iput v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    goto :goto_224

    .line 4573
    :cond_222
    iput v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 4577
    :cond_224
    :goto_224
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 4578
    new-instance v8, Landroid/util/IntArray;

    invoke-direct {v8}, Landroid/util/IntArray;-><init>()V

    .line 4579
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 4580
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    .line 4581
    :goto_238
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_26f

    .line 4582
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/Alarm;

    .line 4583
    iget v12, v11, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v9, v12}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smincrement(Landroid/util/SparseIntArray;I)V

    .line 4584
    iget-boolean v12, v11, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v12, :cond_257

    .line 4585
    iget v12, v11, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v8, v12}, Landroid/util/IntArray;->add(I)V

    .line 4586
    iget v12, v11, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v10, v12}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smincrement(Landroid/util/SparseIntArray;I)V

    .line 4588
    :cond_257
    invoke-static {v11}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    move-result v12

    if-nez v12, :cond_26c

    .line 4589
    iget v12, v11, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 4590
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    iget-object v11, v11, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 4589
    invoke-static {v12, v11}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_26c
    add-int/lit8 v4, v4, 0x1

    goto :goto_238

    .line 4593
    :cond_26f
    invoke-virtual {v8}, Landroid/util/IntArray;->size()I

    move-result v4

    if-lez v4, :cond_28a

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmBatteryStatsInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/os/BatteryStatsInternal;

    move-result-object v4

    if-eqz v4, :cond_28a

    .line 4594
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmBatteryStatsInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/os/BatteryStatsInternal;

    move-result-object v4

    .line 4595
    invoke-virtual {v8}, Landroid/util/IntArray;->toArray()[I

    move-result-object v8

    .line 4594
    invoke-virtual {v4, v5, v6, v8}, Landroid/os/BatteryStatsInternal;->noteWakingAlarmBatch(J[I)V

    .line 4597
    :cond_28a
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 4598
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->cleanUpExpiredQuotas(J)V

    .line 4599
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v7}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    .line 4600
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4601
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 4602
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 4603
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4602
    invoke-static {v4, v5, v3, v9, v10}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mlogAlarmBatchDelivered(Lcom/android/server/alarm/AlarmManagerService;IILandroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 4605
    :goto_2ae
    monitor-exit v2

    goto/16 :goto_25

    :goto_2b1
    monitor-exit v2
    :try_end_2b2
    .catchall {:try_start_117 .. :try_end_2b2} :catchall_14b

    throw v0

    .line 4610
    :cond_2b3
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4611
    :try_start_2b8
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4612
    monitor-exit v2

    goto/16 :goto_25

    :catchall_2c0
    move-exception v0

    monitor-exit v2
    :try_end_2c2
    .catchall {:try_start_2b8 .. :try_end_2c2} :catchall_2c0

    throw v0

    :catchall_2c3
    move-exception v0

    .line 4460
    :try_start_2c4
    monitor-exit v7
    :try_end_2c5
    .catchall {:try_start_2c4 .. :try_end_2c5} :catchall_2c3

    throw v0

    :catchall_2c6
    move-exception v0

    .line 4452
    :try_start_2c7
    monitor-exit v2
    :try_end_2c8
    .catchall {:try_start_2c7 .. :try_end_2c8} :catchall_2c6

    throw v0
.end method
