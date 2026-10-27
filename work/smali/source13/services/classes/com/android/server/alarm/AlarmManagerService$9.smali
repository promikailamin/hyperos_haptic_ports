.class Lcom/android/server/alarm/AlarmManagerService$9;
.super Lcom/android/server/AppStateTrackerImpl$Listener;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 5337
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$updateAlarmsForUid$1$com-android-server-alarm-AlarmManagerService$9(ILcom/android/server/alarm/Alarm;)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 5358
    iget v0, p2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-eq v0, p1, :cond_6

    .line 5359
    const/4 v0, 0x0

    return v0

    .line 5361
    :cond_6
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0, p2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$updateAllAlarms$0$com-android-server-alarm-AlarmManagerService$9(Lcom/android/server/alarm/Alarm;)Z
    .registers 3
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 5347
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method public removeAlarmsForUid(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 5396
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5397
    :try_start_5
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeForStoppedLocked(I)V

    .line 5398
    monitor-exit v0

    .line 5399
    return-void

    .line 5398
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public unblockAlarmsForUid(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 5380
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5382
    :try_start_5
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 5383
    monitor-exit v0

    .line 5384
    return-void

    .line 5383
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public unblockAlarmsForUidPackage(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 5389
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5390
    :try_start_5
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 5391
    monitor-exit v0

    .line 5392
    return-void

    .line 5391
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public unblockAllUnrestrictedAlarms()V
    .registers 3

    .line 5373
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5374
    :try_start_5
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->sendAllUnrestrictedPendingBackgroundAlarmsLocked()V

    .line 5375
    monitor-exit v0

    .line 5376
    return-void

    .line 5375
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public updateAlarmsForUid(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 5356
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5357
    :try_start_5
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService$9;I)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 5363
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 5365
    :cond_19
    monitor-exit v0

    .line 5366
    return-void

    .line 5365
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public updateAllAlarms()V
    .registers 4

    .line 5345
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5346
    :try_start_5
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService$9;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 5348
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 5350
    :cond_19
    monitor-exit v0

    .line 5351
    return-void

    .line 5350
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v1
.end method
