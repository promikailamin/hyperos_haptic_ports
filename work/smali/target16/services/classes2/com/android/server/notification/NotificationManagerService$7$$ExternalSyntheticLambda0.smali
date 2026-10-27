.class public final synthetic Lcom/android/server/notification/NotificationManagerService$7$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$7;

.field public final synthetic f$1:Landroid/app/NotificationManager$Policy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$7;Landroid/app/NotificationManager$Policy;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$7;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$7$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationManager$Policy;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$7;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$7$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationManager$Policy;

    invoke-static {v0, p0}, Lcom/android/server/notification/NotificationManagerService$7;->$r8$lambda$k2AhFZDO8MRPFYn0IvCKeaGtmDQ(Lcom/android/server/notification/NotificationManagerService$7;Landroid/app/NotificationManager$Policy;)V

    return-void
.end method
