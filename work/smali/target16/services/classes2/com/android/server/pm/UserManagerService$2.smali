.class public Lcom/android/server/pm/UserManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "UserManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 691
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 694
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->-$$Nest$smisAutoLockForPrivateSpaceEnabled()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 695
    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 696
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->maybeScheduleAlarmToAutoLockPrivateSpace()V

    return-void

    .line 697
    :cond_18
    const-string p1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 698
    const-string p1, "UserManagerService"

    const-string p2, "SCREEN_ON broadcast received, removing pending alarms to auto-lock private space"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mcancelPendingAutoLockAlarms(Lcom/android/server/pm/UserManagerService;)V

    :cond_30
    return-void
.end method
