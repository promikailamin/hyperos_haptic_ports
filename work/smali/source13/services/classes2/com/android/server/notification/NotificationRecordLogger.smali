.class public interface abstract Lcom/android/server/notification/NotificationRecordLogger;
.super Ljava/lang/Object;
.source "NotificationRecordLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;,
        Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;,
        Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;,
        Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;,
        Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;
    }
.end annotation


# direct methods
.method public static getLoggingImportance(Lcom/android/server/notification/NotificationRecord;)I
    .registers 4
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 469
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    .line 470
    .local v0, "importance":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    .line 471
    .local v1, "channel":Landroid/app/NotificationChannel;
    if-nez v1, :cond_b

    .line 472
    return v0

    .line 474
    :cond_b
    invoke-static {v1, v0}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    move-result v2

    return v2
.end method

.method public static isForegroundService(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 482
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_22

    .line 485
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    .line 483
    :cond_22
    :goto_22
    return v1
.end method


# virtual methods
.method public abstract log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
.end method

.method public abstract log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V
.end method

.method public abstract logNotificationAdjusted(Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V
.end method

.method public logNotificationCancelled(Lcom/android/server/notification/NotificationRecord;II)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "reason"    # I
    .param p3, "dismissalSurface"    # I

    .line 92
    invoke-static {p2, p3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->fromCancelReason(II)Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 93
    return-void
.end method

.method public logNotificationVisibility(Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "visible"    # Z

    .line 102
    invoke-static {p2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->fromVisibility(Z)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 103
    return-void
.end method

.method public abstract maybeLogNotificationPosted(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V
.end method
