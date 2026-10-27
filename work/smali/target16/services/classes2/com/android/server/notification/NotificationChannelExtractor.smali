.class public Lcom/android/server/notification/NotificationChannelExtractor;
.super Ljava/lang/Object;
.source "NotificationChannelExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# instance fields
.field public mConfig:Lcom/android/server/notification/RankingConfig;

.field public mContext:Landroid/content/Context;

.field public mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3

    .line 52
    iput-object p1, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mContext:Landroid/content/Context;

    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_a8

    .line 61
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_a8

    .line 66
    :cond_b
    iget-object v2, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v2, :cond_10

    return-object v0

    .line 71
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getShortcutId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 70
    invoke-interface/range {v2 .. v8}, Lcom/android/server/notification/RankingConfig;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 74
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 76
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    if-nez v1, :cond_44

    return-object v0

    .line 83
    :cond_44
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    const-class v3, Landroid/app/Notification$CallStyle;

    invoke-virtual {v2, v3}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5a

    .line 84
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_5a

    move v2, v3

    goto :goto_5b

    :cond_5a
    const/4 v2, 0x0

    .line 87
    :goto_5b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v5, "alarm"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    .line 88
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_71

    move v2, v3

    .line 92
    :cond_71
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    if-eqz v4, :cond_7f

    .line 93
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    if-ne v4, v3, :cond_7e

    goto :goto_7f

    :cond_7e
    move v3, v2

    :cond_7f
    :goto_7f
    if-eqz v3, :cond_a8

    .line 98
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationChannelExtractor;->reportAudioAttributesChanged(I)V

    .line 99
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->copy()Landroid/app/NotificationChannel;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3, v1}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    const/4 v1, 0x5

    .line 101
    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 100
    invoke-virtual {p0, v2, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 103
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_a8
    :goto_a8
    return-object v0
.end method

.method public final reportAudioAttributesChanged(I)V
    .registers 6

    .line 110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 112
    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    const-wide/32 v2, 0x13c6c3bb

    invoke-interface {p0, v2, v3, p1}, Lcom/android/internal/compat/IPlatformCompat;->reportChangeByUid(JI)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_12
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    goto :goto_1e

    :catch_12
    move-exception p0

    .line 114
    :try_start_13
    const-string p1, "ChannelExtractor"

    const-string v2, "Unexpected exception while reporting to changecompat"

    invoke-static {p1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_10

    .line 116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    throw p0
.end method

.method public setCompatChangeLogger(Lcom/android/internal/compat/IPlatformCompat;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    return-void
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    .line 0
    return-void
.end method
