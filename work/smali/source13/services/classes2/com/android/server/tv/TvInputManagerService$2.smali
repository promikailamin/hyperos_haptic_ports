.class Lcom/android/server/tv/TvInputManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/TvInputManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;

    .line 292
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 295
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "android.intent.extra.user_handle"

    if-eqz v1, :cond_19

    .line 297
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mswitchUser(Lcom/android/server/tv/TvInputManagerService;I)V

    goto :goto_50

    .line 298
    :cond_19
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 299
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mremoveUser(Lcom/android/server/tv/TvInputManagerService;I)V

    goto :goto_50

    .line 300
    :cond_2b
    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 301
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 302
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mstartUser(Lcom/android/server/tv/TvInputManagerService;I)V

    .end local v1    # "userId":I
    goto :goto_4f

    .line 303
    :cond_3d
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 304
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 305
    .restart local v1    # "userId":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mstopUser(Lcom/android/server/tv/TvInputManagerService;I)V

    goto :goto_50

    .line 303
    .end local v1    # "userId":I
    :cond_4f
    :goto_4f
    nop

    .line 307
    :goto_50
    return-void
.end method
