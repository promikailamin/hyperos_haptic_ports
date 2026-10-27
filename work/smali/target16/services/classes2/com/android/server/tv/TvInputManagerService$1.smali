.class public Lcom/android/server/tv/TvInputManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "TvInputManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2

    .line 244
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "TvInputManagerService"

    const/4 v1, 0x5

    if-nez p2, :cond_3f

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    return-void

    .line 250
    :cond_1b
    const-string p1, "The TV woke up."

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmMessageHandler(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 253
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmMessageHandler(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    move-result-object p1

    .line 254
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 255
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmMessageHandler(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    move-result-object p0

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 259
    :cond_3f
    const-string p1, "The TV turned off."

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmMessageHandler(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
