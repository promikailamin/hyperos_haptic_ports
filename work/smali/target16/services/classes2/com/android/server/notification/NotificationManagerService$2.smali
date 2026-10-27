.class public Lcom/android/server/notification/NotificationManagerService$2;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerPrivate;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 2131
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 3

    .line 2135
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2136
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 2137
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public timeoutNotification(Ljava/lang/String;)V
    .registers 20

    move-object/from16 v0, p0

    .line 2150
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2151
    :try_start_7
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v3, p1

    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mfindNotificationByKeyLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 2154
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v3

    .line 2155
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v4

    .line 2156
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2157
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 2158
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    .line 2159
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v2

    const/4 v8, 0x1

    move v15, v2

    move-object v9, v5

    move-object v10, v6

    move v11, v7

    move v7, v3

    move v3, v8

    move v8, v4

    goto :goto_4c

    :catchall_42
    move-exception v0

    goto :goto_5e

    :cond_44
    const/4 v3, 0x0

    const/4 v5, 0x0

    move v7, v3

    move v8, v7

    move v11, v8

    move v15, v11

    move-object v9, v5

    move-object v10, v9

    .line 2161
    :goto_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_42

    if-eqz v3, :cond_5d

    .line 2164
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/16 v16, 0x13

    const/16 v17, 0x0

    const/4 v12, 0x0

    const v13, 0x18040

    const/4 v14, 0x1

    invoke-virtual/range {v6 .. v17}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    :cond_5d
    return-void

    .line 2161
    :goto_5e
    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_42

    throw v0
.end method
