.class public final synthetic Lcom/android/server/notification/NotificationManagerService$7$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$7;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$7;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/notification/NotificationManagerService$7;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/notification/NotificationManagerService$7;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$7;->lambda$onPolicyChanged$1$com-android-server-notification-NotificationManagerService$7()V

    return-void
.end method
