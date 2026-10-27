.class Lcom/android/server/pm/BackgroundDexOptService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundDexOptService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BackgroundDexOptService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/BackgroundDexOptService;

    .line 238
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 241
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    invoke-static {v0}, Lcom/android/server/pm/BackgroundDexOptService;->-$$Nest$fgetmInjector(Lcom/android/server/pm/BackgroundDexOptService;)Lcom/android/server/pm/BackgroundDexOptService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    const/16 v1, 0x321

    invoke-static {v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->-$$Nest$mscheduleAJob(Lcom/android/server/pm/BackgroundDexOptService;I)V

    .line 245
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    const/16 v1, 0x320

    invoke-static {v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->-$$Nest$mscheduleAJob(Lcom/android/server/pm/BackgroundDexOptService;I)V

    .line 246
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 247
    const-string v0, "BackgroundDexOptService"

    const-string v1, "BootBgDexopt scheduled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_28
    return-void
.end method
