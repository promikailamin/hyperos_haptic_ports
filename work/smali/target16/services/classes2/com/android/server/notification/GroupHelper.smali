.class public Lcom/android/server/notification/GroupHelper;
.super Ljava/lang/Object;
.source "GroupHelper.java"


# static fields
.field public static final DEBUG:Z

.field public static NOTIFICATION_BUNDLE_SECTIONS:Ljava/util/List;

.field public static NOTIFICATION_SHADE_SECTIONS:Ljava/util/List;


# instance fields
.field public final mAggregatedNotifications:Landroid/util/ArrayMap;

.field public final mAutoGroupAtCount:I

.field public final mAutogroupSparseGroupsAtCount:I

.field public final mCallback:Lcom/android/server/notification/GroupHelper$Callback;

.field public final mCanceledSummaries:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public mIsTestHarnessExempted:Z

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

.field public final mUngroupedNotifications:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$-SMOicoxsBMFGxX6QS3UfFxe7aE(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 197
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$5GuZJuBrqC7Uv5BlklHQ1ANK7Ww(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 177
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.recs"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 178
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Jb-alKhUHC8ZHo9uONB6z9BQH8c(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 169
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.social"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 170
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$JdYLtF53zID3brZQfa8kkolVAnU(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 173
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.news"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 174
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$NegTJpaY8GjhZifLja121BHRtBU(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 165
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.promotions"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 166
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$_mE4bzq5wXOngLA8bzAo5OzJLwc(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 199
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetNOTIFICATION_BUNDLE_SECTIONS()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_BUNDLE_SECTIONS:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 73
    const-string v0, "GroupHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 153
    invoke-static {v0, v1}, Lcom/android/server/notification/GroupHelper;->getNotificationShadeSections(II)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_SHADE_SECTIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;IIILcom/android/server/notification/GroupHelper$Callback;)V
    .registers 8

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Landroid/util/ArrayMap;

    .line 132
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    .line 141
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    .line 205
    iput p3, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    .line 206
    iput-object p6, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    .line 207
    iput-object p1, p0, Lcom/android/server/notification/GroupHelper;->mContext:Landroid/content/Context;

    .line 208
    iput-object p2, p0, Lcom/android/server/notification/GroupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 209
    iput p5, p0, Lcom/android/server/notification/GroupHelper;->mAutogroupSparseGroupsAtCount:I

    .line 210
    invoke-static {p3, p4}, Lcom/android/server/notification/GroupHelper;->getNotificationShadeSections(II)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_SHADE_SECTIONS:Ljava/util/List;

    return-void
.end method

.method public static getAutogroupSummaryFlags(Landroid/util/ArrayMap;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/GroupHelper$NotificationAttributes;",
            ">;)I"
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    .line 227
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v1

    .line 229
    :goto_e
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v1

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x10

    if-eqz v3, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 230
    iget v5, v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    invoke-static {v5, v4}, Lcom/android/server/notification/GroupHelper;->hasAnyFlag(II)Z

    move-result v4

    if-nez v4, :cond_2a

    move v0, v1

    .line 233
    :cond_2a
    iget v4, v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    const/16 v5, 0x22

    invoke-static {v4, v5}, Lcom/android/server/notification/GroupHelper;->hasAnyFlag(II)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 234
    iget v3, v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    goto :goto_13

    :cond_39
    if-eqz v0, :cond_3c

    move v1, v4

    :cond_3c
    or-int/lit16 p0, v1, 0x700

    or-int/2addr p0, v2

    return p0
.end method

.method public static getFullAggregateGroupKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 4

    .line 1624
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1625
    invoke-static {p0}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    invoke-virtual {v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFullAggregateGroupKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 1615
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNotificationShadeSections(II)Ljava/util/List;
    .registers 15

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    new-instance v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v5, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;-><init>()V

    const/4 v6, 0x0

    const-string v2, "PromotionsSection"

    const/4 v3, 0x0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;IILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    move v10, v4

    new-instance v7, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v11, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda1;

    invoke-direct {v11}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda1;-><init>()V

    const/4 v12, 0x0

    const-string v8, "SocialSection"

    const/4 v9, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;IILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    move-object p1, v7

    new-instance v7, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v11, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda2;

    invoke-direct {v11}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda2;-><init>()V

    const-string v8, "NewsSection"

    invoke-direct/range {v7 .. v12}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;IILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    move-object v2, v7

    new-instance v7, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v11, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda3;

    invoke-direct {v11}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda3;-><init>()V

    const-string v8, "RecsSection"

    invoke-direct/range {v7 .. v12}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;IILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    invoke-static {v1, p1, v2, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 181
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object p1, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_BUNDLE_SECTIONS:Ljava/util/List;

    .line 195
    new-instance v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v5, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "AlertingSection"

    move v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;IILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    new-instance v7, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v11, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda5;

    invoke-direct {v11}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda5;-><init>()V

    const-string v8, "SilentSection"

    const/4 v9, 0x1

    move v10, v4

    invoke-direct/range {v7 .. v12}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;IILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    invoke-static {v1, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getNumChildrenForGroup(Ljava/lang/String;Ljava/util/List;)I
    .registers 5

    .line 1690
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 1691
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1692
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1697
    :cond_2c
    sget-boolean p1, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p1, :cond_4e

    .line 1698
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNumChildrenForGroup "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " numChild: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GroupHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return v0
.end method

.method public static getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    .registers 4

    .line 2096
    sget-object v0, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_SHADE_SECTIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    .line 2097
    invoke-virtual {v1, p0}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->isInSection(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasAnyFlag(II)Z
    .registers 2

    .line 0
    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static isAggregatedGroup(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 1

    .line 1629
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static isGroupChildBundled(Lcom/android/server/notification/NotificationRecord;Ljava/util/Map;)Z
    .registers 5

    .line 973
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 974
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    .line 976
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_14

    return v2

    .line 980
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_1f

    return v2

    .line 984
    :cond_1f
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    if-nez p1, :cond_28

    return v2

    .line 989
    :cond_28
    invoke-static {p0}, Lcom/android/server/notification/GroupHelper;->isInBundleSection(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static isGroupChildWithoutSummary(Lcom/android/server/notification/NotificationRecord;Ljava/util/Map;)Z
    .registers 5

    .line 1761
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1762
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    .line 1764
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_14

    return v2

    .line 1768
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p0

    if-eqz p0, :cond_1f

    return v2

    .line 1772
    :cond_1f
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    return v2

    :cond_26
    const/4 p0, 0x1

    return p0
.end method

.method public static isGroupSummaryWithoutChildren(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;)Z
    .registers 5

    .line 1748
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1749
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v1

    .line 1752
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_26

    .line 1756
    :cond_1e
    invoke-static {v1, p1}, Lcom/android/server/notification/GroupHelper;->getNumChildrenForGroup(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    if-nez p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    :goto_26
    return v2
.end method

.method public static isInBundleSection(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 993
    invoke-static {p0}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 994
    sget-object v0, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_BUNDLE_SECTIONS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isOriginalGroupSummaryPresent(Lcom/android/server/notification/NotificationRecord;Landroid/util/ArrayMap;)Z
    .registers 5

    .line 1384
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupChild()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1386
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getOriginalGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p0

    .line 1385
    invoke-static {v0, v2, p0}, Lcom/android/server/notification/GroupHelper;->getFullAggregateGroupKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1387
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    if-eqz p0, :cond_39

    .line 1389
    invoke-static {p0}, Lcom/android/server/notification/GroupHelper;->isAggregatedGroup(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    if-nez p0, :cond_39

    const/4 p0, 0x1

    return p0

    :cond_39
    return v1
.end method


# virtual methods
.method public final addToUngroupedAndMaybeAggregate(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Z
    .registers 16

    .line 939
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 940
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/util/ArrayMap;

    .line 942
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 943
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v6

    .line 944
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 945
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v8, v1, Landroid/app/Notification;->color:I

    .line 946
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v9, v1, Landroid/app/Notification;->visibility:I

    .line 947
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v10

    .line 948
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 942
    invoke-virtual {v4, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 953
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 955
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iget v2, p3, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mAutogroupAtCount:I

    if-ge v1, v2, :cond_67

    if-nez v0, :cond_65

    goto :goto_67

    :cond_65
    const/4 p0, 0x0

    return p0

    .line 956
    :cond_67
    :goto_67
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_96

    .line 957
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget v1, p3, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mAutogroupAtCount:I

    const-string v2, "GroupHelper"

    if-lt v0, v1, :cond_91

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found >="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mAutogroupAtCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ungrouped notifications => force grouping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 961
    :cond_91
    const-string v0, "Found aggregate summary => force grouping"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_96
    :goto_96
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    iget v6, p3, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSummaryId:I

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/GroupHelper;->aggregateUngroupedNotifications(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;Ljava/util/Map;ZI)V

    const/4 p0, 0x1

    return p0
.end method

.method public final aggregateUngroupedNotifications(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;Ljava/util/Map;ZI)V
    .registers 8

    .line 1783
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1784
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1785
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 1786
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V

    .line 1792
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_20
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_37

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1793
    iget-object p4, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x1

    invoke-interface {p4, p3, p5, v0}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_20

    .line 1797
    :cond_37
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final cacheCanceledSummary(Lcom/android/server/notification/NotificationRecord;)V
    .registers 9

    .line 1966
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    .line 1967
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1968
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/notification/GroupHelper$CachedSummary;

    .line 1969
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    .line 1970
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 1971
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    .line 1972
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 1973
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object v6, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/GroupHelper$CachedSummary;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 1968
    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 2122
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2123
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9e

    .line 2124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ungrouped notifications:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2125
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 2126
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 2127
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_29

    .line 2128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2129
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 2130
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2129
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_71

    :catchall_96
    move-exception p0

    goto/16 :goto_198

    .line 2135
    :cond_99
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2138
    :cond_9e
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_136

    .line 2139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Autogrouped notifications:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2140
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_131

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 2141
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 2142
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c4

    .line 2143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2144
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10c

    .line 2149
    :cond_131
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2152
    :cond_136
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_196

    .line 2153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Cached canceled summaries:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2154
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_191

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$CachedSummary;

    .line 2155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetkey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetoriginalGroupKey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_15c

    .line 2158
    :cond_191
    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2160
    :cond_196
    monitor-exit v0

    return-void

    :goto_198
    monitor-exit v0
    :try_end_199
    .catchall {:try_start_3 .. :try_end_199} :catchall_96

    throw p0
.end method

.method public findCanceledSummary(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/GroupHelper$CachedSummary;
    .registers 8

    .line 2010
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 2011
    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v2

    if-ne p4, v2, :cond_a

    .line 2012
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$CachedSummary;

    if-eqz v1, :cond_a

    .line 2013
    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetid(Lcom/android/server/notification/GroupHelper$CachedSummary;)I

    move-result v2

    if-ne v2, p3, :cond_a

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgettag(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    :cond_41
    const/4 p0, 0x0

    return-object p0
.end method

.method public findCanceledSummary(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/notification/GroupHelper$CachedSummary;
    .registers 7

    .line 2025
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v0, p4, p1, p5}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2027
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/GroupHelper$CachedSummary;

    if-eqz p0, :cond_20

    .line 2028
    invoke-static {p0}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetid(Lcom/android/server/notification/GroupHelper$CachedSummary;)I

    move-result p1

    if-ne p1, p3, :cond_20

    invoke-static {p0}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgettag(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_20

    return-object p0

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAutobundledSummaryAttributes(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .registers 18

    .line 462
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v5, v1

    move v4, v2

    move v6, v4

    move v7, v6

    move v12, v3

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    if-nez v5, :cond_1d

    .line 465
    iget-object v5, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    goto :goto_26

    .line 467
    :cond_1d
    iget-object v9, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v9

    if-nez v9, :cond_26

    move v4, v3

    :cond_26
    :goto_26
    if-ne v7, v2, :cond_2b

    .line 473
    iget v7, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    goto :goto_30

    .line 475
    :cond_2b
    iget v9, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    if-eq v7, v9, :cond_30

    move v6, v3

    .line 480
    :cond_30
    :goto_30
    iget v8, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    if-ne v8, v2, :cond_c

    move v12, v2

    goto :goto_c

    :cond_36
    if-nez v4, :cond_3c

    .line 485
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/GroupHelper;->getMonochromeAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v5

    :cond_3c
    move-object v10, v5

    if-nez v6, :cond_41

    move v11, v3

    goto :goto_42

    :cond_41
    move v11, v7

    .line 494
    :goto_42
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_46
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 495
    iget v0, v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    if-eq v0, v2, :cond_46

    const/4 v2, 0x2

    :cond_57
    move v13, v2

    .line 501
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_68

    move-object/from16 p0, p2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    :cond_68
    move-object v14, v1

    .line 503
    new-instance v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    const/4 v9, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    return-object v8
.end method

.method public final getAutogroupedNotificationsMoveOps(ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .registers 13

    .line 1397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1398
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    .line 1399
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1401
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1403
    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v3

    if-ne p1, v3, :cond_14

    .line 1404
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    .line 1405
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_3b

    goto :goto_14

    .line 1411
    :cond_3b
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_43
    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1412
    invoke-virtual {p3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_43

    .line 1414
    invoke-virtual {p3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    invoke-static {v5}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v5

    if-nez v5, :cond_62

    goto :goto_43

    .line 1418
    :cond_62
    new-instance v6, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v6, p1, p2, v5}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 1420
    invoke-virtual {v2, v6}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 1421
    sget-boolean v5, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v5, :cond_87

    .line 1422
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Change section on channel update: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "GroupHelper"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_87
    new-instance v5, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    .line 1425
    invoke-virtual {p3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    const/4 v8, 0x0

    invoke-direct {v5, v7, v2, v6, v8}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper-IA;)V

    .line 1424
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    invoke-virtual {p3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    :cond_9a
    return-object v0
.end method

.method public getMonochromeAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .registers 6

    const/4 v0, 0x0

    .line 550
    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 551
    instance-of v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_2f

    .line 552
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 553
    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 554
    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getSourceDrawableResId()I

    move-result v1

    .line 555
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v2

    const/high16 v3, -0x40000000    # -2.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    .line 553
    invoke-static {p1, v1, v3, v2}, Landroid/graphics/drawable/Icon;->createWithResourceAdaptiveDrawable(Ljava/lang/String;IZF)Landroid/graphics/drawable/Icon;

    move-result-object v0
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_26} :catch_27

    goto :goto_2f

    :catch_27
    move-exception p1

    .line 559
    const-string v1, "GroupHelper"

    const-string v2, "Failed to getApplicationIcon() in getMonochromeAppIcon()"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    :goto_2f
    if-eqz v0, :cond_32

    return-object v0

    .line 564
    :cond_32
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mContext:Landroid/content/Context;

    const p1, 0x10805a5

    invoke-static {p0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public final getNumChildrenForGroupWithSection(Ljava/lang/String;Ljava/util/List;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)I
    .registers 7

    .line 1941
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "GroupHelper"

    if-eqz v0, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 1942
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1943
    invoke-static {v0}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v2

    if-eqz v2, :cond_37

    if-eq v2, p3, :cond_34

    goto :goto_37

    :cond_34
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 1945
    :cond_37
    :goto_37
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_57

    .line 1946
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getNumChildrenForGroupWithSection skip because invalid section: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " r: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    const/4 p0, -0x1

    return p0

    .line 1957
    :cond_59
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_79

    .line 1958
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getNumChildrenForGroupWithSection "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " numChild: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    return p2
.end method

.method public final getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .registers 6

    .line 1095
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1096
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 1099
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1100
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1101
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    monitor-exit v0

    return-object p0

    :catchall_31
    move-exception p0

    goto :goto_60

    .line 1106
    :cond_33
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1108
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    monitor-exit v0

    return-object p0

    .line 1111
    :cond_5d
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_31

    throw p0
.end method

.method public final getReclassifiedNotificationsMoveOps(ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .registers 9

    .line 1354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1355
    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_d
    :goto_d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 1358
    invoke-virtual {p0, v1}, Lcom/android/server/notification/GroupHelper;->isChildOfValidAppGroup(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {p0, v1}, Lcom/android/server/notification/GroupHelper;->isNotAppGroupPrevInvalidSection(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1360
    :cond_25
    invoke-static {v1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1361
    sget-object v3, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_BUNDLE_SECTIONS:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1362
    new-instance v3, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v3, p1, p2, v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 1364
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_5a

    .line 1365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regroup after classification: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GroupHelper"

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_5a
    new-instance v2, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3, v4}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper-IA;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_64
    return-object v0
.end method

.method public final getSectionGroupKeyWithFallback(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .registers 3

    .line 1078
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1080
    invoke-static {p1, v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->forRecord(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object p0

    return-object p0

    .line 1082
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object p0

    return-object p0
.end method

.method public getSparseGroups(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Landroid/util/ArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/GroupHelper$NotificationSectioner;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 1909
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1910
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_d
    :goto_d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    if-eqz v1, :cond_d

    .line 1911
    invoke-virtual {p4, v1}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->isInSection(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1912
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1913
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v2

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v3

    if-ne v2, v3, :cond_d

    .line 1914
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1915
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1916
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p4}, Lcom/android/server/notification/GroupHelper;->getNumChildrenForGroupWithSection(Ljava/lang/String;Ljava/util/List;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)I

    move-result v2

    if-lez v2, :cond_d

    const/4 v3, 0x3

    if-ge v2, v3, :cond_d

    .line 1919
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_6e
    return-object v0
.end method

.method public final getSummaryAttributes(Ljava/lang/String;Landroid/util/ArrayMap;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .registers 10

    .line 531
    invoke-static {p2}, Lcom/android/server/notification/GroupHelper;->getAutogroupSummaryFlags(Landroid/util/ArrayMap;)I

    move-result v1

    .line 533
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p2

    .line 532
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/GroupHelper;->getAutobundledSummaryAttributes(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    move-result-object p0

    .line 534
    new-instance v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    iget v3, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    iget v4, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    iget v5, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    iget-object v6, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    return-object v0
.end method

.method public final getUngroupedNotificationsMoveOps(ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .registers 14

    .line 1439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1442
    invoke-virtual {p3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a5

    .line 1443
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    .line 1444
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1445
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1447
    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v3

    if-ne p1, v3, :cond_1a

    .line 1448
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    .line 1449
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_41

    goto :goto_1a

    .line 1455
    :cond_41
    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1456
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4e
    :goto_4e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1457
    invoke-virtual {p3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    if-eqz v6, :cond_4e

    .line 1460
    invoke-static {v6}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v7

    if-nez v7, :cond_69

    goto :goto_4e

    .line 1464
    :cond_69
    new-instance v8, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v8, p1, p2, v7}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 1466
    invoke-virtual {v2, v8}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4e

    .line 1467
    sget-boolean v7, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v7, :cond_8e

    .line 1468
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Change ungrouped section: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "GroupHelper"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :cond_8e
    new-instance v7, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    const/4 v9, 0x0

    invoke-direct {v7, v6, v2, v8, v9}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper-IA;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1473
    invoke-virtual {p3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 1479
    :cond_9e
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a

    :cond_a5
    return-object v0
.end method

.method public final groupSparseGroups(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    .line 1833
    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/android/server/notification/GroupHelper;->getSparseGroups(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 1835
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    iget v6, v0, Lcom/android/server/notification/GroupHelper;->mAutogroupSparseGroupsAtCount:I

    if-lt v5, v6, :cond_186

    .line 1836
    sget-boolean v5, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    const-string v6, "GroupHelper"

    if-eqz v5, :cond_42

    .line 1837
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Aggregate sparse groups for: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Section: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1837
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :cond_42
    iget-object v5, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 1843
    invoke-virtual {v5, v4, v7}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 1845
    iget-object v7, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 1846
    invoke-virtual {v7, v4, v8}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 1847
    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    .line 1849
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v10

    if-nez v10, :cond_71

    .line 1851
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    goto :goto_72

    :cond_71
    const/4 v10, 0x0

    .line 1853
    :goto_72
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_76
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_177

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/notification/NotificationRecord;

    .line 1855
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12f

    .line 1857
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v12

    if-nez v12, :cond_fe

    .line 1858
    sget-boolean v12, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v12, :cond_ae

    .line 1859
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Aggregate notification (sparse group): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    :cond_ae
    iget-object v12, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14, v9}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1862
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 1863
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v14

    .line 1864
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v15

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->color:I

    move-object/from16 p1, v2

    .line 1865
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->visibility:I

    .line 1866
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v18

    .line 1867
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v19

    move/from16 v17, v2

    move/from16 v16, v9

    invoke-direct/range {v13 .. v19}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 1862
    invoke-virtual {v7, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v10, :cond_fc

    .line 1871
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    :cond_fc
    :goto_fc
    const/4 v13, 0x1

    goto :goto_172

    :cond_fe
    move-object/from16 p1, v2

    .line 1873
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 1875
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_122

    .line 1876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remove app summary (sparse group): "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_122
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Lcom/android/server/notification/GroupHelper$Callback;->removeAppProvidedSummary(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {v0, v11}, Lcom/android/server/notification/GroupHelper;->cacheCanceledSummary(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_fc

    :cond_12f
    move-object/from16 p1, v2

    .line 1883
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 1884
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_153

    .line 1885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Aggregate ungrouped (sparse group): "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    :cond_153
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v2, v9, v12, v13}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1888
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    invoke-virtual {v7, v2, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_172
    move-object/from16 v2, p1

    move v9, v13

    goto/16 :goto_76

    .line 1893
    :cond_177
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    iget v1, v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSummaryId:I

    invoke-virtual {v0, v4, v10, v8, v1}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V

    .line 1899
    iget-object v0, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_186
    return-void
.end method

.method public final isChildOfValidAppGroup(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5

    .line 1640
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1641
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 1645
    :cond_c
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupChild()Z

    move-result v0

    if-nez v0, :cond_17

    return v2

    .line 1649
    :cond_17
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-eqz v0, :cond_1c

    return v2

    .line 1653
    :cond_1c
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v0

    if-nez v0, :cond_42

    .line 1655
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_41

    .line 1656
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping autogrouping for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no valid section found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GroupHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    return v2

    .line 1661
    :cond_42
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/GroupHelper;->isNotificationAggregatedInSection(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Z

    move-result p0

    if-eqz p0, :cond_49

    return v2

    :cond_49
    const/4 p0, 0x1

    return p0
.end method

.method public final isNotAppGroupPrevInvalidSection(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4

    .line 1669
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1670
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 1674
    :cond_c
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-eqz v0, :cond_11

    return v1

    .line 1678
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object p0

    if-eqz p0, :cond_18

    return v1

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public final isNotificationAggregatedInSection(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Z
    .registers 3

    .line 1634
    invoke-static {p1, p2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->forRecord(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object p0

    .line 1636
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSummaryWithAllChildrenBundled(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/List;)Z
    .registers 8

    .line 1712
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->isAggregatedGroup(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 1715
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p0

    if-nez p0, :cond_13

    return v0

    .line 1719
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object p0

    .line 1723
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v0

    move v1, p2

    :cond_21
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 1724
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-nez v3, :cond_21

    .line 1725
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    add-int/lit8 p2, p2, 0x1

    .line 1727
    invoke-static {v2}, Lcom/android/server/notification/GroupHelper;->isInBundleSection(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1733
    :cond_54
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_58
    :goto_58
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/notification/NotificationRecord;

    .line 1734
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-nez v2, :cond_58

    .line 1735
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    add-int/lit8 p2, p2, 0x1

    .line 1737
    invoke-static {p3}, Lcom/android/server/notification/GroupHelper;->isInBundleSection(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p3

    if-eqz p3, :cond_58

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_8b
    if-lez p2, :cond_91

    if-ne v1, p2, :cond_91

    const/4 p0, 0x1

    return p0

    :cond_91
    return v0
.end method

.method public isUpdateForCanceledSummary(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 11

    .line 2059
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2060
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_49

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2061
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2062
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v7

    .line 2063
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    .line 2061
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/GroupHelper;->findCanceledSummary(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/notification/GroupHelper$CachedSummary;

    move-result-object p0

    if-eqz p0, :cond_44

    const/4 v2, 0x1

    .line 2064
    :cond_44
    monitor-exit v1

    return v2

    :catchall_46
    move-exception v0

    move-object p0, v0

    goto :goto_4b

    .line 2066
    :cond_49
    monitor-exit v1

    return v2

    .line 2067
    :goto_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_46

    throw p0
.end method

.method public maybeCancelGroupChildrenForCanceledSummary(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 9

    .line 2082
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2083
    :try_start_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/GroupHelper;->findCanceledSummary(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/GroupHelper$CachedSummary;

    move-result-object p2

    if-eqz p2, :cond_36

    .line 2085
    sget-boolean p3, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p3, :cond_2a

    .line 2086
    const-string p3, "GroupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found cached summary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetkey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_38

    .line 2088
    :cond_2a
    :goto_2a
    iget-object p3, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-static {p2}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetoriginalGroupKey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p4, p1, v1, p5}, Lcom/android/server/notification/GroupHelper$Callback;->removeNotificationFromCanceledGroup(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2090
    invoke-virtual {p0, p1, p4, p2}, Lcom/android/server/notification/GroupHelper;->removeCachedSummary(Ljava/lang/String;ILcom/android/server/notification/GroupHelper$CachedSummary;)V

    .line 2092
    :cond_36
    monitor-exit v0

    return-void

    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_28

    throw p0
.end method

.method public final maybeClearCanceledSummariesCache(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Z)V
    .registers 9

    .line 1980
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1982
    iget-object p3, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/notification/GroupHelper$CachedSummary;

    if-eqz p3, :cond_78

    .line 1985
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 1986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try removing cached summary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :cond_29
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2d
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 1991
    invoke-static {p3}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetoriginalGroupKey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1992
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v1, p2, :cond_2d

    .line 1993
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    return-void

    .line 1999
    :cond_64
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/GroupHelper;->removeCachedSummary(Ljava/lang/String;ILcom/android/server/notification/GroupHelper$CachedSummary;)V

    if-eqz p5, :cond_78

    .line 2000
    invoke-static {p3}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetdeleteIntent(Lcom/android/server/notification/GroupHelper$CachedSummary;)Landroid/app/PendingIntent;

    move-result-object p2

    if-eqz p2, :cond_78

    .line 2001
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-static {p3}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetdeleteIntent(Lcom/android/server/notification/GroupHelper$CachedSummary;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/server/notification/GroupHelper$Callback;->sendAppProvidedSummaryDeleteIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V

    :cond_78
    return-void
.end method

.method public final maybeGroupWithSections(Lcom/android/server/notification/NotificationRecord;Z)Z
    .registers 16

    .line 583
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 585
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2e

    .line 587
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->maybeUngroupOnNonGroupableUpdate(Lcom/android/server/notification/NotificationRecord;)V

    .line 588
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_2d

    .line 589
    const-string p0, "GroupHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping autogrouping for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no valid section found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return v2

    .line 594
    :cond_2e
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 595
    new-instance v3, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 596
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    invoke-direct {v3, v4, v0, v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 599
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 600
    invoke-virtual {v3, v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 601
    sget-boolean v4, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v4, :cond_61

    .line 602
    const-string v4, "GroupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Section changed for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_61
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/GroupHelper;->maybeUngroupOnSectionChanged(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V

    .line 607
    :cond_64
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 609
    :try_start_67
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 611
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/notification/GroupHelper;->maybeUpdateSummaryAttributes(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 612
    monitor-exit v4

    return v2

    :catchall_7a
    move-exception v0

    move-object p0, v0

    goto/16 :goto_14f

    .line 615
    :cond_7e
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 616
    invoke-virtual {v0, v3, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 617
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 618
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v7

    .line 619
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    .line 620
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->color:I

    .line 621
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->visibility:I

    .line 622
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v11

    .line 623
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v6 .. v12}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 617
    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v5, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v5

    iget v6, v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mAutogroupAtCount:I

    if-ge v5, v6, :cond_ce

    if-eqz p2, :cond_14d

    .line 628
    :cond_ce
    sget-boolean v5, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v5, :cond_ff

    .line 629
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v5

    iget v6, v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mAutogroupAtCount:I

    if-lt v5, v6, :cond_f8

    .line 630
    const-string v5, "GroupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found >="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mAutogroupAtCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ungrouped notifications => force grouping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    .line 633
    :cond_f8
    const-string v5, "GroupHelper"

    const-string v6, "Found aggregate summary => force grouping"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_ff
    :goto_ff
    iget-object v5, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 638
    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 639
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 640
    iget-object v6, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    iget v1, v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSummaryId:I

    invoke-virtual {p0, v3, v5, p2, v1}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V

    .line 647
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_125
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_148

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 648
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_13e

    move v2, v5

    goto :goto_125

    .line 652
    :cond_13e
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v0, v6, v5}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_125

    .line 658
    :cond_148
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    :cond_14d
    monitor-exit v4

    return v2

    :goto_14f
    monitor-exit v4
    :try_end_150
    .catchall {:try_start_67 .. :try_end_150} :catchall_7a

    throw p0
.end method

.method public final maybeUngroupOnAppGrouped(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5

    .line 720
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->getSectionGroupKeyWithFallback(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v0

    .line 723
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 724
    invoke-virtual {v1, v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 725
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Section changed for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GroupHelper"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move-object v0, v1

    .line 731
    :cond_2b
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/GroupHelper;->maybeUngroupWithSections(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Z

    move-result p0

    return p0
.end method

.method public final maybeUngroupOnNonGroupableUpdate(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3

    .line 700
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/GroupHelper;->maybeUngroupWithSections(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Z

    return-void
.end method

.method public final maybeUngroupOnSectionChanged(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    .registers 3

    .line 709
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/GroupHelper;->maybeUngroupWithSections(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Z

    .line 710
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x0

    .line 711
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setOverrideGroupKey(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public final maybeUngroupWithSections(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Z
    .registers 13

    const/4 v0, 0x0

    if-nez p2, :cond_23

    .line 753
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_22

    .line 754
    const-string p0, "GroupHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping maybeUngroupWithSections for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no valid section found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return v0

    .line 761
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 762
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 763
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    .line 764
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 767
    :try_start_32
    iget-object v5, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 768
    invoke-virtual {v5, p2, v6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 769
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    iget-object v6, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    iget-object v5, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 773
    invoke-virtual {v5, p2, v6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 775
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11c

    .line 777
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v6

    if-eqz v6, :cond_9d

    .line 778
    sget-object v7, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_BUNDLE_SECTIONS:Ljava/util/List;

    .line 779
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 781
    invoke-static {p1, v6}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->forRecord(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v7

    .line 780
    invoke-virtual {p2, v7}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 782
    sget-boolean v1, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v1, :cond_98

    .line 783
    const-string v1, "GroupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip removeAutoGroup because bundled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    :catchall_95
    move-exception p0

    goto/16 :goto_160

    .line 785
    :cond_98
    :goto_98
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/notification/GroupHelper;->maybeUpdateSummaryAttributes(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 786
    monitor-exit v4

    return v0

    .line 789
    :cond_9d
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object v6, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    sget-boolean v6, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v6, :cond_c4

    .line 794
    const-string v7, "GroupHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "maybeUngroup removeAutoGroup: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_c4
    iget-object p1, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroup(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    const/4 v5, 0x1

    if-eqz p1, :cond_fb

    if-eqz v6, :cond_ec

    .line 801
    const-string p1, "GroupHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aggregate group is empty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_ec
    iget-object p1, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    .line 804
    invoke-virtual {p2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-interface {p1, v3, v2, v0}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11a

    :cond_fb
    if-eqz v6, :cond_113

    .line 808
    const-string p1, "GroupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aggregate group not empty, updating: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_113
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, v5, v0}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V

    :goto_11a
    move v0, v5

    goto :goto_15e

    .line 813
    :cond_11c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e

    .line 814
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->isAggregatedGroup(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_15e

    .line 815
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_15e

    .line 817
    sget-boolean p1, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p1, :cond_150

    .line 818
    const-string p1, "GroupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aggregate group is empty: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_150
    iget-object p1, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {p2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v2, v1}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    :cond_15e
    :goto_15e
    monitor-exit v4

    return v0

    :goto_160
    monitor-exit v4
    :try_end_161
    .catchall {:try_start_32 .. :try_end_161} :catchall_95

    throw p0
.end method

.method public final maybeUpdateSummaryAttributes(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V
    .registers 13

    .line 669
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 670
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 671
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    if-eqz v1, :cond_7d

    .line 673
    new-instance v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 674
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    .line 675
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 676
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->color:I

    .line 677
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->visibility:I

    .line 678
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v7

    .line 679
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 680
    invoke-virtual {v1, v2}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 681
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_73

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "maybeUpdateSummaryAttributes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_73
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    iget p3, p3, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSummaryId:I

    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V

    :cond_7d
    return-void
.end method

.method public final moveNotificationsToNewSection(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 1493
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 1497
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 1499
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v8, 0x0

    if-eqz v3, :cond_11c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    .line 1500
    invoke-static {v3}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->-$$Nest$fgetrecord(Lcom/android/server/notification/GroupHelper$NotificationMoveOp;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v4

    .line 1501
    invoke-static {v3}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->-$$Nest$fgetoldGroup(Lcom/android/server/notification/GroupHelper$NotificationMoveOp;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v5

    .line 1502
    invoke-static {v3}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->-$$Nest$fgetnewGroup(Lcom/android/server/notification/GroupHelper$NotificationMoveOp;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v3

    .line 1504
    sget-boolean v9, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v9, :cond_5e

    .line 1505
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "moveNotificationToNewSection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " from: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " regroupingReason: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "GroupHelper"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    const/4 v9, 0x1

    if-eqz v5, :cond_89

    .line 1513
    iget-object v10, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 1514
    invoke-virtual {v10, v5, v11}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    .line 1516
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    iget-object v11, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v11, v5, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_94

    .line 1522
    new-instance v10, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    invoke-direct {v10, v5, v4, v9}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;-><init>(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;Z)V

    invoke-virtual {v6, v5, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_94

    .line 1530
    :cond_89
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_94
    :goto_94
    if-eqz v3, :cond_12

    .line 1538
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v5, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v10, 0x3

    if-ne v5, v10, :cond_b1

    .line 1542
    invoke-virtual {v4, v8}, Lcom/android/server/notification/NotificationRecord;->setOverrideGroupKey(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1544
    :cond_b1
    iget-object v5, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 1545
    invoke-virtual {v5, v3, v10}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 1547
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v9

    .line 1548
    iget-object v9, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 1549
    invoke-virtual {v9, v3, v10}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    .line 1551
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 1552
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v12

    .line 1553
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    .line 1554
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget v14, v14, Landroid/app/Notification;->color:I

    .line 1555
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget v15, v15, Landroid/app/Notification;->visibility:I

    .line 1556
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v16

    .line 1557
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v11 .. v17}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 1551
    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    iget-object v10, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v10, v3, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    invoke-virtual {v4, v8}, Lcom/android/server/notification/NotificationRecord;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 1564
    new-instance v8, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    invoke-direct {v8, v3, v4, v5}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;-><init>(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;Z)V

    invoke-virtual {v6, v3, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12

    .line 1572
    :cond_11c
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_124
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1af

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1573
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 1574
    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 1575
    iget-object v3, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 1576
    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 1578
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    invoke-static {v4}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->-$$Nest$fgetrecord(Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v4

    .line 1579
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    invoke-static {v5}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->-$$Nest$fgethasSummary(Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;)Z

    move-result v5

    .line 1581
    invoke-static {v4}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v10

    if-eqz v10, :cond_167

    .line 1583
    iget v11, v10, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mAutogroupAtCount:I

    goto :goto_169

    :cond_167
    iget v11, v0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    .line 1584
    :goto_169
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v12, v11, :cond_177

    if-eqz v5, :cond_17c

    .line 1585
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_17c

    :cond_177
    move/from16 v11, p1

    move-object/from16 v12, p2

    goto :goto_19c

    .line 1593
    :cond_17c
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_197

    if-eqz v5, :cond_197

    .line 1594
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v11, p1

    move-object/from16 v12, p2

    invoke-interface {v2, v11, v12, v3}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    .line 1595
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_124

    :cond_197
    move/from16 v11, p1

    move-object/from16 v12, p2

    goto :goto_124

    :goto_19c
    if-nez v10, :cond_19f

    goto :goto_124

    .line 1589
    :cond_19f
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    iget v4, v10, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSummaryId:I

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/GroupHelper;->aggregateUngroupedNotifications(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;Ljava/util/Map;ZI)V

    goto/16 :goto_124

    .line 1602
    :cond_1af
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b7
    :goto_1b7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1603
    iget-object v3, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    .line 1605
    invoke-virtual {v7, v2, v8}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1604
    invoke-interface {v3, v2, v4}, Lcom/android/server/notification/GroupHelper$Callback;->removeAppProvidedSummaryOnClassification(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    if-eqz v2, :cond_1b7

    .line 1607
    invoke-virtual {v0, v2}, Lcom/android/server/notification/GroupHelper;->cacheCanceledSummary(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_1b7

    :cond_1d5
    return-void
.end method

.method public onChannelUpdated(ILjava/lang/String;Landroid/app/NotificationChannel;Ljava/util/List;Landroid/util/ArrayMap;)V
    .registers 12

    .line 1256
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1257
    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1258
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1259
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_11
    :goto_11
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 1260
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1261
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1262
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    if-ne v4, p1, :cond_11

    .line 1263
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    invoke-static {v3}, Lcom/android/server/notification/GroupHelper;->isInBundleSection(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1269
    invoke-static {v3, p5}, Lcom/android/server/notification/GroupHelper;->isOriginalGroupSummaryPresent(Lcom/android/server/notification/NotificationRecord;Landroid/util/ArrayMap;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1270
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 1271
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1270
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :catchall_6f
    move-exception p0

    goto :goto_76

    .line 1277
    :cond_71
    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/android/server/notification/GroupHelper;->regroupNotifications(ILjava/lang/String;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 1278
    monitor-exit v0

    return-void

    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_6f

    throw p0
.end method

.method public onChannelUpdated(Lcom/android/server/notification/NotificationRecord;)V
    .registers 7

    .line 1291
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1292
    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1293
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1295
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1, v1, v2}, Lcom/android/server/notification/GroupHelper;->regroupNotifications(ILjava/lang/String;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 1298
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final onGroupSummaryAdded(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;)V
    .registers 8

    .line 1204
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_11

    .line 1207
    :cond_b
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->isAggregatedGroup(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_11
    return-void

    .line 1210
    :cond_12
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1211
    :try_start_15
    sget-boolean v1, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v1, :cond_34

    .line 1212
    const-string v1, "GroupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGroupSummaryAdded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :catchall_31
    move-exception p0

    goto/16 :goto_aa

    .line 1214
    :cond_34
    :goto_34
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    .line 1216
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3c
    :goto_3c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 1218
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getOriginalGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    .line 1217
    invoke-static {v2, v3, v4}, Lcom/android/server/notification/GroupHelper;->getFullAggregateGroupKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1219
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-nez v3, :cond_3c

    iget v3, v1, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_3c

    .line 1221
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1222
    invoke-static {v1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v2

    if-eqz v2, :cond_8c

    .line 1223
    sget-object v3, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_BUNDLE_SECTIONS:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    goto :goto_8c

    .line 1229
    :cond_81
    invoke-virtual {p0, v1}, Lcom/android/server/notification/GroupHelper;->maybeUngroupOnAppGrouped(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v2, 0x0

    .line 1232
    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationRecord;->setOverrideGroupKey(Ljava/lang/String;)V

    goto :goto_3c

    .line 1224
    :cond_8c
    :goto_8c
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_3c

    .line 1225
    const-string v2, "GroupHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGroupSummaryAdded skip bundled child: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 1236
    :cond_a8
    monitor-exit v0

    return-void

    :goto_aa
    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_15 .. :try_end_ab} :catchall_31

    throw p0
.end method

.method public onGroupedNotificationRemovedWithDelay(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;)V
    .registers 12

    .line 1130
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1131
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_bf

    .line 1135
    :cond_c
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-eqz v1, :cond_12

    goto/16 :goto_bf

    .line 1139
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/notification/GroupHelper;->mIsTestHarnessExempted:Z

    if-eqz v1, :cond_18

    goto/16 :goto_bf

    .line 1143
    :cond_18
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v6

    if-nez v6, :cond_3e

    .line 1145
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_bf

    .line 1146
    const-string p0, "GroupHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skipping autogrouping for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no valid section found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1152
    :cond_3e
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1153
    new-instance v7, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1154
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-direct {v7, v1, v0, v6}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 1157
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_bf

    .line 1161
    :cond_5a
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1162
    :try_start_5d
    invoke-static {p1, p2}, Lcom/android/server/notification/GroupHelper;->isGroupSummaryWithoutChildren(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1163
    sget-boolean p2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p2, :cond_81

    .line 1164
    const-string p3, "GroupHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGroupSummaryWithoutChild "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    :catchall_7e
    move-exception v0

    move-object p0, v0

    goto :goto_c0

    .line 1166
    :cond_81
    :goto_81
    invoke-virtual {p0, p1, v7, v6}, Lcom/android/server/notification/GroupHelper;->addToUngroupedAndMaybeAggregate(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Z

    move-result p3

    if-nez p3, :cond_ab

    if-eqz p2, :cond_9f

    .line 1172
    const-string p2, "GroupHelper"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Empty group summary to be canceled and cached: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_9f
    iget-object p2, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/android/server/notification/GroupHelper$Callback;->removeAppProvidedSummary(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->cacheCanceledSummary(Lcom/android/server/notification/NotificationRecord;)V

    .line 1178
    :cond_ab
    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_5d .. :try_end_ac} :catchall_7e

    return-void

    :cond_ad
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1184
    :try_start_b1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/GroupHelper;->groupSparseGroups(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b5

    goto :goto_be

    :catchall_b5
    move-exception v0

    move-object p0, v0

    .line 1187
    :try_start_b7
    const-string p1, "GroupHelper"

    const-string p2, "Failed to group sparse groups"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1190
    :goto_be
    monitor-exit v1

    :cond_bf
    :goto_bf
    return-void

    :goto_c0
    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_b7 .. :try_end_c1} :catchall_7e

    throw p0
.end method

.method public onNotificationPosted(Lcom/android/server/notification/NotificationRecord;Z)Z
    .registers 5

    const/4 v0, 0x0

    .line 255
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v1

    if-nez v1, :cond_12

    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/GroupHelper;->maybeGroupWithSections(Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result p0

    return p0

    :catch_10
    move-exception p0

    goto :goto_16

    .line 259
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->maybeUngroupOnAppGrouped(Lcom/android/server/notification/NotificationRecord;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_10

    return v0

    .line 270
    :goto_16
    const-string p1, "GroupHelper"

    const-string p2, "Failure processing new notification"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public onNotificationPostedWithDelay(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;)V
    .registers 12

    .line 846
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 847
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_c8

    .line 851
    :cond_c
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-eqz v1, :cond_12

    goto/16 :goto_c8

    .line 855
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/notification/GroupHelper;->mIsTestHarnessExempted:Z

    if-eqz v1, :cond_18

    goto/16 :goto_c8

    .line 861
    :cond_18
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/GroupHelper;->onGroupSummaryAdded(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;)V

    .line 863
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v6

    if-nez v6, :cond_41

    .line 865
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_c8

    .line 866
    const-string p0, "GroupHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skipping autogrouping for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no valid section found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 871
    :cond_41
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 872
    new-instance v7, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 873
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-direct {v7, v1, v0, v6}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 876
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    goto/16 :goto_c8

    .line 880
    :cond_5e
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 883
    :try_start_61
    invoke-static {p1, p3}, Lcom/android/server/notification/GroupHelper;->isGroupChildWithoutSummary(Lcom/android/server/notification/NotificationRecord;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 884
    invoke-static {p1, p2}, Lcom/android/server/notification/GroupHelper;->isGroupSummaryWithoutChildren(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_71

    :cond_6d
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    goto :goto_c9

    .line 913
    :cond_71
    invoke-static {p1, p3}, Lcom/android/server/notification/GroupHelper;->isGroupChildBundled(Lcom/android/server/notification/NotificationRecord;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 914
    sget-boolean p2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p2, :cond_96

    .line 915
    const-string p2, "GroupHelper"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGroupChildInDifferentBundleThanSummary: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    :catchall_92
    move-exception v0

    move-object p0, v0

    goto/16 :goto_11a

    .line 917
    :cond_96
    :goto_96
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p2

    new-instance p3, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    const/4 v2, 0x0

    invoke-direct {p3, p1, v2, v7, v2}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper-IA;)V

    .line 918
    invoke-static {p3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 919
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 917
    invoke-virtual {p0, p2, v0, p3, p1}, Lcom/android/server/notification/GroupHelper;->moveNotificationsToNewSection(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 920
    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_61 .. :try_end_b5} :catchall_92

    return-void

    :cond_b6
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 927
    :try_start_ba
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/GroupHelper;->groupSparseGroups(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_be

    goto :goto_c7

    :catchall_be
    move-exception v0

    move-object p0, v0

    .line 930
    :try_start_c0
    const-string p1, "GroupHelper"

    const-string p2, "Failed to group sparse groups"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 933
    :goto_c7
    monitor-exit v1

    :cond_c8
    :goto_c8
    return-void

    .line 885
    :goto_c9
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_e3

    .line 886
    const-string p1, "GroupHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isGroupChildWithoutSummary OR isGroupSummaryWithoutChild"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_e3
    invoke-virtual {v2, v3, v7, v6}, Lcom/android/server/notification/GroupHelper;->addToUngroupedAndMaybeAggregate(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Z

    move-result p1

    if-nez p1, :cond_118

    .line 893
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/notification/GroupHelper;->isSummaryWithAllChildrenBundled(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_118

    if-eqz p0, :cond_10c

    .line 898
    const-string p0, "GroupHelper"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Empty group summary to be canceled and cached: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_10c
    iget-object p0, v2, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/notification/GroupHelper$Callback;->removeAppProvidedSummary(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v2, v3}, Lcom/android/server/notification/GroupHelper;->cacheCanceledSummary(Lcom/android/server/notification/NotificationRecord;)V

    .line 906
    :cond_118
    monitor-exit v1

    return-void

    .line 933
    :goto_11a
    monitor-exit v1
    :try_end_11b
    .catchall {:try_start_c0 .. :try_end_11b} :catchall_92

    throw p0
.end method

.method public onNotificationRemoved(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Z)V
    .registers 12

    .line 1017
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1018
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1019
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    .line 1021
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->getSectionGroupKeyWithFallback(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v1

    if-nez v1, :cond_32

    .line 1023
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p0, :cond_31

    .line 1024
    const-string p0, "GroupHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skipping autogroup cleanup for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no valid section found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void

    .line 1030
    :cond_32
    iget-object v7, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 1031
    :try_start_35
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 1032
    invoke-virtual {v4, v1, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1033
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    iget-object v5, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 1037
    invoke-virtual {v4, v1, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1039
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_78

    .line 1040
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e8

    goto :goto_78

    :catchall_74
    move-exception v0

    move-object p0, v0

    goto/16 :goto_ea

    .line 1041
    :cond_78
    :goto_78
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    iget-object v5, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 1045
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_a4

    .line 1046
    const-string v0, "GroupHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aggregate group is empty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_a4
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    .line 1049
    invoke-virtual {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1048
    invoke-interface {v0, v3, v2, v4}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d6

    .line 1052
    :cond_b3
    sget-boolean v4, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v4, :cond_cd

    .line 1053
    const-string v4, "GroupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aggregate group not empty, updating: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_cd
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v0, v4, v5}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V

    .line 1062
    :goto_d6
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-eqz v0, :cond_e8

    .line 1064
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    .line 1063
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/GroupHelper;->maybeClearCanceledSummariesCache(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Z)V

    .line 1067
    :cond_e8
    monitor-exit v7

    return-void

    :goto_ea
    monitor-exit v7
    :try_end_eb
    .catchall {:try_start_35 .. :try_end_eb} :catchall_74

    throw p0
.end method

.method public onNotificationUnbundled(Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 7

    .line 1312
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1313
    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1314
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1316
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_23

    const/4 p2, 0x3

    goto :goto_24

    :cond_23
    const/4 p2, 0x2

    .line 1317
    :goto_24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1316
    invoke-static {p1, p2}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 1315
    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/android/server/notification/GroupHelper;->regroupNotifications(ILjava/lang/String;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 1319
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final regroupNotifications(ILjava/lang/String;Landroid/util/ArrayMap;Ljava/util/Map;)V
    .registers 7

    .line 1327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1332
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/GroupHelper;->getAutogroupedNotificationsMoveOps(ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object v1

    .line 1331
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1338
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/GroupHelper;->getUngroupedNotificationsMoveOps(ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object v1

    .line 1337
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1343
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/GroupHelper;->getReclassifiedNotificationsMoveOps(ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object p3

    .line 1342
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1347
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_23

    .line 1348
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/server/notification/GroupHelper;->moveNotificationsToNewSection(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    :cond_23
    return-void
.end method

.method public final removeCachedSummary(Ljava/lang/String;ILcom/android/server/notification/GroupHelper$CachedSummary;)V
    .registers 5

    .line 2053
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-static {p3}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetoriginalGroupKey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2055
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTestHarnessExempted(Z)V
    .registers 3

    .line 216
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInUserTestHarness()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iput-boolean p1, p0, Lcom/android/server/notification/GroupHelper;->mIsTestHarnessExempted:Z

    return-void
.end method

.method public final updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V
    .registers 19

    .line 1803
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1804
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1805
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/GroupHelper;->getSummaryAttributes(Ljava/lang/String;Landroid/util/ArrayMap;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    move-result-object v2

    if-eqz p3, :cond_1d

    .line 1807
    iget-object v1, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    move-object/from16 v6, p2

    :goto_1b
    move-object v13, v1

    goto :goto_28

    :cond_1d
    move-object/from16 v6, p2

    .line 1808
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    iget-object v1, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    goto :goto_1b

    .line 1809
    :goto_28
    new-instance v7, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    iget v8, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    iget-object v9, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    iget v10, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    iget v11, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    iget v12, v2, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    invoke-direct/range {v7 .. v13}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 1812
    const-string v1, "GroupHelper"

    if-nez p3, :cond_68

    .line 1813
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_53

    .line 1814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create aggregate summary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :cond_53
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v5

    move-object v9, v7

    .line 1817
    invoke-virtual {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v7

    move/from16 v8, p4

    .line 1816
    invoke-interface/range {v3 .. v9}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    return-void

    .line 1819
    :cond_68
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_80

    .line 1820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update aggregate summary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :cond_80
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v2

    .line 1823
    invoke-virtual {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1822
    invoke-interface {p0, v1, v2, v0, v7}, Lcom/android/server/notification/GroupHelper$Callback;->updateAutogroupSummary(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    return-void
.end method

.method public wasSummaryBeforeAutoGrouping(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 10

    .line 2043
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2044
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2045
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    .line 2046
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    .line 2047
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 2044
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/GroupHelper;->findCanceledSummary(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/notification/GroupHelper$CachedSummary;

    move-result-object p0

    if-eqz p0, :cond_38

    const/4 p0, 0x1

    goto :goto_39

    :cond_38
    const/4 p0, 0x0

    :goto_39
    monitor-exit v1

    return p0

    :catchall_3b
    move-exception v0

    move-object p0, v0

    .line 2048
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3b

    throw p0
.end method
