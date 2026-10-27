.class public Lcom/android/server/notification/BubbleExtractor;
.super Ljava/lang/Object;
.source "BubbleExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BubbleExtractor"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mConfig:Lcom/android/server/notification/RankingConfig;

.field private mContext:Landroid/content/Context;

.field private mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

.field mSupportsBubble:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logBubbleError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "failureMessage"    # Ljava/lang/String;

    .line 227
    return-void
.end method


# virtual methods
.method protected canLaunchInTaskView(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 195
    const-string v0, "BubbleExtractor"

    const/4 v1, 0x0

    if-nez p2, :cond_b

    .line 196
    const-string v2, "Unable to create bubble -- no intent"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return v1

    .line 200
    :cond_b
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 201
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1a

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    goto :goto_1b

    .line 203
    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    nop

    .line 204
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x1

    const/16 v5, 0xad

    if-nez v3, :cond_3b

    .line 205
    invoke-static {v5, p3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send as bubble -- couldn\'t find activity info for intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v1

    .line 212
    :cond_3b
    iget v6, v3, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 213
    const/4 v4, 0x2

    invoke-static {v5, p3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send as bubble -- activity is not resizable for intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return v1

    .line 220
    :cond_5e
    return v4
.end method

.method canPresentAsBubble(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 12
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 147
    iget-boolean v0, p0, Lcom/android/server/notification/BubbleExtractor;->mSupportsBubble:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 148
    return v1

    .line 151
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 152
    .local v0, "notification":Landroid/app/Notification;
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v2

    .line 153
    .local v2, "metadata":Landroid/app/Notification$BubbleMetadata;
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "pkg":Ljava/lang/String;
    if-nez v2, :cond_19

    .line 155
    return v1

    .line 158
    :cond_19
    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "shortcutId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    if-eqz v5, :cond_2c

    .line 160
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2d

    .line 161
    :cond_2c
    const/4 v5, 0x0

    :goto_2d
    nop

    .line 162
    .local v5, "notificationShortcutId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 163
    .local v6, "shortcutValid":Z
    const/4 v7, 0x1

    if-eqz v5, :cond_39

    if-eqz v4, :cond_39

    .line 165
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_4b

    .line 166
    :cond_39
    if-eqz v4, :cond_4b

    .line 167
    iget-object v8, p0, Lcom/android/server/notification/BubbleExtractor;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    .line 168
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v8, v4, v3, v9}, Lcom/android/server/notification/ShortcutHelper;->getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v8

    if-eqz v8, :cond_49

    move v8, v7

    goto :goto_4a

    :cond_49
    move v8, v1

    :goto_4a
    move v6, v8

    .line 170
    :cond_4b
    :goto_4b
    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v8

    if-nez v8, :cond_6e

    if-nez v6, :cond_6e

    .line 172
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t find valid shortcut for bubble with shortcutId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/notification/BubbleExtractor;->logBubbleError(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return v1

    .line 176
    :cond_6e
    if-eqz v6, :cond_71

    .line 178
    return v7

    .line 180
    :cond_71
    iget-object v1, p0, Lcom/android/server/notification/BubbleExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {p0, v1, v7, v3}, Lcom/android/server/notification/BubbleExtractor;->canLaunchInTaskView(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 57
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mContext:Landroid/content/Context;

    .line 58
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    .line 60
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/BubbleExtractor;->mSupportsBubble:Z

    .line 62
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 10
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 65
    const/4 v0, 0x0

    if-eqz p1, :cond_ba

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_ba

    .line 70
    :cond_b
    iget-object v1, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_10

    .line 72
    return-object v0

    .line 75
    :cond_10
    iget-object v1, p0, Lcom/android/server/notification/BubbleExtractor;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    if-nez v1, :cond_15

    .line 77
    return-object v0

    .line 80
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/notification/BubbleExtractor;->canPresentAsBubble(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    .line 81
    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 82
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 83
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 84
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_3d

    move v1, v3

    goto :goto_3e

    :cond_3d
    move v1, v2

    .line 86
    .local v1, "notifCanPresentAsBubble":Z
    :goto_3e
    iget-object v4, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/server/notification/RankingConfig;->bubblesEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    .line 87
    .local v4, "userEnabledBubbles":Z
    iget-object v5, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 89
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v7

    .line 88
    invoke-interface {v5, v6, v7}, Lcom/android/server/notification/RankingConfig;->getBubblePreference(Ljava/lang/String;I)I

    move-result v5

    .line 90
    .local v5, "appPreference":I
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v6

    .line 91
    .local v6, "recordChannel":Landroid/app/NotificationChannel;
    if-eqz v4, :cond_89

    if-eqz v5, :cond_89

    if-nez v1, :cond_69

    goto :goto_89

    .line 99
    :cond_69
    if-nez v6, :cond_6f

    .line 101
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    goto :goto_95

    .line 102
    :cond_6f
    if-ne v5, v3, :cond_7e

    .line 103
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v7

    if-eqz v7, :cond_79

    move v7, v3

    goto :goto_7a

    :cond_79
    move v7, v2

    :goto_7a
    invoke-virtual {p1, v7}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    goto :goto_95

    .line 104
    :cond_7e
    const/4 v7, 0x2

    if-ne v5, v7, :cond_95

    .line 105
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v7

    invoke-virtual {p1, v7}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    goto :goto_95

    .line 94
    :cond_89
    :goto_89
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    .line 95
    if-nez v1, :cond_95

    .line 97
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Notification;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)V

    .line 115
    :cond_95
    :goto_95
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v7

    if-eqz v7, :cond_a2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isFlagBubbleRemoved()Z

    move-result v7

    if-nez v7, :cond_a2

    move v2, v3

    .line 116
    .local v2, "applyFlag":Z
    :cond_a2
    if-eqz v2, :cond_af

    .line 117
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v7, v3, Landroid/app/Notification;->flags:I

    or-int/lit16 v7, v7, 0x1000

    iput v7, v3, Landroid/app/Notification;->flags:I

    goto :goto_b9

    .line 119
    :cond_af
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v7, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v7, v7, -0x1001

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 121
    :goto_b9
    return-object v0

    .line 67
    .end local v1    # "notifCanPresentAsBubble":Z
    .end local v2    # "applyFlag":Z
    .end local v4    # "userEnabledBubbles":Z
    .end local v5    # "appPreference":I
    .end local v6    # "recordChannel":Landroid/app/NotificationChannel;
    :cond_ba
    :goto_ba
    return-object v0
.end method

.method public setActivityManager(Landroid/app/ActivityManager;)V
    .registers 2
    .param p1, "manager"    # Landroid/app/ActivityManager;

    .line 139
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    .line 140
    return-void
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .line 126
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 127
    return-void
.end method

.method public setShortcutHelper(Lcom/android/server/notification/ShortcutHelper;)V
    .registers 2
    .param p1, "helper"    # Lcom/android/server/notification/ShortcutHelper;

    .line 134
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    .line 135
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 131
    return-void
.end method
