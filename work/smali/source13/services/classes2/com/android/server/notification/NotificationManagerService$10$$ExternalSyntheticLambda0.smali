.class public final synthetic Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$10;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$10;ILandroid/net/Uri;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$10;

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$10;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$10;->lambda$verifyPrivilegedListenerUriPermission$1$com-android-server-notification-NotificationManagerService$10(ILandroid/net/Uri;)V

    return-void
.end method
