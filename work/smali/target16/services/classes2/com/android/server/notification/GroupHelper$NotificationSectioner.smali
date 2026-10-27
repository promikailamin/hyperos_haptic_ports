.class public Lcom/android/server/notification/GroupHelper$NotificationSectioner;
.super Ljava/lang/Object;
.source "GroupHelper.java"


# instance fields
.field public final mAutogroupAtCount:I

.field public final mName:Ljava/lang/String;

.field public final mSectionChecker:Ljava/util/function/Predicate;

.field public final mSummaryId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/util/function/Predicate;)V
    .registers 5

    .line 2170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2171
    iput-object p1, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mName:Ljava/lang/String;

    .line 2172
    iput p2, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSummaryId:I

    .line 2173
    iput p3, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mAutogroupAtCount:I

    .line 2174
    iput-object p4, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSectionChecker:Ljava/util/function/Predicate;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V
    .registers 6

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;IILjava/util/function/Predicate;)V

    return-void
.end method


# virtual methods
.method public isInSection(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 2178
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->isNotificationGroupable(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSectionChecker:Ljava/util/function/Predicate;

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final isNotificationGroupable(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6

    .line 2183
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 2186
    invoke-static {}, Lcom/android/server/notification/GroupHelper;->-$$Nest$sfgetNOTIFICATION_BUNDLE_SECTIONS()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    return v1

    .line 2195
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    .line 2196
    invoke-virtual {p0}, Landroid/app/Notification;->isForegroundService()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 2197
    invoke-virtual {p0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2198
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    if-le v0, v2, :cond_2f

    move v0, v2

    goto :goto_30

    :cond_2f
    move v0, v1

    .line 2199
    :goto_30
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v3

    if-le v3, v2, :cond_40

    const-class v3, Landroid/app/Notification$CallStyle;

    .line 2200
    invoke-virtual {p0, v3}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_40

    move p0, v2

    goto :goto_41

    :cond_40
    move p0, v1

    :goto_41
    if-nez v0, :cond_56

    if-eqz p0, :cond_46

    goto :goto_56

    .line 2205
    :cond_46
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result p0

    if-eqz p0, :cond_55

    return v1

    :cond_55
    return v2

    :cond_56
    :goto_56
    return v1
.end method
