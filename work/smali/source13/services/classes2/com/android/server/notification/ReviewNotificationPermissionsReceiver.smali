.class public Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReviewNotificationPermissionsReceiver.java"


# static fields
.field static final DEBUG:Z

.field private static final JOB_RESCHEDULE_TIME:J = 0x240c8400L

.field public static final TAG:Ljava/lang/String; = "ReviewNotifPermissions"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    const-string v0, "ReviewNotifPermissions"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static getFilter()Landroid/content/IntentFilter;
    .registers 2

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "REVIEW_NOTIF_ACTION_REMIND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v1, "REVIEW_NOTIF_ACTION_DISMISS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v1, "REVIEW_NOTIF_ACTION_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    return-object v0
.end method


# virtual methods
.method protected cancelNotification(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 60
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_12

    .line 61
    const/16 v1, 0x47

    const-string v2, "NotificationService"

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_19

    .line 64
    :cond_12
    const-string v1, "ReviewNotifPermissions"

    const-string v2, "could not cancel notification: NotificationManager not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_19
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    const-string v1, "REVIEW_NOTIF_ACTION_REMIND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string/jumbo v3, "review_permissions_notification_state"

    if-eqz v1, :cond_1e

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;->rescheduleNotification(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;->cancelNotification(Landroid/content/Context;)V

    goto :goto_5a

    .line 92
    :cond_1e
    const-string v1, "REVIEW_NOTIF_ACTION_DISMISS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;->cancelNotification(Landroid/content/Context;)V

    goto :goto_5a

    .line 98
    :cond_32
    const-string v1, "REVIEW_NOTIF_ACTION_CANCELED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 106
    .local v1, "notifState":I
    if-nez v1, :cond_50

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;->rescheduleNotification(Landroid/content/Context;)V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5a

    .line 113
    :cond_50
    const/4 v4, 0x3

    if-ne v1, v4, :cond_5a

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    .end local v1    # "notifState":I
    :cond_5a
    :goto_5a
    return-void
.end method

.method protected rescheduleNotification(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    const-wide/32 v0, 0x240c8400

    invoke-static {p1, v0, v1}, Lcom/android/server/notification/ReviewNotificationPermissionsJobService;->scheduleJob(Landroid/content/Context;J)V

    .line 72
    sget-boolean v2, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;->DEBUG:Z

    if-eqz v2, :cond_30

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduled review permissions notification for on or after: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 74
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-static {v3}, Ljava/time/LocalDateTime;->now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    .line 75
    invoke-virtual {v3, v0, v1, v4}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v1, "ReviewNotifPermissions"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_30
    return-void
.end method
