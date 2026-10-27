.class public final synthetic Lcom/android/server/notification/NotificationManagerService$8$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$8;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$8;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$8$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$8;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$8$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$8$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$8$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$8;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$8$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$8$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/notification/NotificationManagerService$8;->$r8$lambda$CzJj_TD6mIrYkpwh2wDKVY4AKnQ(Lcom/android/server/notification/NotificationManagerService$8;Ljava/lang/String;I)V

    return-void
.end method
