.class public Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;
.super Ljava/lang/Object;
.source "NotificationRecordLogger.java"


# instance fields
.field public final old:Lcom/android/server/notification/NotificationRecord;

.field public final r:Lcom/android/server/notification/NotificationRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V
    .registers 3

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 452
    iput-object p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    return-void
.end method


# virtual methods
.method public getAssistantHash()I
    .registers 1

    .line 514
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getAdjustmentIssuer()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 515
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public getChannelIdHash()I
    .registers 1

    .line 533
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/notification/SmallHash;->hash(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getGroupIdHash()I
    .registers 1

    .line 540
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/notification/SmallHash;->hash(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getInstanceId()I
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p0

    return p0
.end method

.method public getNotificationIdHash()I
    .registers 2

    .line 526
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p0

    xor-int/2addr p0, v0

    invoke-static {p0}, Lcom/android/server/notification/SmallHash;->hash(I)I

    move-result p0

    return p0
.end method

.method public getNumPeople()I
    .registers 2

    .line 499
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getNumPeople(Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public final getNumPeople(Landroid/os/Bundle;)I
    .registers 3

    if-eqz p1, :cond_17

    .line 504
    const-string p0, "android.people.list"

    const-class v0, Landroid/app/Person;

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 506
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_17

    .line 507
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public getStyle()I
    .registers 2

    .line 485
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getStyle(Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public final getStyle(Landroid/os/Bundle;)I
    .registers 2

    if-eqz p1, :cond_15

    .line 490
    const-string p0, "android.template"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 491
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    .line 492
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public shouldLogReported(I)Z
    .registers 6

    .line 459
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 462
    :cond_6
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    const/4 v3, 0x1

    if-eqz v2, :cond_b2

    if-lez p1, :cond_f

    goto/16 :goto_b2

    .line 466
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->isTextChanged()Z

    move-result p1

    if-eqz p1, :cond_16

    return v3

    .line 469
    :cond_16
    iget-object p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getChannelIdLogTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    .line 470
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getChannelIdLogTag()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b2

    iget-object p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 471
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupLogTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b2

    iget-object p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 472
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p1

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    .line 473
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-ne p1, v0, :cond_b2

    iget-object p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 474
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    .line 475
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 474
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b2

    iget-object p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 476
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    if-ne p1, v0, :cond_b2

    iget-object p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 477
    invoke-static {p1}, Lcom/android/server/notification/NotificationRecordLogger;->getLoggingImportance(Lcom/android/server/notification/NotificationRecord;)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v0}, Lcom/android/server/notification/NotificationRecordLogger;->getLoggingImportance(Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    if-ne p1, v0, :cond_b2

    iget-object p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    .line 478
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->rankingScoreMatches(F)Z

    move-result p0

    if-nez p0, :cond_b1

    goto :goto_b2

    :cond_b1
    return v1

    :cond_b2
    :goto_b2
    return v3
.end method
