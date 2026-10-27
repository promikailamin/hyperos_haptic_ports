.class public final Lcom/android/server/media/MediaSessionService$NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "MediaSessionService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 2

    .line 3302
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$NotificationListener;-><init>(Lcom/android/server/media/MediaSessionService;)V

    return-void
.end method


# virtual methods
.method public final getAnyMediaSessionRecordForNotification(IILandroid/app/Notification;)Lcom/android/server/media/MediaSessionRecordImpl;
    .registers 7

    .line 3373
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3374
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, p2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_14

    .line 3376
    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    goto :goto_3d

    .line 3378
    :cond_14
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object p0

    const/4 v2, 0x0

    .line 3379
    invoke-virtual {p0, v2, p2}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/List;

    move-result-object p0

    .line 3380
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 3381
    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v2

    if-ne v2, p1, :cond_21

    .line 3382
    invoke-virtual {p2, p3}, Lcom/android/server/media/MediaSessionRecordImpl;->isLinkedToNotification(Landroid/app/Notification;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3383
    monitor-exit v0

    return-object p2

    .line 3386
    :cond_3b
    monitor-exit v0

    return-object v1

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_12

    throw p0
.end method

.method public final getUserEngagedMediaSessionRecordForNotification(ILandroid/app/Notification;)Lcom/android/server/media/MediaSessionRecordImpl;
    .registers 5

    .line 3360
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3362
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmUserEngagedSessionsForFgs(Lcom/android/server/media/MediaSessionService;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 3363
    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaSessionRecordImpl;->isLinkedToNotification(Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3364
    monitor-exit v0

    return-object p1

    :catchall_31
    move-exception p0

    goto :goto_36

    .line 3367
    :cond_33
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_31

    throw p0
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 9

    .line 3305
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 3306
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    .line 3307
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 3308
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 3309
    invoke-virtual {v2}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_20

    .line 3312
    :cond_1a
    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_21

    :goto_20
    return-void

    .line 3316
    :cond_21
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3317
    :try_start_28
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaNotifications(Lcom/android/server/media/MediaSessionService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_4f

    .line 3319
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3320
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaNotifications(Lcom/android/server/media/MediaSessionService;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    :catchall_4d
    move-exception p0

    goto :goto_72

    .line 3322
    :cond_4f
    :goto_4f
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    if-eqz p1, :cond_5d

    .line 3325
    monitor-exit v3

    return-void

    .line 3328
    :cond_5d
    invoke-virtual {p0, v0, v2}, Lcom/android/server/media/MediaSessionService$NotificationListener;->getUserEngagedMediaSessionRecordForNotification(ILandroid/app/Notification;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object p1

    if-eqz p1, :cond_65

    .line 3331
    monitor-exit v3

    return-void

    .line 3334
    :cond_65
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/media/MediaSessionService$NotificationListener;->getAnyMediaSessionRecordForNotification(IILandroid/app/Notification;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object p1

    if-eqz p1, :cond_70

    .line 3338
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$msetFgsInactiveIfNoSessionIsLinkedToNotification(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 3340
    :cond_70
    monitor-exit v3

    return-void

    :goto_72
    monitor-exit v3
    :try_end_73
    .catchall {:try_start_28 .. :try_end_73} :catchall_4d

    throw p0
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .registers 6

    .line 3345
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 3346
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    .line 3347
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3348
    :try_start_e
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaNotifications(Lcom/android/server/media/MediaSessionService;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_3d

    .line 3350
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3351
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 3352
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaNotifications(Lcom/android/server/media/MediaSessionService;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    :catchall_3b
    move-exception p0

    goto :goto_3f

    .line 3355
    :cond_3d
    :goto_3d
    monitor-exit v1

    return-void

    :goto_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_e .. :try_end_40} :catchall_3b

    throw p0
.end method
