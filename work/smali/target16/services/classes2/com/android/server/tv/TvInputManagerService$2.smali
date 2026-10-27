.class public Lcom/android/server/tv/TvInputManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "TvInputManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2

    .line 399
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 402
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 403
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android.intent.extra.user_handle"

    if-eqz v0, :cond_19

    .line 404
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mswitchUser(Lcom/android/server/tv/TvInputManagerService;I)V

    return-void

    .line 405
    :cond_19
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 406
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mremoveUser(Lcom/android/server/tv/TvInputManagerService;I)V

    return-void

    .line 407
    :cond_2b
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 408
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 409
    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmUserManager(Lcom/android/server/tv/TvInputManagerService;)Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    .line 412
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$sfgetsConfiguredTvProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$sfgetsConfiguredTvProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 413
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p2

    if-eqz p2, :cond_b8

    .line 414
    :cond_5d
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mstartUser(Lcom/android/server/tv/TvInputManagerService;I)V

    return-void

    .line 418
    :cond_63
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 419
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 420
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mstopUser(Lcom/android/server/tv/TvInputManagerService;I)V

    return-void

    .line 421
    :cond_75
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 423
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$sfgetsConfiguredTvProfileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b8

    .line 424
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 425
    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmUserManager(Lcom/android/server/tv/TvInputManagerService;)Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    .line 426
    iget-object v0, p2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$sfgetsConfiguredTvProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p2

    if-eqz p2, :cond_b8

    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmUserManager(Lcom/android/server/tv/TvInputManagerService;)Landroid/os/UserManager;

    move-result-object p2

    .line 427
    invoke-virtual {p2, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result p2

    if-eqz p2, :cond_b8

    .line 428
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mstartUser(Lcom/android/server/tv/TvInputManagerService;I)V

    :cond_b8
    return-void
.end method
