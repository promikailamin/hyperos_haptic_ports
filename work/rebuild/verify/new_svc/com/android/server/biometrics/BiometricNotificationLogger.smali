.class public Lcom/android/server/biometrics/BiometricNotificationLogger;
.super Landroid/service/notification/NotificationListenerService;
.source "BiometricNotificationLogger.java"


# instance fields
.field public mLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-static {}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->getInstance()Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/BiometricNotificationLogger;-><init>(Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricNotificationLogger;->mLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 6

    if-eqz p1, :cond_50

    .line 46
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_9

    goto :goto_50

    .line 49
    :cond_9
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    const-string v0, "FaceEnroll"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "FingerprintEnroll"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    goto :goto_50

    .line 53
    :cond_21
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_2a

    const/4 p2, 0x4

    goto :goto_2b

    :cond_2a
    move p2, v1

    .line 56
    :goto_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNotificationPosted, tag=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FRRNotificationListener"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricNotificationLogger;->mLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->logFrameworkNotification(II)V

    :cond_50
    :goto_50
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .registers 6

    if-eqz p1, :cond_6b

    .line 70
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_9

    goto :goto_6b

    .line 73
    :cond_9
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    const-string v0, "FaceEnroll"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "FingerprintEnroll"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    goto :goto_6b

    .line 76
    :cond_21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNotificationRemoved, tag=("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), reason=("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 76
    const-string v1, "FRRNotificationListener"

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-ne p1, v0, :cond_52

    const/4 p1, 0x4

    goto :goto_53

    :cond_52
    move p1, p2

    :goto_53
    const/4 v0, 0x2

    if-eq p3, p2, :cond_66

    if-eq p3, v0, :cond_5f

    .line 96
    const-string/jumbo p0, "unhandled reason, ignoring logging"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_5f
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricNotificationLogger;->mLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->logFrameworkNotification(II)V

    return-void

    .line 85
    :cond_66
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricNotificationLogger;->mLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->logFrameworkNotification(II)V

    :cond_6b
    :goto_6b
    return-void
.end method
