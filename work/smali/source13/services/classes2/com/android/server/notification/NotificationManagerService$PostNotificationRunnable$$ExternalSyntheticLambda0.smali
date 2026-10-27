.class public final synthetic Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

.field public final synthetic f$1:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Landroid/service/notification/StatusBarNotification;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->lambda$run$0$com-android-server-notification-NotificationManagerService$PostNotificationRunnable(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
