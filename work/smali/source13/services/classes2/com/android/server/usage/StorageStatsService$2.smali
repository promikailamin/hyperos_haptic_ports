.class Lcom/android/server/usage/StorageStatsService$2;
.super Landroid/content/BroadcastReceiver;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/StorageStatsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/StorageStatsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usage/StorageStatsService;

    .line 174
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$2;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 178
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 179
    :cond_14
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService$2;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/StorageStatsService;->-$$Nest$fgetmHandler(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/usage/StorageStatsService$H;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lcom/android/server/usage/StorageStatsService$H;->removeMessages(I)V

    .line 180
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService$2;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/StorageStatsService;->-$$Nest$fgetmHandler(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/usage/StorageStatsService$H;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessage(I)Z

    .line 182
    :cond_28
    return-void
.end method
