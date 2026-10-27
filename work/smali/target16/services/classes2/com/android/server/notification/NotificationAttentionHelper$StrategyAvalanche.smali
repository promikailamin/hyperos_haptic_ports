.class public Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;
.super Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
.source "NotificationAttentionHelper.java"


# instance fields
.field public final mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

.field public mLastAvalancheTriggerTimestamp:J

.field public mLastNotificationTimestamp:J

.field public final mTimeoutAvalanche:I


# direct methods
.method public constructor <init>(IIIIILcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;)V
    .registers 14

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    .line 1480
    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;-><init>(IIIILcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;)V

    const-wide/16 p0, 0x0

    .line 1472
    iput-wide p0, v0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mLastNotificationTimestamp:J

    .line 1475
    iput-wide p0, v0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mLastAvalancheTriggerTimestamp:J

    .line 1482
    iput p5, v0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mTimeoutAvalanche:I

    .line 1483
    iput-object p6, v0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    .line 1485
    sget-boolean p0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz p0, :cond_3b

    .line 1486
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "StrategyAvalanche: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotifAttentionHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void
.end method


# virtual methods
.method public getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 3

    .line 1556
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheActive()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1559
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheExempted(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1560
    invoke-super {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1563
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "cross_app_common_key"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1576
    :cond_30
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;)J
    .registers 3

    .line 1598
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheExempted(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1599
    invoke-super {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;)J

    move-result-wide p0

    return-wide p0

    .line 1601
    :cond_b
    iget-wide p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mLastNotificationTimestamp:J

    return-wide p0
.end method

.method public getNextState(IJLcom/android/server/notification/NotificationRecord;)I
    .registers 6

    .line 1522
    invoke-virtual {p0, p4}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheExempted(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x2

    return p0

    .line 1525
    :cond_8
    invoke-virtual {p0, p4}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheExemptedFullVolume(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p4

    if-eqz p4, :cond_10

    const/4 p0, 0x0

    return p0

    .line 1528
    :cond_10
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getNextState(IJ)I

    move-result p0

    return p0
.end method

.method public getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I
    .registers 3

    .line 1532
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheActive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1533
    invoke-super {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result p0

    return p0

    .line 1535
    :cond_b
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result p0

    return p0
.end method

.method public getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F
    .registers 3

    .line 1541
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheActive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1542
    invoke-super {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F

    move-result p0

    return p0

    .line 1544
    :cond_b
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F

    move-result p0

    return p0
.end method

.method public isAvalancheActive()Z
    .registers 5

    .line 1619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mLastAvalancheTriggerTimestamp:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mTimeoutAvalanche:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mIsActive:Z

    .line 1621
    sget-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz v0, :cond_2f

    .line 1622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrategyAvalanche: active "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifAttentionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_2f
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mIsActive:Z

    return p0
.end method

.method public final isAvalancheExempted(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 8

    .line 1658
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheExemptedFullVolume(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1663
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isConversationMessage(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1664
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mLastAvalancheTriggerTimestamp:J

    cmp-long p0, v2, v4

    if-lez p0, :cond_23

    return v1

    .line 1668
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_2c

    return v1

    .line 1672
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isColorized()Z

    move-result p0

    if-eqz p0, :cond_37

    return v1

    :cond_37
    const/4 p0, 0x0

    return p0
.end method

.method public final isAvalancheExemptedFullVolume(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5

    .line 1638
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 1643
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const-class v2, Landroid/app/Notification$CallStyle;

    invoke-virtual {v0, v2}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    .line 1648
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 1649
    const-string/jumbo v2, "reminder"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "event"

    .line 1650
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_3e

    .line 1654
    :cond_37
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mExemptionProvider:Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;

    invoke-interface {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;->isExempted(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0

    :cond_3e
    :goto_3e
    return v1
.end method

.method public final isConversationMessage(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 1681
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string/jumbo v0, "msg"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_15

    return v0

    .line 1684
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result p0

    if-eqz p0, :cond_20

    return v0

    .line 1687
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-nez p0, :cond_27

    return v0

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method public onNotificationPosted(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8

    .line 1493
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheActive()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->getLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1497
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v2

    .line 1498
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result v3

    .line 1501
    invoke-virtual {p0, v3, v0, v1, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->getNextState(IJLcom/android/server/notification/NotificationRecord;)I

    move-result v3

    .line 1506
    sget-boolean v4, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz v4, :cond_45

    .line 1507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StrategyAvalanche onNotificationPosted time delta: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " vol state: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " key: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifAttentionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_45
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mVolumeStates:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    :cond_4e
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->onNotificationPosted(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V
    .registers 2

    .line 1550
    invoke-super {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 1551
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public setApplyCooldownPerPackage(Z)V
    .registers 2

    .line 1614
    invoke-super {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->setApplyCooldownPerPackage(Z)V

    .line 1615
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->setApplyCooldownPerPackage(Z)V

    return-void
.end method

.method public setLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;J)V
    .registers 5

    .line 1585
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheExempted(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1586
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->setLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;J)V

    .line 1591
    :cond_9
    iput-wide p2, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mLastNotificationTimestamp:J

    .line 1592
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->setLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;J)V

    return-void
.end method

.method public setTriggerTimeMs(J)V
    .registers 3

    .line 1633
    iput-wide p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mLastAvalancheTriggerTimestamp:J

    return-void
.end method
