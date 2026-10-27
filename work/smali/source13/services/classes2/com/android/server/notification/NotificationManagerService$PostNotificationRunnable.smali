.class public Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PostNotificationRunnable"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final pkg:Ljava/lang/String;

.field private final postElapsedTimeMs:J

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field private final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "postElapsedTimeMs"    # J

    .line 7702
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7703
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    .line 7704
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->pkg:Ljava/lang/String;

    .line 7705
    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->uid:I

    .line 7706
    iput-wide p5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->postElapsedTimeMs:J

    .line 7707
    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-android-server-notification-NotificationManagerService$PostNotificationRunnable(Landroid/service/notification/StatusBarNotification;)V
    .registers 5
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 7825
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7826
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmGroupHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7827
    invoke-static {v2, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhasAutoGroupSummaryLocked(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    .line 7826
    invoke-virtual {v1, p1, v2}, Lcom/android/server/notification/GroupHelper;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Z)V

    .line 7828
    monitor-exit v0

    .line 7829
    return-void

    .line 7828
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1
.end method

.method synthetic lambda$run$1$com-android-server-notification-NotificationManagerService$PostNotificationRunnable(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .param p1, "finalRecord"    # Lcom/android/server/notification/NotificationRecord;

    .line 7833
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmGroupHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/GroupHelper;->onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public run()V
    .registers 22

    .line 7711
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->pkg:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->uid:I

    invoke-static {v0, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mareNotificationsEnabledForPackageInt(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    move v3, v0

    .line 7712
    .local v3, "appBanned":Z
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->pkg:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->uid:I

    invoke-static {v0, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misCallNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v4

    .line 7713
    .local v4, "isCallNotification":Z
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v5

    .line 7715
    const/4 v0, 0x0

    .line 7716
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    :try_start_1f
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_392

    .line 7717
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_28
    if-ge v7, v6, :cond_4a

    .line 7718
    :try_start_2a
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    .line 7719
    .local v8, "enqueued":Lcom/android/server/notification/NotificationRecord;
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    .line 7720
    move-object v0, v8

    .line 7721
    goto :goto_4a

    .line 7717
    .end local v8    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 7868
    .end local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v6    # "N":I
    .end local v7    # "i":I
    :catchall_45
    move-exception v0

    move/from16 v18, v3

    goto/16 :goto_395

    .line 7724
    .restart local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v6    # "N":I
    :cond_4a
    :goto_4a
    if-nez v0, :cond_99

    .line 7725
    const-string v2, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find enqueued record for key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_2a .. :try_end_66} :catchall_45

    .line 7868
    :try_start_66
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7869
    .local v2, "N":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_6f
    if-ge v7, v2, :cond_92

    .line 7870
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    .line 7871
    .restart local v8    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8f

    .line 7872
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7873
    goto :goto_92

    .line 7869
    .end local v8    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_8f
    add-int/lit8 v7, v7, 0x1

    goto :goto_6f

    .line 7876
    .end local v2    # "N":I
    .end local v7    # "i":I
    :cond_92
    :goto_92
    monitor-exit v5
    :try_end_93
    .catchall {:try_start_66 .. :try_end_93} :catchall_94

    .line 7726
    return-void

    .line 7877
    .end local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v6    # "N":I
    :catchall_94
    move-exception v0

    move/from16 v18, v3

    goto/16 :goto_3c3

    .line 7729
    .restart local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v6    # "N":I
    :cond_99
    :try_start_99
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    .line 7730
    .local v7, "n":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8
    :try_end_a1
    .catchall {:try_start_99 .. :try_end_a1} :catchall_392

    move-object v14, v8

    .line 7731
    .local v14, "notification":Landroid/app/Notification;
    if-eqz v4, :cond_ae

    :try_start_a4
    const-class v9, Landroid/app/Notification$CallStyle;

    .line 7732
    invoke-virtual {v14, v9}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v9
    :try_end_aa
    .catchall {:try_start_a4 .. :try_end_aa} :catchall_45

    if-eqz v9, :cond_ae

    move v9, v2

    goto :goto_af

    :cond_ae
    const/4 v9, 0x0

    :goto_af
    move v15, v9

    .line 7734
    .local v15, "isCallNotificationAndCorrectStyle":Z
    :try_start_b0
    invoke-virtual {v14}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v9
    :try_end_b4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_392

    if-nez v9, :cond_115

    if-nez v15, :cond_115

    if-nez v3, :cond_c2

    :try_start_ba
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7735
    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->isRecordBlockedLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    if-eqz v9, :cond_115

    .line 7736
    :cond_c2
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 7737
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_e7

    .line 7738
    const-string v2, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Suppressing notification from package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->pkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catchall {:try_start_ba .. :try_end_e7} :catchall_45

    .line 7868
    :cond_e7
    :try_start_e7
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7869
    .restart local v2    # "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_f0
    if-ge v8, v2, :cond_113

    .line 7870
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/NotificationRecord;

    .line 7871
    .local v9, "enqueued":Lcom/android/server/notification/NotificationRecord;
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_110

    .line 7872
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v10, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7873
    goto :goto_113

    .line 7869
    .end local v9    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_110
    add-int/lit8 v8, v8, 0x1

    goto :goto_f0

    .line 7876
    .end local v2    # "N":I
    .end local v8    # "i":I
    :cond_113
    :goto_113
    monitor-exit v5
    :try_end_114
    .catchall {:try_start_e7 .. :try_end_114} :catchall_94

    .line 7740
    return-void

    .line 7743
    :cond_115
    :try_start_115
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7744
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/notification/NotificationManagerService;->isPackagePausedOrSuspended(Ljava/lang/String;I)Z

    move-result v9

    move/from16 v16, v9

    .line 7748
    .local v16, "isPackageSuspended":Z
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v9

    invoke-interface {v9, v0}, Lcom/android/server/notification/NotificationManagerServiceStub;->isPackageDistractionRestrictionLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    move/from16 v17, v9

    .line 7749
    .local v17, "isPackageDistractionRestriction":Z
    if-nez v16, :cond_13a

    if-eqz v17, :cond_138

    goto :goto_13a

    :cond_138
    const/4 v9, 0x0

    goto :goto_13b

    :cond_13a
    :goto_13a
    move v9, v2

    :goto_13b
    invoke-virtual {v0, v9}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V
    :try_end_13e
    .catchall {:try_start_115 .. :try_end_13e} :catchall_392

    .line 7751
    if-eqz v16, :cond_147

    .line 7752
    :try_start_140
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_147
    .catchall {:try_start_140 .. :try_end_147} :catchall_45

    .line 7754
    :cond_147
    :try_start_147
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/NotificationRecord;
    :try_end_153
    .catchall {:try_start_147 .. :try_end_153} :catchall_392

    .line 7757
    .local v9, "old":Lcom/android/server/notification/NotificationRecord;
    if-eqz v9, :cond_16c

    :try_start_155
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v10

    if-nez v10, :cond_160

    goto :goto_16c

    .line 7760
    :cond_160
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V
    :try_end_16b
    .catchall {:try_start_155 .. :try_end_16b} :catchall_45

    goto :goto_179

    .line 7758
    :cond_16c
    :goto_16c
    :try_start_16c
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationInstanceIdSequence(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/InstanceIdSequence;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V

    .line 7763
    :goto_179
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;)I

    move-result v10

    move v13, v10

    .line 7764
    .local v13, "index":I
    const/4 v10, 0x0

    if-gez v13, :cond_1c0

    .line 7765
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v11, v11, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7766
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v11, v11, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v11, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V

    .line 7767
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v11}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUsageStatsManagerInternal(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v11

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v12

    .line 7768
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8
    :try_end_1ab
    .catchall {:try_start_16c .. :try_end_1ab} :catchall_392

    move/from16 v18, v3

    .end local v3    # "appBanned":Z
    .local v18, "appBanned":Z
    :try_start_1ad
    iget-wide v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->postElapsedTimeMs:J

    .line 7767
    invoke-virtual {v11, v12, v8, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;J)V

    .line 7769
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v10, v0}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    .line 7770
    .local v2, "isInterruptive":Z
    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 7771
    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationRecord;->setTextChanged(Z)V

    .line 7772
    .end local v2    # "isInterruptive":Z
    move-object v2, v9

    goto :goto_217

    .line 7773
    .end local v18    # "appBanned":Z
    .restart local v3    # "appBanned":Z
    :cond_1c0
    move/from16 v18, v3

    .end local v3    # "appBanned":Z
    .restart local v18    # "appBanned":Z
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    move-object v9, v2

    .line 7774
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7775
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v2, v0, v9}, Lcom/android/server/notification/NotificationUsageStats;->registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 7776
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUsageStatsManagerInternal(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v3

    .line 7777
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    iget-wide v11, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->postElapsedTimeMs:J

    .line 7776
    invoke-virtual {v2, v3, v8, v11, v12}, Landroid/app/usage/UsageStatsManagerInternal;->reportNotificationUpdated(Ljava/lang/String;Landroid/os/UserHandle;J)V

    .line 7779
    iget v2, v14, Landroid/app/Notification;->flags:I

    .line 7780
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x40

    or-int/2addr v2, v3

    iput v2, v14, Landroid/app/Notification;->flags:I

    .line 7781
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    .line 7784
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getBuzzBeepBlinkCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationRecord;->setBuzzBeepBlinkCode(I)V

    .line 7786
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v9, v0}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    .line 7787
    .restart local v2    # "isInterruptive":Z
    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationRecord;->setTextChanged(Z)V

    move-object v2, v9

    .line 7790
    .end local v9    # "old":Lcom/android/server/notification/NotificationRecord;
    .local v2, "old":Lcom/android/server/notification/NotificationRecord;
    :goto_217
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7794
    iget v3, v14, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_23a

    .line 7795
    iget v3, v14, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v14, Landroid/app/Notification;->flags:I

    .line 7796
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v3, v3, Lcom/android/server/notification/NotificationManagerService;->mAllowFgsDismissal:Z

    if-nez v3, :cond_23a

    .line 7797
    iget v3, v14, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v14, Landroid/app/Notification;->flags:I

    .line 7801
    :cond_23a
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v3, v0}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 7802
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 7803
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8, v0}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result v11

    .line 7805
    .local v11, "position":I
    const/4 v3, 0x0

    .line 7806
    .local v3, "buzzBeepBlinkLoggingCode":I
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v8

    if-nez v8, :cond_276

    .line 7810
    sget-boolean v8, Landroid/os/Build;->IS_MIUI:Z

    if-eqz v8, :cond_26f

    .line 7811
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 7812
    invoke-interface {v8, v9, v0}, Lcom/android/server/notification/NotificationManagerServiceStub;->calculateAudiblyAlerted(Landroid/media/AudioManager;Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_276

    .line 7814
    :cond_26f
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v8, v0}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v8

    move v3, v8

    .line 7819
    :cond_276
    :goto_276
    invoke-virtual {v14}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    if-eqz v8, :cond_2c5

    .line 7820
    if-eqz v2, :cond_282

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    :cond_282
    move-object v8, v10

    .line 7821
    .local v8, "oldSbn":Landroid/service/notification/StatusBarNotification;
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v9

    invoke-virtual {v9, v0, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 7822
    if-eqz v8, :cond_29c

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2b3

    :cond_29c
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7823
    invoke-static {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misCritical(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    if-nez v9, :cond_2b3

    .line 7824
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v9

    new-instance v10, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v10, v1, v7}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v9, v10}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2c4

    .line 7830
    :cond_2b3
    if-eqz v8, :cond_2c4

    .line 7831
    move-object v9, v0

    .line 7832
    .local v9, "finalRecord":Lcom/android/server/notification/NotificationRecord;
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v10

    new-instance v12, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$$ExternalSyntheticLambda1;

    invoke-direct {v12, v1, v9}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v10, v12}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7835
    .end local v8    # "oldSbn":Landroid/service/notification/StatusBarNotification;
    .end local v9    # "finalRecord":Lcom/android/server/notification/NotificationRecord;
    :cond_2c4
    :goto_2c4
    goto :goto_31b

    .line 7836
    :cond_2c5
    const-string v8, "NotificationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not posting notification without small icon: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7837
    if-eqz v2, :cond_2ff

    iget-boolean v8, v2, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez v8, :cond_2ff

    .line 7838
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v8

    const/4 v9, 0x4

    .line 7839
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v10

    .line 7838
    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 7840
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v8

    new-instance v9, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;

    invoke-direct {v9, v1, v7}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v8, v9}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7850
    :cond_2ff
    const-string v8, "NotificationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WARNING: In a future release this will crash the app: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 7851
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 7850
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7854
    :goto_31b
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v8

    if-eqz v8, :cond_333

    .line 7855
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v10, v9}, Lcom/android/server/notification/ShortcutHelper;->maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;ZLandroid/os/Handler;)V

    .line 7860
    :cond_333
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v8, v0}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 7861
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v8, v0}, Lcom/android/server/notification/NotificationManagerService;->maybeRegisterMessageSent(Lcom/android/server/notification/NotificationRecord;)V

    .line 7862
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Lcom/android/server/notification/NotificationManagerService;->maybeReportForegroundServiceUpdate(Lcom/android/server/notification/NotificationRecord;Z)V

    .line 7865
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationRecordLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7866
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/notification/NotificationManagerService;->getGroupInstanceId(Ljava/lang/String;)Lcom/android/internal/logging/InstanceId;

    move-result-object v19

    .line 7865
    move-object v9, v0

    move-object v10, v2

    move v12, v3

    move/from16 v20, v13

    .end local v13    # "index":I
    .local v20, "index":I
    move-object/from16 v13, v19

    invoke-interface/range {v8 .. v13}, Lcom/android/server/notification/NotificationRecordLogger;->maybeLogNotificationPosted(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V
    :try_end_361
    .catchall {:try_start_1ad .. :try_end_361} :catchall_390

    .line 7868
    .end local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v2    # "old":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "buzzBeepBlinkLoggingCode":I
    .end local v6    # "N":I
    .end local v7    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v11    # "position":I
    .end local v14    # "notification":Landroid/app/Notification;
    .end local v15    # "isCallNotificationAndCorrectStyle":Z
    .end local v16    # "isPackageSuspended":Z
    .end local v17    # "isPackageDistractionRestriction":Z
    .end local v20    # "index":I
    :try_start_361
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7869
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36a
    if-ge v2, v0, :cond_38d

    .line 7870
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 7871
    .local v3, "enqueued":Lcom/android/server/notification/NotificationRecord;
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38a

    .line 7872
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7873
    goto :goto_38d

    .line 7869
    .end local v3    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_38a
    add-int/lit8 v2, v2, 0x1

    goto :goto_36a

    .line 7876
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_38d
    :goto_38d
    nop

    .line 7877
    monitor-exit v5

    .line 7878
    return-void

    .line 7868
    :catchall_390
    move-exception v0

    goto :goto_395

    .end local v18    # "appBanned":Z
    .local v3, "appBanned":Z
    :catchall_392
    move-exception v0

    move/from16 v18, v3

    .end local v3    # "appBanned":Z
    .restart local v18    # "appBanned":Z
    :goto_395
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7869
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_39e
    if-ge v3, v2, :cond_3c0

    .line 7870
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 7871
    .local v6, "enqueued":Lcom/android/server/notification/NotificationRecord;
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b9

    .line 7869
    .end local v6    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_39e

    .line 7872
    .restart local v6    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_3b9
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7876
    .end local v2    # "N":I
    .end local v3    # "i":I
    .end local v6    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_3c0
    nop

    .end local v4    # "isCallNotification":Z
    .end local v18    # "appBanned":Z
    .end local p0    # "this":Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;
    throw v0

    .line 7877
    .restart local v4    # "isCallNotification":Z
    .restart local v18    # "appBanned":Z
    .restart local p0    # "this":Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;
    :catchall_3c2
    move-exception v0

    :goto_3c3
    monitor-exit v5
    :try_end_3c4
    .catchall {:try_start_361 .. :try_end_3c4} :catchall_3c2

    throw v0
.end method
