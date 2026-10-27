.class public Lcom/android/server/alarm/AlarmManagerService$7;
.super Lcom/android/server/AppStateTrackerImpl$Listener;
.source "AlarmManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public static synthetic $r8$lambda$AinQYnhWVt71NkQ037hWAS7gdhc(Lcom/android/server/alarm/AlarmManagerService$7;ILcom/android/server/alarm/Alarm;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$7;->lambda$updateAlarmsForUid$1(ILcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pBK0ysRM9OxX6J2fPvjoLldHNMA(Lcom/android/server/alarm/AlarmManagerService$7;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$7;->lambda$updateAllAlarms$0(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    .line 5084
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$updateAlarmsForUid$1(ILcom/android/server/alarm/Alarm;)Z
    .registers 4

    .line 5105
    iget v0, p2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-eq v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 5108
    :cond_6
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0, p2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$updateAllAlarms$0(Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 5094
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public removeAlarmsForUid(I)V
    .registers 3

    .line 5141
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5142
    :try_start_5
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeForStoppedLocked(I)V

    .line 5143
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public unblockAlarmsForUid(I)V
    .registers 4

    .line 5125
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5127
    :try_start_5
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 5128
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public unblockAlarmsForUidPackage(ILjava/lang/String;)V
    .registers 4

    .line 5134
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5135
    :try_start_5
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 5136
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public unblockAllUnrestrictedAlarms()V
    .registers 2

    .line 5118
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5119
    :try_start_5
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->sendAllUnrestrictedPendingBackgroundAlarmsLocked()V

    .line 5120
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public updateAlarmsForUid(I)V
    .registers 5

    .line 5103
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5104
    :try_start_5
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$7$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$7$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService$7;I)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 5110
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 5112
    :cond_1c
    :goto_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1a

    throw p0
.end method

.method public updateAllAlarms()V
    .registers 4

    .line 5092
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5093
    :try_start_5
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$7$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$7$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService$7;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 5095
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 5097
    :cond_1c
    :goto_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1a

    throw p0
.end method
