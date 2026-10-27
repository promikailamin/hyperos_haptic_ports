.class public Lcom/android/server/notification/TimeToLiveHelper;
.super Ljava/lang/Object;
.source "TimeToLiveHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TimeToLiveHelper"


# instance fields
.field public final mAm:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field final mKeys:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mNm:Lcom/android/server/notification/NotificationManagerPrivate;

.field final mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$-66tMOc0eo_h6TkGlRyu-muFTqg(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 4

    .line 65
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNm(Lcom/android/server/notification/TimeToLiveHelper;)Lcom/android/server/notification/NotificationManagerPrivate;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mNm:Lcom/android/server/notification/NotificationManagerPrivate;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveMatchingEntry(Lcom/android/server/notification/TimeToLiveHelper;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/TimeToLiveHelper;->removeMatchingEntry(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/notification/TimeToLiveHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerPrivate;Landroid/content/Context;)V
    .registers 6

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mLock:Ljava/lang/Object;

    .line 168
    new-instance v1, Lcom/android/server/notification/TimeToLiveHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/TimeToLiveHelper$1;-><init>(Lcom/android/server/notification/TimeToLiveHelper;)V

    iput-object v1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p2, p0, Lcom/android/server/notification/TimeToLiveHelper;->mContext:Landroid/content/Context;

    .line 62
    iput-object p1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mNm:Lcom/android/server/notification/NotificationManagerPrivate;

    .line 63
    const-class p1, Landroid/app/AlarmManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mAm:Landroid/app/AlarmManager;

    .line 64
    monitor-enter v0

    .line 65
    :try_start_20
    new-instance p1, Ljava/util/TreeSet;

    new-instance v2, Lcom/android/server/notification/TimeToLiveHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/notification/TimeToLiveHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    .line 66
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_3f

    .line 68
    new-instance p0, Landroid/content/IntentFilter;

    const-string p1, "com.android.server.notification.TimeToLiveHelper"

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    const-string/jumbo p1, "timeout"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 70
    invoke-virtual {p2, v1, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    :catchall_3f
    move-exception p0

    .line 66
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p0
.end method


# virtual methods
.method public final cancelFirstAlarm()V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/high16 v1, 0x10000000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/TimeToLiveHelper;->getAlarmPendingIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 155
    iget-object p0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mAm:Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public cancelScheduledTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/TimeToLiveHelper;->removeMatchingEntry(Ljava/lang/String;)V

    .line 126
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mKeys "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final getAlarmPendingIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 6

    const/high16 v0, 0x4000000

    or-int/2addr p2, v0

    .line 86
    iget-object p0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.notification.TimeToLiveHelper"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v2, "timeout"

    .line 91
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key"

    .line 94
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 86
    invoke-static {p0, v0, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public final maybeScheduleFirstAlarm()V
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 161
    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/high16 v1, 0x8000000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/TimeToLiveHelper;->getAlarmPendingIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mAm:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    .line 164
    invoke-virtual {p0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p0, 0x2

    .line 163
    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_30
    return-void
.end method

.method public final removeMatchingEntry(Ljava/lang/String;)V
    .registers 5

    .line 131
    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 134
    invoke-virtual {p0}, Lcom/android/server/notification/TimeToLiveHelper;->cancelFirstAlarm()V

    .line 135
    iget-object p1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0}, Lcom/android/server/notification/TimeToLiveHelper;->maybeScheduleFirstAlarm()V

    return-void

    .line 140
    :cond_28
    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 141
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :goto_44
    if-eqz v1, :cond_4b

    .line 147
    iget-object p0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {p0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    :cond_4b
    return-void
.end method

.method public scheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;J)V
    .registers 9

    .line 101
    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/notification/TimeToLiveHelper;->removeMatchingEntry(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v1

    add-long/2addr p2, v1

    .line 105
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_6f

    .line 106
    iget-object v1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    goto :goto_37

    :cond_2b
    iget-object v1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    :goto_37
    if-eqz v1, :cond_56

    .line 109
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-gez v2, :cond_42

    goto :goto_56

    .line 116
    :cond_42
    iget-object p0, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :catchall_54
    move-exception p0

    goto :goto_71

    :cond_56
    :goto_56
    if-eqz v1, :cond_5b

    .line 111
    invoke-virtual {p0}, Lcom/android/server/notification/TimeToLiveHelper;->cancelFirstAlarm()V

    .line 113
    :cond_5b
    iget-object v1, p0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {p0}, Lcom/android/server/notification/TimeToLiveHelper;->maybeScheduleFirstAlarm()V

    .line 119
    :cond_6f
    :goto_6f
    monitor-exit v0

    return-void

    :goto_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_3 .. :try_end_72} :catchall_54

    throw p0
.end method
