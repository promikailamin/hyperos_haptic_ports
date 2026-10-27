.class Lcom/android/server/notification/NotificationHistoryDatabase$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationHistoryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationHistoryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 375
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$1;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 378
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 380
    return-void

    .line 382
    :cond_7
    invoke-static {}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$sfgetACTION_HISTORY_DELETION()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 384
    :try_start_11
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$1;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v1}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_5b

    .line 385
    :try_start_18
    const-string v2, "key"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "filePath":Ljava/lang/String;
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 387
    .local v3, "fileToDelete":Landroid/util/AtomicFile;
    invoke-static {}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 388
    const-string v4, "NotiHistoryDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_4e
    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    .line 391
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$1;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-virtual {v4, v2}, Lcom/android/server/notification/NotificationHistoryDatabase;->removeFilePathFromHistory(Ljava/lang/String;)V

    .line 392
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "fileToDelete":Landroid/util/AtomicFile;
    monitor-exit v1

    .line 395
    goto :goto_63

    .line 392
    :catchall_58
    move-exception v2

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_18 .. :try_end_5a} :catchall_58

    .end local v0    # "action":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/notification/NotificationHistoryDatabase$1;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_5a
    throw v2
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5b} :catch_5b

    .line 393
    .restart local v0    # "action":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/notification/NotificationHistoryDatabase$1;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catch_5b
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NotiHistoryDatabase"

    const-string v3, "Failed to delete notification history file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_63
    :goto_63
    return-void
.end method
