.class public Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;
.super Landroid/app/IAlarmCompleteListener$Stub;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public static synthetic $r8$lambda$62Drd0vqnQmV2BTyiiOtLERwqAU(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;Lcom/android/server/alarm/Alarm;ZZLcom/android/server/alarm/Alarm;)Z
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->lambda$deliverLocked$1(Lcom/android/server/alarm/Alarm;ZZLcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TjsvVoOAEgUSOYZAfIv13a5CFjE(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;Lcom/android/server/alarm/Alarm;ZZLcom/android/server/alarm/Alarm;)Z
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->lambda$deliverLocked$0(Lcom/android/server/alarm/Alarm;ZZLcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    .line 5181
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmCompleteListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public alarmComplete(Landroid/os/IBinder;)V
    .registers 7

    if-nez p1, :cond_2b

    .line 5268
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid alarmComplete: uid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5269
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5268
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    return-void

    .line 5273
    :cond_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5275
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_5a

    .line 5276
    :try_start_34
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5277
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/alarm/AlarmManagerService$InFlight;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 5282
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    .line 5283
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V

    goto :goto_53

    :catchall_51
    move-exception p0

    goto :goto_58

    .line 5291
    :cond_53
    :goto_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_34 .. :try_end_54} :catchall_51

    .line 5293
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 5291
    :goto_58
    :try_start_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_51

    :try_start_59
    throw p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p0

    .line 5293
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5294
    throw p0
.end method

.method public alarmTimedOut(Landroid/os/IBinder;)V
    .registers 5

    .line 5313
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5314
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/alarm/AlarmManagerService$InFlight;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 5320
    invoke-virtual {p0, v1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    .line 5321
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V

    goto :goto_34

    :catchall_1a
    move-exception p0

    goto :goto_36

    .line 5326
    :cond_1c
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spurious timeout of listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 5328
    :goto_34
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_1a

    throw p0
.end method

.method public deliverLocked(Lcom/android/server/alarm/Alarm;J)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 5337
    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smgetAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I

    move-result v4

    .line 5336
    invoke-static {v4}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v4

    .line 5343
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v7, v6, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v7, :cond_32

    .line 5344
    iget-object v7, v1, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget v11, v1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget-object v12, v1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {v6, v7, v11, v12, v10}, Lcom/android/server/alarm/AlarmManagerService;->setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 5345
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5346
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {v6, v8, v10, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 5351
    :cond_32
    :try_start_32
    iget-object v6, v1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v6, :cond_98

    .line 5353
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v6}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmSendCount(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result v7

    add-int/2addr v7, v10

    invoke-static {v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmSendCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_6c

    .line 5356
    :try_start_40
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v6, v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mgetAlarmOperationBundle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;

    move-result-object v18

    .line 5357
    iget-object v11, v1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v6}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v6}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmBackgroundIntent(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android.intent.extra.ALARM_COUNT"

    iget v13, v1, Lcom/android/server/alarm/Alarm;->count:I

    .line 5358
    invoke-virtual {v6, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v15, v6, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 v17, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v6

    .line 5357
    invoke-virtual/range {v11 .. v18}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_6a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_40 .. :try_end_6a} :catch_6f
    .catchall {:try_start_40 .. :try_end_6a} :catchall_6c

    goto/16 :goto_f4

    :catchall_6c
    move-exception v0

    goto/16 :goto_20c

    .line 5361
    :catch_6f
    :try_start_6f
    iget-wide v2, v1, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_7f

    .line 5364
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 5370
    :cond_7f
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result v2

    add-int/2addr v2, v10

    invoke-static {v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 5371
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v1, :cond_94

    .line 5374
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_94
    .catchall {:try_start_6f .. :try_end_94} :catchall_6c

    .line 5422
    :cond_94
    invoke-static {v4, v5}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    return-void

    .line 5380
    :cond_98
    :try_start_98
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v6}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmListenerCount(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result v7

    add-int/2addr v7, v10

    invoke-static {v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmListenerCount(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 5382
    iget-object v6, v1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v6}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v6, v7, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5385
    iget-object v6, v1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v11, v7, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v6, v11, :cond_d7

    .line 5386
    invoke-static {v7}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmTickHistory(Lcom/android/server/alarm/AlarmManagerService;)[J

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v7}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result v11

    add-int/lit8 v12, v11, 0x1

    invoke-static {v7, v12}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;I)V

    aput-wide v2, v6, v11

    .line 5387
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v6}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_d7

    .line 5388
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v6, v9}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;I)V
    :try_end_d7
    .catchall {:try_start_98 .. :try_end_d7} :catchall_6c

    .line 5398
    :cond_d7
    :try_start_d7
    iget-object v6, v1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v6, v0}, Landroid/app/IAlarmListener;->doAlarm(Landroid/app/IAlarmCompleteListener;)V

    .line 5399
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    iget-object v7, v1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 5401
    invoke-interface {v7}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v11, 0x3

    .line 5400
    invoke-virtual {v6, v11, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v11, v11, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v11, v11, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    .line 5399
    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_f4} :catch_1f3
    .catchall {:try_start_d7 .. :try_end_f4} :catchall_6c

    .line 5422
    :goto_f4
    invoke-static {v4, v5}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 5436
    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/android/server/alarm/AlarmManagerService$InFlight;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;J)V

    .line 5437
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5438
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v6, v5, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    add-int/2addr v6, v10

    iput v6, v5, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    .line 5439
    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService$InFlight;->isBroadcast()Z

    move-result v5

    if-eqz v5, :cond_119

    .line 5440
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v6, v1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mnotifyBroadcastAlarmPendingLocked(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 5442
    :cond_119
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v5, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v6, :cond_121

    move v6, v10

    goto :goto_122

    :cond_121
    move v6, v9

    .line 5443
    :goto_122
    invoke-static {v5}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAppStateTracker(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;

    move-result-object v5

    if-eqz v5, :cond_135

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v5}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAppStateTracker(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;

    move-result-object v5

    .line 5444
    invoke-virtual {v5}, Lcom/android/server/AppStateTrackerImpl;->isForceAllAppsStandbyEnabled()Z

    move-result v5

    if-eqz v5, :cond_135

    move v9, v10

    :cond_135
    if-nez v6, :cond_139

    if-eqz v9, :cond_182

    .line 5446
    :cond_139
    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smisAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v5

    if-eqz v5, :cond_165

    .line 5449
    iget v5, v1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/2addr v5, v8

    if-eqz v5, :cond_149

    .line 5450
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    goto :goto_14d

    .line 5451
    :cond_149
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 5452
    :goto_14d
    iget-object v7, v1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget v8, v1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 5453
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 5452
    invoke-virtual {v5, v7, v8, v2, v3}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->recordAlarmForPackage(Ljava/lang/String;IJ)V

    .line 5454
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v7, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v1, v6, v9}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;Lcom/android/server/alarm/Alarm;ZZ)V

    invoke-interface {v5, v7}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    goto :goto_182

    .line 5463
    :cond_165
    iget v5, v1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_182

    .line 5464
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v5}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmLastPriorityAlarmDispatch(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseLongArray;

    move-result-object v5

    iget v7, v1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v5, v7, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 5465
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v7, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0, v1, v6, v9}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;Lcom/android/server/alarm/Alarm;ZZ)V

    invoke-interface {v5, v7}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 5486
    :cond_182
    :goto_182
    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    move-result v5

    if-nez v5, :cond_1a5

    .line 5487
    iget v5, v1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 5488
    iget-boolean v6, v1, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    if-eqz v6, :cond_19c

    .line 5489
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    iget-object v7, v1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7, v5, v2, v3}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->recordUsage(Ljava/lang/String;IJ)V

    goto :goto_1a5

    .line 5491
    :cond_19c
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    iget-object v7, v1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7, v5, v2, v3}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->recordAlarmForPackage(Ljava/lang/String;IJ)V

    .line 5495
    :cond_1a5
    :goto_1a5
    iget-object v5, v4, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 5496
    iget v6, v5, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->count:I

    add-int/2addr v6, v10

    iput v6, v5, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->count:I

    .line 5497
    iget v6, v5, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v6, :cond_1b5

    .line 5498
    iput v10, v5, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    .line 5499
    iput-wide v2, v5, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->startTime:J

    goto :goto_1b8

    :cond_1b5
    add-int/2addr v6, v10

    .line 5501
    iput v6, v5, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    .line 5503
    :goto_1b8
    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 5504
    iget v6, v4, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    add-int/2addr v6, v10

    iput v6, v4, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    .line 5505
    iget v6, v4, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-nez v6, :cond_1c8

    .line 5506
    iput v10, v4, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    .line 5507
    iput-wide v2, v4, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->startTime:J

    goto :goto_1cb

    :cond_1c8
    add-int/2addr v6, v10

    .line 5509
    iput v6, v4, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    .line 5511
    :goto_1cb
    iget v2, v1, Lcom/android/server/alarm/Alarm;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1d4

    if-nez v2, :cond_1d3

    goto :goto_1d4

    :cond_1d3
    return-void

    .line 5513
    :cond_1d4
    :goto_1d4
    iget v2, v5, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/2addr v2, v10

    iput v2, v5, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 5514
    iget v2, v4, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/2addr v2, v10

    iput v2, v4, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    .line 5515
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v3, v1, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget v4, v1, Lcom/android/server/alarm/Alarm;->uid:I

    iget-object v5, v1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityManagerInternal;->noteWakeupAlarm(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5412
    :catch_1f3
    :try_start_1f3
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result v2

    add-int/2addr v2, v10

    invoke-static {v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 5413
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v1, :cond_208

    .line 5416
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_208
    .catchall {:try_start_1f3 .. :try_end_208} :catchall_6c

    .line 5422
    :cond_208
    invoke-static {v4, v5}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    return-void

    :goto_20c
    invoke-static {v4, v5}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 5423
    throw v0
.end method

.method public final synthetic lambda$deliverLocked$0(Lcom/android/server/alarm/Alarm;ZZLcom/android/server/alarm/Alarm;)Z
    .registers 7

    .line 5455
    iget v0, p4, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget p1, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_30

    invoke-static {p4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smisAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_30

    :cond_e
    const/4 p1, 0x1

    if-eqz p2, :cond_1b

    .line 5458
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p2, p4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result p2

    if-eqz p2, :cond_1b

    move p2, p1

    goto :goto_1c

    :cond_1b
    move p2, v1

    :goto_1c
    if-eqz p3, :cond_28

    .line 5459
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5460
    invoke-static {p0, p4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    if-eqz p0, :cond_28

    move p0, p1

    goto :goto_29

    :cond_28
    move p0, v1

    :goto_29
    if-nez p2, :cond_2f

    if-eqz p0, :cond_2e

    goto :goto_2f

    :cond_2e
    return v1

    :cond_2f
    :goto_2f
    return p1

    :cond_30
    :goto_30
    return v1
.end method

.method public final synthetic lambda$deliverLocked$1(Lcom/android/server/alarm/Alarm;ZZLcom/android/server/alarm/Alarm;)Z
    .registers 8

    .line 5466
    iget v0, p4, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget v1, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_30

    iget p1, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_e

    goto :goto_30

    :cond_e
    const/4 p1, 0x1

    if-eqz p2, :cond_1b

    .line 5470
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p2, p4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result p2

    if-eqz p2, :cond_1b

    move p2, p1

    goto :goto_1c

    :cond_1b
    move p2, v2

    :goto_1c
    if-eqz p3, :cond_28

    .line 5471
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5472
    invoke-static {p0, p4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    if-eqz p0, :cond_28

    move p0, p1

    goto :goto_29

    :cond_28
    move p0, v2

    :goto_29
    if-nez p2, :cond_2f

    if-eqz p0, :cond_2e

    goto :goto_2f

    :cond_2e
    return v2

    :cond_2f
    :goto_2f
    return p1

    :cond_30
    :goto_30
    return v2
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 5303
    iget-object p3, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p3, p3, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 5304
    :try_start_5
    iget-object p4, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result p5

    add-int/lit8 p5, p5, 0x1

    invoke-static {p4, p5}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 5305
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/alarm/AlarmManagerService$InFlight;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    .line 5306
    monitor-exit p3

    return-void

    :catchall_19
    move-exception p0

    monitor-exit p3
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/alarm/AlarmManagerService$InFlight;
    .registers 6

    const/4 v0, 0x0

    .line 5185
    :goto_1
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 5186
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    .line 5187
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    if-ne v2, p1, :cond_31

    .line 5188
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isBroadcast()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 5189
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget p2, v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mUid:I

    invoke-static {p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mnotifyBroadcastAlarmCompleteLocked(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 5191
    :cond_26
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    return-object p0

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5194
    :cond_34
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No in-flight alarm for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeLocked(Landroid/os/IBinder;)Lcom/android/server/alarm/AlarmManagerService$InFlight;
    .registers 4

    const/4 v0, 0x0

    .line 5200
    :goto_1
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 5201
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mListener:Landroid/os/IBinder;

    if-ne v1, p1, :cond_24

    .line 5202
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    return-object p0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5205
    :cond_27
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No in-flight alarm for listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final updateStatsLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V
    .registers 11

    .line 5210
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v0

    .line 5211
    iget-object v2, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 5212
    iget v3, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    const/4 v4, 0x0

    if-gtz v3, :cond_20

    .line 5214
    iput v4, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    .line 5215
    iget-wide v5, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    iget-wide v7, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->startTime:J

    sub-long v7, v0, v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 5217
    :cond_20
    iget-object v2, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 5218
    iget v3, v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-gtz v3, :cond_34

    .line 5220
    iput v4, v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    .line 5221
    iget-wide v3, v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v5, v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->startTime:J

    sub-long/2addr v0, v5

    add-long/2addr v3, v0

    iput-wide v3, v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 5224
    :cond_34
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object p0

    iget-object v0, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    iget v2, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mUid:I

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/app/ActivityManagerInternal;->noteAlarmFinish(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    return-void
.end method

.method public final updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V
    .registers 5

    if-eqz p1, :cond_5

    .line 5231
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateStatsLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    .line 5233
    :cond_5
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v0, p1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_8d

    .line 5238
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 5239
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5240
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_8c

    .line 5241
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished all dispatches with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " remaining inflights"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 5243
    :goto_50
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_85

    .line 5244
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remaining #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 5246
    :cond_85
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_8c
    return-void

    .line 5250
    :cond_8d
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_ab

    .line 5251
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    .line 5252
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    iget v2, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mCreatorUid:I

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V

    return-void

    .line 5256
    :cond_ab
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v0, "Alarm wakelock still held but sent queue empty"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 5257
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method
