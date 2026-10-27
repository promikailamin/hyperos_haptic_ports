.class Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "SensitiveContentProtectionManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SensitiveContentProtectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V
    .registers 2

    .line 456
    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .registers 5

    .line 459
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 460
    const-string v0, "SensitiveContentProtectionManagerService.onListenerConnected"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 464
    :try_start_b
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    iget-object v0, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_27

    .line 465
    :try_start_10
    iget-object v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {v3}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$fgetmProjectionActive(Lcom/android/server/SensitiveContentProtectionManagerService;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 466
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$mupdateAppsThatShouldBlockScreenCapture(Lcom/android/server/SensitiveContentProtectionManagerService;)V

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_25

    .line 468
    :cond_20
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_1e

    .line 470
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 468
    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_1e

    :try_start_26
    throw p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 470
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 471
    throw p0
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 9

    .line 476
    invoke-super {p0, p1, p2}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 477
    const-string v0, "SensitiveContentProtectionManagerService.onNotificationPosted"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-nez p1, :cond_1a

    .line 481
    :try_start_d
    const-string p0, "SensitiveContentProtect"

    const-string p1, "Unable to parse null notification"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_18

    .line 512
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_18
    move-exception p0

    goto :goto_7f

    :cond_1a
    if-nez p2, :cond_27

    .line 486
    :try_start_1c
    const-string p0, "SensitiveContentProtect"

    const-string p1, "Ranking map not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_18

    .line 512
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 490
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    iget-object v0, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_18

    .line 491
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {v3}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$fgetmProjectionActive(Lcom/android/server/SensitiveContentProtectionManagerService;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 492
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_39

    .line 512
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_39
    move-exception p0

    goto :goto_7d

    .line 496
    :cond_3b
    :try_start_3b
    invoke-static {p1, p2}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$smgetSensitivePackageFromNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    move-result-object p2

    if-eqz p2, :cond_53

    .line 499
    iget-object v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {v3}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$fgetmWindowManager(Lcom/android/server/SensitiveContentProtectionManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v3

    new-instance v4, Landroid/util/ArraySet;

    .line 500
    invoke-static {p2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 499
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->addBlockScreenCaptureForApps(Landroid/util/ArraySet;)V

    .line 503
    :cond_53
    iget-object v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {v3}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$fgetmMediaProjectionSession(Lcom/android/server/SensitiveContentProtectionManagerService;)Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    move-result-object v3

    if-eqz v3, :cond_78

    if-eqz p2, :cond_6b

    .line 505
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$fgetmMediaProjectionSession(Lcom/android/server/SensitiveContentProtectionManagerService;)Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->-$$Nest$maddSeenOtpNotificationKey(Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;Ljava/lang/String;)V

    goto :goto_78

    .line 507
    :cond_6b
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$fgetmMediaProjectionSession(Lcom/android/server/SensitiveContentProtectionManagerService;)Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->-$$Nest$maddSeenNotificationKey(Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;Ljava/lang/String;)V

    .line 510
    :cond_78
    :goto_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_3b .. :try_end_79} :catchall_39

    .line 512
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 510
    :goto_7d
    :try_start_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_39

    :try_start_7e
    throw p0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_18

    .line 512
    :goto_7f
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 513
    throw p0
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 6

    .line 518
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 519
    const-string v0, "SensitiveContentProtectionManagerService.onNotificationRankingUpdate"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-nez p1, :cond_1a

    .line 523
    :try_start_d
    const-string p0, "SensitiveContentProtect"

    const-string p1, "Ranking map not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_18

    .line 533
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_18
    move-exception p0

    goto :goto_36

    .line 527
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    iget-object v0, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_18

    .line 528
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {v3}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$fgetmProjectionActive(Lcom/android/server/SensitiveContentProtectionManagerService;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 529
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$mupdateAppsThatShouldBlockScreenCapture(Lcom/android/server/SensitiveContentProtectionManagerService;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_34

    .line 531
    :cond_2f
    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_2d

    .line 533
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 531
    :goto_34
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_2d

    :try_start_35
    throw p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_18

    .line 533
    :goto_36
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 534
    throw p0
.end method
