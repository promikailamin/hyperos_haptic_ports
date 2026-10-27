.class public Lcom/android/server/notification/VisibilityExtractor;
.super Ljava/lang/Object;
.source "VisibilityExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# instance fields
.field public mConfig:Lcom/android/server/notification/RankingConfig;

.field public mDpm:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adminAllowsKeyguardFeature(II)Z
    .registers 5

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_5

    return v1

    .line 103
    :cond_5
    iget-object p0, p0, Lcom/android/server/notification/VisibilityExtractor;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/2addr p0, p2

    if-nez p0, :cond_10

    return v1

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3

    .line 37
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/server/notification/VisibilityExtractor;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_76

    .line 41
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_76

    .line 46
    :cond_b
    iget-object v1, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_10

    return-object v0

    .line 51
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_23

    .line 54
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setPackageVisibilityOverride(I)V

    goto :goto_76

    .line 56
    :cond_23
    iget-object v3, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 57
    invoke-interface {v3, v1}, Lcom/android/server/notification/RankingConfig;->canShowNotificationsOnLockscreen(I)Z

    move-result v3

    const/4 v4, 0x4

    .line 58
    invoke-virtual {p0, v1, v4}, Lcom/android/server/notification/VisibilityExtractor;->adminAllowsKeyguardFeature(II)Z

    move-result v4

    .line 61
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v5, v2, :cond_42

    .line 62
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getOriginalChannelVisibility()I

    move-result v5

    if-eq v5, v2, :cond_42

    move v5, v6

    goto :goto_43

    :cond_42
    move v5, v7

    :goto_43
    if-eqz v3, :cond_73

    if-eqz v4, :cond_73

    if-nez v5, :cond_4a

    goto :goto_73

    .line 71
    :cond_4a
    iget-object v2, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 72
    invoke-interface {v2, v1}, Lcom/android/server/notification/RankingConfig;->canShowPrivateNotificationsOnLockScreen(I)Z

    move-result v2

    const/16 v3, 0x8

    .line 73
    invoke-virtual {p0, v1, v3}, Lcom/android/server/notification/VisibilityExtractor;->adminAllowsKeyguardFeature(II)Z

    move-result p0

    .line 75
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eqz v1, :cond_61

    goto :goto_62

    :cond_61
    move v6, v7

    :goto_62
    if-eqz v2, :cond_6f

    if-eqz p0, :cond_6f

    if-nez v6, :cond_69

    goto :goto_6f

    :cond_69
    const/16 p0, -0x3e8

    .line 81
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setPackageVisibilityOverride(I)V

    goto :goto_76

    .line 79
    :cond_6f
    :goto_6f
    invoke-virtual {p1, v7}, Lcom/android/server/notification/NotificationRecord;->setPackageVisibilityOverride(I)V

    goto :goto_76

    .line 67
    :cond_73
    :goto_73
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setPackageVisibilityOverride(I)V

    :cond_76
    :goto_76
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    .line 0
    return-void
.end method
