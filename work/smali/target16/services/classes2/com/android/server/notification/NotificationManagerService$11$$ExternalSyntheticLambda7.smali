.class public final synthetic Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$11;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$11;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/notification/NotificationManagerService$11;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/notification/NotificationManagerService$11;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/android/server/notification/NotificationManagerService$11;->$r8$lambda$lFHd-j4X_gYMqHQ2eE9KgegvazY(Lcom/android/server/notification/NotificationManagerService$11;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method
