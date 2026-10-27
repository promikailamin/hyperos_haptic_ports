.class Lcom/android/server/alarm/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field private mFalseWakeups:I

.field private mWtfThreshold:I

.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    .line 4675
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 4676
    const-string p1, "AlarmManager"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4677
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 4678
    const/16 p1, 0x64

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    .line 4679
    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .line 4682
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 4685
    .local v2, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :goto_8
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->waitForAlarm()I

    move-result v3

    .line 4686
    .local v3, "result":I
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 4687
    .local v4, "nowRTC":J
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v6

    .line 4688
    .local v6, "nowELAPSED":J
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 4689
    :try_start_2b
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0, v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmLastWakeup(Lcom/android/server/alarm/AlarmManagerService;J)V

    .line 4690
    monitor-exit v8
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_279

    .line 4691
    if-nez v3, :cond_56

    .line 4692
    const-string v0, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "waitForAlarm returned 0, nowRTC = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nowElapsed = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4695
    :cond_56
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4697
    const/high16 v0, 0x10000

    and-int v8, v3, v0

    if-eqz v8, :cond_100

    .line 4702
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 4703
    :try_start_64
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v9, v9, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 4704
    .local v9, "lastTimeChangeClockTime":J
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v11, v11, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    sub-long v11, v6, v11

    add-long/2addr v11, v9

    .line 4706
    .local v11, "expectedClockTime":J
    monitor-exit v8
    :try_end_70
    .catchall {:try_start_64 .. :try_end_70} :catchall_fd

    .line 4707
    const-wide/16 v13, 0x0

    cmp-long v8, v9, v13

    if-eqz v8, :cond_83

    const-wide/16 v13, 0x3e8

    sub-long v15, v11, v13

    cmp-long v8, v4, v15

    if-ltz v8, :cond_83

    add-long/2addr v13, v11

    cmp-long v8, v4, v13

    if-lez v8, :cond_100

    .line 4715
    :cond_83
    const/16 v8, 0x2d

    invoke-static {v8, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    .line 4716
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v13, v8, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    const/4 v14, 0x0

    invoke-virtual {v8, v14, v13}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4717
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v13, v8, Lcom/android/server/alarm/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v8, v13, v14}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4718
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v8}, Lcom/android/server/alarm/AlarmManagerService;->reevaluateRtcAlarms()V

    .line 4719
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v8}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 4720
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v8}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 4721
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v13, v8, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 4722
    :try_start_af
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v15, v8, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v8, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    .line 4723
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iput-wide v4, v8, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 4724
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iput-wide v6, v8, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 4725
    monitor-exit v13
    :try_end_c0
    .catchall {:try_start_af .. :try_end_c0} :catchall_fa

    .line 4726
    new-instance v8, Landroid/content/Intent;

    const-string v13, "android.intent.action.TIME_SET"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4727
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v13, 0x25200000

    invoke-virtual {v8, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4731
    iget-object v13, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v15, v13, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    iget-object v13, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v13}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v13

    .line 4732
    invoke-virtual {v13}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v16

    const/16 v18, 0x0

    const/16 v19, 0xcd

    const-string v20, ""

    .line 4731
    invoke-virtual/range {v15 .. v20}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 4735
    iget-object v13, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v13}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v13

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 4736
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 4735
    invoke-virtual {v13, v8, v15, v14, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4739
    or-int/lit8 v3, v3, 0x5

    move v9, v3

    goto :goto_101

    .line 4725
    .end local v8    # "intent":Landroid/content/Intent;
    :catchall_fa
    move-exception v0

    :try_start_fb
    monitor-exit v13
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw v0

    .line 4706
    .end local v9    # "lastTimeChangeClockTime":J
    .end local v11    # "expectedClockTime":J
    :catchall_fd
    move-exception v0

    :try_start_fe
    monitor-exit v8
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    throw v0

    .line 4743
    :cond_100
    move v9, v3

    .end local v3    # "result":I
    .local v9, "result":I
    :goto_101
    const/high16 v0, 0x10000

    if-eq v9, v0, :cond_269

    .line 4746
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4752
    :try_start_10a
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0, v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmLastTrigger(Lcom/android/server/alarm/AlarmManagerService;J)V

    .line 4753
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;J)I

    move-result v0

    .line 4754
    .local v0, "wakeUps":I
    if-nez v0, :cond_15a

    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v8

    if-eqz v8, :cond_15a

    .line 4757
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_13c

    .line 4758
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iput-wide v6, v8, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 4759
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 4760
    invoke-virtual {v8, v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v10

    const-wide/16 v12, 0x3

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    add-long/2addr v10, v6

    iput-wide v10, v8, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 4762
    :cond_13c
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4763
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v10, v8, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v8, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    .line 4764
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v8}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4765
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v8}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    goto/16 :goto_264

    .line 4771
    :cond_15a
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_199

    .line 4772
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v8, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 4773
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4774
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v2, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4775
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v10, v8, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v10, v6, v10

    .line 4776
    .local v10, "thisDelayTime":J
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v12, v8, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v12, v10

    iput-wide v12, v8, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 4777
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v12, v8, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v8, v12, v10

    if-gez v8, :cond_192

    .line 4778
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iput-wide v10, v8, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 4780
    :cond_192
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 4782
    .end local v10    # "thisDelayTime":J
    :cond_199
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v10, v8, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    cmp-long v8, v10, v6

    if-eqz v8, :cond_1e4

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1e4

    .line 4783
    iget v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    iget v10, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    if-lt v8, v10, :cond_1e4

    .line 4784
    const-string v8, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Too many ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") false wakeups, nowElapsed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4786
    iget v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    const v10, 0x186a0

    if-ge v8, v10, :cond_1e1

    .line 4787
    mul-int/lit8 v8, v8, 0xa

    iput v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    goto :goto_1e4

    .line 4789
    :cond_1e1
    const/4 v8, 0x0

    iput v8, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 4793
    :cond_1e4
    :goto_1e4
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 4795
    .local v8, "triggerPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1ea
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_234

    .line 4796
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/Alarm;

    .line 4797
    .local v11, "a":Lcom/android/server/alarm/Alarm;
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v12, v12, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v12, v12, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-eqz v12, :cond_218

    .line 4798
    invoke-static {v11}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromTare(Lcom/android/server/alarm/Alarm;)Z

    move-result v12

    if-nez v12, :cond_231

    .line 4799
    iget-object v12, v11, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget v13, v11, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 4801
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 4799
    invoke-static {v12, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_231

    .line 4803
    :cond_218
    invoke-static {v11}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    move-result v12

    if-nez v12, :cond_231

    .line 4804
    iget-object v12, v11, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget v13, v11, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 4805
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 4804
    invoke-static {v12, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4795
    .end local v11    # "a":Lcom/android/server/alarm/Alarm;
    :cond_231
    :goto_231
    add-int/lit8 v10, v10, 0x1

    goto :goto_1ea

    .line 4808
    .end local v10    # "i":I
    :cond_234
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v10, v2, v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 4809
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v10, v6, v7}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->cleanUpExpiredQuotas(J)V

    .line 4810
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v10, v10, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-eqz v10, :cond_24e

    .line 4811
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v10, v8}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnTare(Landroid/util/ArraySet;)Z

    goto :goto_253

    .line 4813
    :cond_24e
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v10, v8}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    .line 4815
    :goto_253
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v10}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4816
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v10}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 4817
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10, v0}, Lcom/android/server/alarm/MetricsHelper;->pushAlarmBatchDelivered(II)V

    .line 4819
    .end local v0    # "wakeUps":I
    .end local v8    # "triggerPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_264
    monitor-exit v3

    goto :goto_274

    :catchall_266
    move-exception v0

    monitor-exit v3
    :try_end_268
    .catchall {:try_start_10a .. :try_end_268} :catchall_266

    throw v0

    .line 4824
    :cond_269
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 4825
    :try_start_26e
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4826
    monitor-exit v10

    .line 4828
    .end local v4    # "nowRTC":J
    .end local v6    # "nowELAPSED":J
    .end local v9    # "result":I
    :goto_274
    goto/16 :goto_8

    .line 4826
    .restart local v4    # "nowRTC":J
    .restart local v6    # "nowELAPSED":J
    .restart local v9    # "result":I
    :catchall_276
    move-exception v0

    monitor-exit v10
    :try_end_278
    .catchall {:try_start_26e .. :try_end_278} :catchall_276

    throw v0

    .line 4690
    .end local v9    # "result":I
    .restart local v3    # "result":I
    :catchall_279
    move-exception v0

    :try_start_27a
    monitor-exit v8
    :try_end_27b
    .catchall {:try_start_27a .. :try_end_27b} :catchall_279

    throw v0
.end method
