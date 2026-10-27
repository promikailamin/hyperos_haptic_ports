.class public Lcom/android/server/lineage/health/ChargingControlNotification;
.super Ljava/lang/Object;
.source "ChargingControlNotification.java"


# instance fields
.field public final mChargingControlController:Lcom/android/server/lineage/health/ChargingControlController;

.field public final mContext:Landroid/content/Context;

.field public mIsDoneNotification:Z

.field public mIsNotificationPosted:Z

.field public final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public static bridge synthetic -$$Nest$mhandleNotificationIntent(Lcom/android/server/lineage/health/ChargingControlNotification;Landroid/content/Intent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/lineage/health/ChargingControlNotification;->handleNotificationIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/lineage/health/ChargingControlController;)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mIsDoneNotification:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mIsNotificationPosted:Z

    .line 39
    iput-object p1, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mChargingControlController:Lcom/android/server/lineage/health/ChargingControlController;

    .line 43
    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 46
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "lineageos.platform.intent.action.CHARGING_CONTROL_CANCEL_ONCE"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/android/server/lineage/health/ChargingControlNotification$LineageHealthNotificationBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/lineage/health/ChargingControlNotification$LineageHealthNotificationBroadcastReceiver;-><init>(Lcom/android/server/lineage/health/ChargingControlNotification;Lcom/android/server/lineage/health/ChargingControlNotification-IA;)V

    const/4 p0, 0x2

    invoke-virtual {p1, v0, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 90
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlNotification;->cancelChargingControlNotification()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mIsNotificationPosted:Z

    return-void
.end method

.method public final cancelChargingControlNotification()V
    .registers 2

    .line 207
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public final createNotificationChannelIfNeeded()V
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "LineageHealthChargingControl"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_b

    return-void

    .line 198
    :cond_b
    iget-object v0, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mContext:Landroid/content/Context;

    const v2, 0x10401fb

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v0, 0x1

    .line 202
    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 203
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public final handleNotificationIntent(Landroid/content/Intent;)V
    .registers 3

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lineageos.platform.intent.action.CHARGING_CONTROL_CANCEL_ONCE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 104
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mChargingControlController:Lcom/android/server/lineage/health/ChargingControlController;

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->setChargingCancelledOnce()V

    :cond_11
    return-void
.end method

.method public isDoneNotification()Z
    .registers 1

    .line 99
    iget-boolean p0, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mIsDoneNotification:Z

    return p0
.end method

.method public isPosted()Z
    .registers 1

    .line 95
    iget-boolean p0, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mIsNotificationPosted:Z

    return p0
.end method

.method public post(IZ)V
    .registers 5

    .line 52
    iget-boolean v0, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mIsNotificationPosted:Z

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mIsDoneNotification:Z

    if-ne v1, p2, :cond_9

    return-void

    :cond_9
    if-eqz v0, :cond_e

    .line 57
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlNotification;->cancel()V

    :cond_e
    const/4 v0, 0x0

    if-eqz p2, :cond_15

    .line 61
    invoke-virtual {p0, v0, p1}, Lcom/android/server/lineage/health/ChargingControlNotification;->postChargingDoneNotification(Ljava/lang/Long;I)V

    goto :goto_18

    .line 63
    :cond_15
    invoke-virtual {p0, v0, p1}, Lcom/android/server/lineage/health/ChargingControlNotification;->postChargingControlNotification(Ljava/lang/Long;I)V

    :goto_18
    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mIsNotificationPosted:Z

    .line 67
    iput-boolean p2, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mIsDoneNotification:Z

    return-void
.end method

.method public post(Ljava/lang/Long;Z)V
    .registers 5

    .line 71
    iget-boolean v0, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mIsNotificationPosted:Z

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mIsDoneNotification:Z

    if-ne v1, p2, :cond_9

    return-void

    :cond_9
    if-eqz v0, :cond_e

    .line 76
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlNotification;->cancel()V

    :cond_e
    const/4 v0, 0x0

    if-eqz p2, :cond_15

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/android/server/lineage/health/ChargingControlNotification;->postChargingDoneNotification(Ljava/lang/Long;I)V

    goto :goto_18

    .line 82
    :cond_15
    invoke-virtual {p0, p1, v0}, Lcom/android/server/lineage/health/ChargingControlNotification;->postChargingControlNotification(Ljava/lang/Long;I)V

    :goto_18
    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mIsNotificationPosted:Z

    .line 86
    iput-boolean p2, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mIsDoneNotification:Z

    return-void
.end method

.method public final postChargingControlNotification(Ljava/lang/Long;I)V
    .registers 9

    .line 109
    iget-object v0, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mContext:Landroid/content/Context;

    const v1, 0x1040200

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_27

    .line 112
    iget-object p2, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mContext:Landroid/content/Context;

    const v1, 0x10401fe

    .line 113
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/lineage/health/Util;->msToString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 112
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3c

    .line 116
    :cond_27
    iget-object p1, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mContext:Landroid/content/Context;

    const v1, 0x10401fc

    .line 117
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 116
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 121
    :goto_3c
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    const/4 v1, 0x1

    .line 122
    invoke-virtual {p2, v1}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 125
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.lineage.health.CHARGING_CONTROL_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 126
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    iget-object v3, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    const/4 v4, 0x0

    const/high16 v5, 0x4000000

    .line 127
    invoke-static {v3, v4, v2, v5, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 130
    new-instance v2, Landroid/content/Intent;

    const-string v3, "lineageos.platform.intent.action.CHARGING_CONTROL_CANCEL_ONCE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    iget-object v3, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 134
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mContext:Landroid/content/Context;

    const-string v5, "LineageHealthChargingControl"

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 138
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const p2, 0x10803e9

    .line 139
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 140
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mContext:Landroid/content/Context;

    const v1, 0x10401fa

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {p1, p2, v0, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 146
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlNotification;->createNotificationChannelIfNeeded()V

    .line 147
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 p2, 0x3e8

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final postChargingDoneNotification(Ljava/lang/Long;I)V
    .registers 10

    .line 151
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlNotification;->cancelChargingControlNotification()V

    .line 153
    iget-object v0, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mContext:Landroid/content/Context;

    const v1, 0x1040200

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_18

    .line 156
    iget-object p2, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mContext:Landroid/content/Context;

    const v1, 0x10401ff

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2d

    .line 159
    :cond_18
    iget-object v1, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mContext:Landroid/content/Context;

    const v2, 0x10401fd

    .line 160
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 159
    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 165
    :goto_2d
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.lineage.health.CHARGING_CONTROL_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 166
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    iget-object v2, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 170
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mContext:Landroid/content/Context;

    const-string v6, "LineageHealthChargingControl"

    invoke-direct {v2, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 174
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    const v0, 0x10803e9

    .line 175
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 176
    invoke-virtual {p2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    if-nez p1, :cond_7d

    .line 179
    new-instance p1, Landroid/content/Intent;

    const-string v1, "lineageos.platform.intent.action.CHARGING_CONTROL_CANCEL_ONCE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, p1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 182
    iget-object v1, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mContext:Landroid/content/Context;

    const v2, 0x10401fa

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {p2, v0, v1, p1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 187
    :cond_7d
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlNotification;->createNotificationChannelIfNeeded()V

    .line 188
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 p1, 0x3e8

    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
