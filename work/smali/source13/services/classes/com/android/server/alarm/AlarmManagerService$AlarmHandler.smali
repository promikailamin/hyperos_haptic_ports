.class Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;
.super Landroid/os/Handler;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlarmHandler"
.end annotation


# static fields
.field public static final ALARM_EVENT:I = 0x1

.field public static final APP_STANDBY_BUCKET_CHANGED:I = 0x5

.field public static final CHARGING_STATUS_CHANGED:I = 0x6

.field public static final CHECK_EXACT_ALARM_PERMISSION_ON_UPDATE:I = 0xd

.field public static final EXACT_ALARM_DENY_LIST_PACKAGES_ADDED:I = 0x9

.field public static final EXACT_ALARM_DENY_LIST_PACKAGES_REMOVED:I = 0xa

.field public static final LISTENER_TIMEOUT:I = 0x3

.field public static final REFRESH_EXACT_ALARM_CANDIDATES:I = 0xb

.field public static final REMOVE_EXACT_ALARMS:I = 0x8

.field public static final REMOVE_FOR_CANCELED:I = 0x7

.field public static final REPORT_ALARMS_ACTIVE:I = 0x4

.field public static final SEND_NEXT_ALARM_CLOCK_CHANGED:I = 0x2

.field public static final TARE_AFFORDABILITY_CHANGED:I = 0xc

.field public static final TEMPORARY_QUOTA_CHANGED:I = 0xe


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 4921
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 4922
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4923
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 4927
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_178

    goto/16 :goto_176

    .line 5033
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5034
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 5035
    .local v1, "uid":I
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_176

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5036
    invoke-virtual {v3, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_176

    .line 5037
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v3, v1, v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V

    goto/16 :goto_176

    .line 4998
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "uid":I
    :pswitch_27
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4999
    :try_start_2c
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 5000
    .local v1, "userId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 5002
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 5003
    .local v3, "filterPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5004
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnTare(Landroid/util/ArraySet;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 5005
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 5006
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 5008
    .end local v1    # "userId":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "filterPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_54
    monitor-exit v0

    .line 5009
    goto/16 :goto_176

    .line 5008
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_2c .. :try_end_59} :catchall_57

    throw v1

    .line 5030
    :pswitch_5a
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->refreshExactAlarmCandidates()V

    .line 5031
    goto/16 :goto_176

    .line 5027
    :pswitch_61
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->handleChangesToExactAlarmDenyList(Landroid/util/ArraySet;Z)V

    .line 5028
    goto/16 :goto_176

    .line 5024
    :pswitch_6c
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/alarm/AlarmManagerService;->handleChangesToExactAlarmDenyList(Landroid/util/ArraySet;Z)V

    .line 5025
    goto/16 :goto_176

    .line 5019
    :pswitch_77
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5020
    .local v0, "uid":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 5021
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/alarm/AlarmManagerService;->removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V

    .line 5022
    goto/16 :goto_176

    .line 5012
    .end local v0    # "uid":I
    .end local v1    # "packageName":Ljava/lang/String;
    :pswitch_84
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    .line 5013
    .local v0, "operation":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5014
    :try_start_8d
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v4, 0x4

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 5015
    monitor-exit v2

    .line 5016
    goto/16 :goto_176

    .line 5015
    :catchall_96
    move-exception v1

    monitor-exit v2
    :try_end_98
    .catchall {:try_start_8d .. :try_end_98} :catchall_96

    throw v1

    .line 4976
    .end local v0    # "operation":Landroid/app/PendingIntent;
    :pswitch_99
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4977
    :try_start_9e
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    .line 4978
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 4979
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4980
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 4982
    :cond_bc
    monitor-exit v0

    .line 4983
    goto/16 :goto_176

    .line 4982
    :catchall_bf
    move-exception v1

    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_9e .. :try_end_c1} :catchall_bf

    throw v1

    .line 4987
    :pswitch_c2
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4988
    :try_start_c7
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 4989
    .local v1, "filterPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4990
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 4991
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4992
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 4994
    .end local v1    # "filterPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_ef
    monitor-exit v0

    .line 4995
    goto/16 :goto_176

    .line 4994
    :catchall_f2
    move-exception v1

    monitor-exit v0
    :try_end_f4
    .catchall {:try_start_c7 .. :try_end_f4} :catchall_f2

    throw v1

    .line 4970
    :pswitch_f5
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz v0, :cond_176

    .line 4971
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_104

    move v2, v3

    :cond_104
    invoke-interface {v0, v2}, Lcom/android/server/DeviceIdleInternal;->setAlarmsActive(Z)V

    goto :goto_176

    .line 4966
    :pswitch_108
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->alarmTimedOut(Landroid/os/IBinder;)V

    .line 4967
    goto :goto_176

    .line 4962
    :pswitch_114
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$msendNextAlarmClockChanged(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 4963
    goto :goto_176

    .line 4933
    :pswitch_11a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4934
    .local v0, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4935
    :try_start_124
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v4

    .line 4936
    .local v4, "nowELAPSED":J
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v6, v0, v4, v5}, Lcom/android/server/alarm/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;J)I

    .line 4937
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v6}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 4938
    .end local v4    # "nowELAPSED":J
    monitor-exit v2
    :try_end_139
    .catchall {:try_start_124 .. :try_end_139} :catchall_173

    .line 4941
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_172

    .line 4942
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 4945
    .local v4, "alarm":Lcom/android/server/alarm/Alarm;
    :try_start_146
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v5, v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mgetAlarmOperationBundle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;

    move-result-object v13

    .line 4946
    .local v13, "bundle":Landroid/os/Bundle;
    iget-object v6, v4, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_157
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_146 .. :try_end_157} :catch_158

    .line 4955
    .end local v13    # "bundle":Landroid/os/Bundle;
    goto :goto_168

    .line 4949
    :catch_158
    move-exception v5

    .line 4950
    .local v5, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v6, v4, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_168

    .line 4953
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v4, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4956
    .end local v5    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_168
    :goto_168
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v6, v4, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v5, v6, v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mdecrementAlarmCount(Lcom/android/server/alarm/AlarmManagerService;II)V

    .line 4941
    .end local v4    # "alarm":Lcom/android/server/alarm/Alarm;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13a

    .line 4958
    .end local v2    # "i":I
    :cond_172
    goto :goto_176

    .line 4938
    :catchall_173
    move-exception v1

    :try_start_174
    monitor-exit v2
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_173

    throw v1

    .line 5044
    .end local v0    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_176
    :goto_176
    return-void

    nop

    :pswitch_data_178
    .packed-switch 0x1
        :pswitch_11a
        :pswitch_114
        :pswitch_108
        :pswitch_f5
        :pswitch_c2
        :pswitch_99
        :pswitch_84
        :pswitch_77
        :pswitch_6c
        :pswitch_61
        :pswitch_5a
        :pswitch_27
        :pswitch_a
        :pswitch_c2
    .end packed-switch
.end method
