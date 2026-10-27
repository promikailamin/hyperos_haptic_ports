.class Lcom/android/server/content/SyncManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    .line 376
    iput-object p1, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 379
    iget-object v0, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmDataConnectionIsConnected(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    .line 383
    .local v0, "wasConnected":Z
    iget-object v1, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-$$Nest$mreadDataConnectionState(Lcom/android/server/content/SyncManager;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->-$$Nest$fputmDataConnectionIsConnected(Lcom/android/server/content/SyncManager;Z)V

    .line 384
    iget-object v1, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmDataConnectionIsConnected(Lcom/android/server/content/SyncManager;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 385
    if-nez v0, :cond_2f

    .line 386
    const/4 v1, 0x2

    const-string v2, "SyncManager"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 387
    const-string v1, "Reconnection detected: clearing all backoffs"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_27
    iget-object v1, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v2, "network reconnect"

    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->-$$Nest$mclearAllBackoffs(Lcom/android/server/content/SyncManager;Ljava/lang/String;)V

    .line 393
    :cond_2f
    return-void
.end method
