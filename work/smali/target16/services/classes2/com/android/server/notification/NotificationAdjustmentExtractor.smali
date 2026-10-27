.class public Lcom/android/server/notification/NotificationAdjustmentExtractor;
.super Ljava/lang/Object;
.source "NotificationAdjustmentExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field static final HANG_TIME_MS:J = 0x7530L


# instance fields
.field public mGroupHelper:Lcom/android/server/notification/GroupHelper;

.field mInjectedTimeMs:Lcom/android/server/notification/NotificationAdjustmentExtractor$InjectedTime;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmGroupHelper(Lcom/android/server/notification/NotificationAdjustmentExtractor;)Lcom/android/server/notification/GroupHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRegroupReconsideration(Lcom/android/server/notification/NotificationRecord;ZZ)Lcom/android/server/notification/RankingReconsideration;
    .registers 11

    .line 127
    new-instance v0, Lcom/android/server/notification/NotificationAdjustmentExtractor$2;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationAdjustmentExtractor$2;-><init>(Lcom/android/server/notification/NotificationAdjustmentExtractor;Ljava/lang/String;JZZ)V

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3

    .line 0
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    .line 53
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_26

    .line 58
    :cond_a
    const-string v1, "key_type"

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->hasAdjustment(Ljava/lang/String;)Z

    move-result v1

    .line 59
    const-string v2, "key_unclassify"

    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->hasAdjustment(Ljava/lang/String;)Z

    move-result v2

    .line 69
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->applyAdjustments()V

    .line 74
    iget-object v3, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    if-eqz v3, :cond_26

    if-nez v1, :cond_21

    if-eqz v2, :cond_26

    .line 75
    :cond_21
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/notification/NotificationAdjustmentExtractor;->getRegroupReconsideration(Lcom/android/server/notification/NotificationRecord;ZZ)Lcom/android/server/notification/RankingReconsideration;

    move-result-object p0

    return-object p0

    :cond_26
    :goto_26
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setGroupHelper(Lcom/android/server/notification/GroupHelper;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    .line 0
    return-void
.end method
