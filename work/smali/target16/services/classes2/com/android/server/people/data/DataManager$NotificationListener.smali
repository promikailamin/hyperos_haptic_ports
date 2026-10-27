.class public Lcom/android/server/people/data/DataManager$NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "DataManager.java"


# instance fields
.field public final mActiveNotifKeys:Ljava/util/Map;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public static synthetic $r8$lambda$3G6nixFPnZ81J-cMKuokQBY2Mcs(Landroid/util/Pair;)Ljava/util/Set;
    .registers 1

    .line 1186
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$7D5AeDCRS6ZN41YsjeXOE-bx8Ns(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager$NotificationListener;->lambda$onNotificationPosted$1(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V7k_renfdny63TPT3C4if1bQJ3g(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager$NotificationListener;->lambda$onNotificationRemoved$3(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$psScrNjnnxNB2lVHyJhLVsTQzBU(Landroid/util/Pair;)Ljava/util/Set;
    .registers 1

    .line 1227
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/people/data/DataManager;I)V
    .registers 3

    .line 1172
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 1169
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifKeys:Ljava/util/Map;

    .line 1173
    iput p2, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager$NotificationListener;-><init>(Lcom/android/server/people/data/DataManager;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized hasActiveNotifications(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    .line 1297
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifKeys:Ljava/util/Map;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return p1

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public final synthetic lambda$onNotificationPosted$1(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 5

    .line 1183
    monitor-enter p0

    .line 1184
    :try_start_1
    iget-object p3, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifKeys:Ljava/util/Map;

    .line 1185
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    new-instance v0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda3;-><init>()V

    .line 1184
    invoke-interface {p3, p2, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 1187
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1188
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public final synthetic lambda$onNotificationRemoved$3(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 5

    .line 1224
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    .line 1225
    monitor-enter p0

    .line 1226
    :try_start_9
    iget-object p3, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifKeys:Ljava/util/Map;

    new-instance v0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    .line 1228
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1229
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 1230
    iget-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifKeys:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    iget-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    iget p2, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    const/16 p3, 0x1e

    invoke-static {p1, p2, p3}, Lcom/android/server/people/data/DataManager;->-$$Nest$mcleanupCachedShortcuts(Lcom/android/server/people/data/DataManager;II)V

    goto :goto_34

    :catchall_32
    move-exception p1

    goto :goto_36

    .line 1233
    :cond_34
    :goto_34
    monitor-exit p0

    return-void

    :goto_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_32

    throw p1
.end method

.method public onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 10

    .line 1258
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    if-eq v0, v1, :cond_a

    goto/16 :goto_7d

    .line 1261
    :cond_a
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object p2

    .line 1262
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_7d

    if-nez v0, :cond_1d

    goto :goto_7d

    .line 1266
    :cond_1d
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v1

    .line 1267
    invoke-virtual {v1, v0}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-nez v0, :cond_28

    goto :goto_7d

    .line 1271
    :cond_28
    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v2, v0}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p4, v3, :cond_49

    if-eq p4, v0, :cond_49

    const/4 p3, 0x3

    if-eq p4, p3, :cond_38

    goto :goto_70

    :cond_38
    const/4 p3, 0x0

    .line 1285
    invoke-virtual {v2, p3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1286
    invoke-virtual {v2, v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1287
    invoke-virtual {v2, v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setDemoted(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1288
    invoke-virtual {v2, v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationSilenced(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1289
    invoke-virtual {v2, v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setBubbled(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto :goto_70

    .line 1275
    :cond_49
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1276
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p4

    invoke-virtual {v2, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1277
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result p4

    invoke-virtual {v2, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setDemoted(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1279
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p4

    if-gt p4, v0, :cond_65

    goto :goto_66

    :cond_65
    move v3, v4

    .line 1278
    :goto_66
    invoke-virtual {v2, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationSilenced(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1280
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result p3

    invoke-virtual {v2, p3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setBubbled(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1292
    :goto_70
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object p3

    .line 1293
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getUserId()I

    move-result p2

    .line 1292
    invoke-virtual {p0, v1, p3, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 8

    .line 1178
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    if-eq v0, v1, :cond_e

    goto/16 :goto_95

    .line 1181
    :cond_e
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    .line 1182
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v2, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/people/data/DataManager;->-$$Nest$mgetPackageIfConversationExists(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    if-eqz p0, :cond_95

    .line 1192
    new-instance v1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 1193
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 1194
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p2

    if-nez p2, :cond_36

    goto :goto_95

    .line 1199
    :cond_36
    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v2, p2}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 1200
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLastEventTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object p2

    .line 1201
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object p2

    .line 1202
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 1203
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setParentNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto :goto_74

    .line 1205
    :cond_69
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setParentNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1207
    :goto_74
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    .line 1209
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p0

    .line 1211
    new-instance p2, Lcom/android/server/people/data/Event;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    const/4 p1, 0x2

    invoke-direct {p2, v0, v1, p1}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {p0, p2}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    :cond_95
    :goto_95
    return-void
.end method

.method public declared-synchronized onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .registers 7

    monitor-enter p0

    .line 1218
    :try_start_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    iget v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_5c

    if-eq p2, v0, :cond_f

    .line 1219
    monitor-exit p0

    return-void

    .line 1221
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object p2

    .line 1222
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v1, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lcom/android/server/people/data/DataManager;->-$$Nest$mgetPackageIfConversationExists(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;

    move-result-object p1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_5e

    if-nez p1, :cond_28

    goto :goto_5e

    .line 1239
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1240
    invoke-virtual {p1, p2}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p3
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_5c

    if-nez p3, :cond_34

    .line 1242
    monitor-exit p0

    return-void

    .line 1245
    :cond_34
    :try_start_34
    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v2, p3}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 1246
    invoke-virtual {v2, v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLastEventTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object p3

    .line 1247
    invoke-virtual {p3}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object p3

    .line 1248
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    .line 1250
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p1

    .line 1252
    new-instance p2, Lcom/android/server/people/data/Event;

    const/4 p3, 0x3

    invoke-direct {p2, v0, v1, p3}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {p1, p2}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V
    :try_end_5a
    .catchall {:try_start_34 .. :try_end_5a} :catchall_5c

    .line 1253
    monitor-exit p0

    return-void

    :catchall_5c
    move-exception p1

    goto :goto_60

    .line 1237
    :cond_5e
    :goto_5e
    monitor-exit p0

    return-void

    :goto_60
    :try_start_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5c

    throw p1
.end method
