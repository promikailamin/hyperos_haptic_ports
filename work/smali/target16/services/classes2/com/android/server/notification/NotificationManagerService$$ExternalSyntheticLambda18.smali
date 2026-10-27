.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;->f$1:I

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;->f$1:I

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/notification/NotificationManagerService;->$r8$lambda$C57GhaXyNG-zrgjVdj-SeW-YBi4(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method
