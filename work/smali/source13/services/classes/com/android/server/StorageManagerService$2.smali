.class Lcom/android/server/StorageManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;

    .line 950
    iput-object p1, p0, Lcom/android/server/StorageManagerService$2;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 953
    const-string v0, "StorageManagerService"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, "action":Ljava/lang/String;
    :try_start_6
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 956
    const-string v2, "Get the action of screen on"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v2, p0, Lcom/android/server/StorageManagerService$2;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1a

    .line 961
    :cond_19
    goto :goto_20

    .line 959
    :catch_1a
    move-exception v2

    .line 960
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed to send stop defrag or trim command to vold"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 962
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_20
    return-void
.end method
