.class final Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;
.super Ljava/lang/Object;
.source "NotificationHistoryDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationHistoryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RemoveConversationRunnable"
.end annotation


# instance fields
.field private mConversationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationHistory:Landroid/app/NotificationHistory;

.field private mPkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationHistoryDatabase;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 505
    .local p3, "conversationIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mPkg:Ljava/lang/String;

    .line 507
    iput-object p3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mConversationIds:Ljava/util/Set;

    .line 508
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 517
    invoke-static {}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "NotiHistoryDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoveConversationRunnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mConversationIds:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_2c
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 520
    :try_start_33
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mConversationIds:Ljava/util/Set;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationHistory;->removeConversationsFromWrite(Ljava/lang/String;Ljava/util/Set;)Z

    .line 522
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 523
    .local v1, "historyFileItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/AtomicFile;>;"
    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 524
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_52
    .catchall {:try_start_33 .. :try_end_52} :catchall_9d

    .line 526
    .local v2, "af":Landroid/util/AtomicFile;
    :try_start_52
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    if-eqz v3, :cond_57

    .line 527
    goto :goto_5c

    .line 528
    :cond_57
    new-instance v3, Landroid/app/NotificationHistory;

    invoke-direct {v3}, Landroid/app/NotificationHistory;-><init>()V

    :goto_5c
    nop

    .line 529
    .local v3, "notificationHistory":Landroid/app/NotificationHistory;
    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    invoke-direct {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;-><init>()V

    .line 530
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->build()Lcom/android/server/notification/NotificationHistoryFilter;

    move-result-object v4

    .line 529
    invoke-static {v2, v3, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$smreadLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    .line 531
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mConversationIds:Ljava/util/Set;

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationHistory;->removeConversationsFromWrite(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 533
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v4, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$mwriteLocked(Lcom/android/server/notification/NotificationHistoryDatabase;Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_78} :catch_79
    .catchall {:try_start_52 .. :try_end_78} :catchall_9d

    .line 538
    .end local v3    # "notificationHistory":Landroid/app/NotificationHistory;
    :cond_78
    goto :goto_9a

    .line 535
    :catch_79
    move-exception v3

    .line 536
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7a
    const-string v4, "NotiHistoryDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot clean up file on conversation removal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 537
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 536
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    .end local v2    # "af":Landroid/util/AtomicFile;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_9a
    goto :goto_46

    .line 540
    .end local v1    # "historyFileItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/AtomicFile;>;"
    :cond_9b
    monitor-exit v0

    .line 541
    return-void

    .line 540
    :catchall_9d
    move-exception v1

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_7a .. :try_end_9f} :catchall_9d

    throw v1
.end method

.method setNotificationHistory(Landroid/app/NotificationHistory;)V
    .registers 2
    .param p1, "nh"    # Landroid/app/NotificationHistory;

    .line 512
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    .line 513
    return-void
.end method
