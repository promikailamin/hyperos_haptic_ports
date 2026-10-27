.class public Lcom/android/server/notification/NotificationManagerService$10;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/GroupHelper$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public static synthetic $r8$lambda$_K091Ww5X4_ngsPxFGjkEBBzLoY(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$smwasChildOfForceRegroupedGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aPl_jk3gY49STjTwDenSxJcOprM(III)Z
    .registers 5

    .line 3381
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_d

    if-eq p0, v1, :cond_d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/16 v0, 0x18

    if-ne p0, v0, :cond_12

    :cond_d
    and-int/lit16 p0, p2, 0x1000

    if-eqz p0, :cond_12

    goto :goto_17

    :cond_12
    and-int p0, p2, p1

    if-nez p0, :cond_17

    return v1

    :cond_17
    :goto_17
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 3304
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAutoGroup(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 3307
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3309
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->convertSummaryToNotificationLocked(Ljava/lang/String;)Z

    .line 3310
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->addAutogroupKeyLocked(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3314
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/notification/GroupHelper$NotificationAttributes;)V
    .registers 14

    .line 3327
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/notification/GroupHelper$NotificationAttributes;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p3

    move p2, v1

    if-eqz p3, :cond_38

    .line 3330
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmActivityManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;

    move-result-object p1

    .line 3331
    invoke-virtual {p1, v2}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result p1

    const/16 p4, 0x64

    if-ne p1, p4, :cond_20

    const/4 p1, 0x1

    :goto_1e
    move p4, p1

    goto :goto_22

    :cond_20
    const/4 p1, 0x0

    goto :goto_1e

    .line 3332
    :goto_22
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, p1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPostNotificationTrackerFactory(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    move-result-object p5

    const/4 p6, 0x0

    .line 3334
    invoke-interface {p5, p6}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;->newTracker(Landroid/os/PowerManager$WakeLock;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    move-result-object p6

    const/4 p5, 0x0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    .line 3332
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_38
    return-void
.end method

.method public removeAppProvidedSummary(Ljava/lang/String;)V
    .registers 3

    .line 3358
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3359
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeAppSummaryLocked(Ljava/lang/String;)V

    .line 3360
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public removeAppProvidedSummaryOnClassification(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 4

    .line 3403
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3404
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->removeAppProvidedSummaryOnClassificationLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 3406
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public removeAutoGroup(Ljava/lang/String;)V
    .registers 3

    .line 3319
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3320
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeAutogroupKeyLocked(Ljava/lang/String;)V

    .line 3321
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public removeAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 3340
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3341
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->clearAutogroupSummaryLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 3342
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public removeNotificationFromCanceledGroup(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 20

    .line 3371
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3380
    :try_start_5
    new-instance v9, Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda0;

    const v0, 0x18040

    move/from16 v2, p4

    invoke-direct {v9, v2, v0}, Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda0;-><init>(II)V

    .line 3391
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3392
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    new-instance v10, Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda1;

    invoke-direct {v10}, Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda1;-><init>()V

    .line 3395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v12, 0x8

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v11, p3

    .line 3391
    invoke-static/range {v2 .. v14}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelGroupChildrenLocked(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V

    .line 3396
    monitor-exit v1

    return-void

    :catchall_31
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_31

    throw p0
.end method

.method public sendAppProvidedSummaryDeleteIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 3

    .line 3365
    invoke-static {p2, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$smsendDeleteIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public updateAutogroupSummary(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;)V
    .registers 13

    if-eqz p2, :cond_13

    .line 3348
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmActivityManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;

    move-result-object v0

    .line 3349
    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_11
    move v6, v0

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    .line 3350
    :goto_15
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3351
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->updateAutobundledSummaryLocked(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;Z)V

    .line 3353
    monitor-exit v7

    return-void

    :catchall_25
    move-exception v0

    move-object p0, v0

    monitor-exit v7
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_25

    throw p0
.end method
