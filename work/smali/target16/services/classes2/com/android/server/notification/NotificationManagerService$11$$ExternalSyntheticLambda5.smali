.class public final synthetic Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$11;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$11;Ljava/util/ArrayList;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/notification/NotificationManagerService$11;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda5;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/notification/NotificationManagerService$11;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda5;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/server/notification/NotificationManagerService$11;->$r8$lambda$wetMdM51Ll00ZXtsoOGlxk69Eqc(Lcom/android/server/notification/NotificationManagerService$11;Ljava/util/ArrayList;)V

    return-void
.end method
