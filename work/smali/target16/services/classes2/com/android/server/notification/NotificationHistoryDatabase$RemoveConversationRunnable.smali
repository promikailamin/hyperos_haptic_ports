.class public final Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;
.super Ljava/lang/Object;
.source "NotificationHistoryDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mConversationIds:Ljava/util/Set;

.field public mNotificationHistory:Landroid/app/NotificationHistory;

.field public mPkg:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;Ljava/util/Set;)V
    .registers 4

    .line 433
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mPkg:Ljava/lang/String;

    .line 435
    iput-object p3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mConversationIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 445
    invoke-static {}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "NotiHistoryDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoveConversationRunnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mConversationIds:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_28
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 448
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mConversationIds:Ljava/util/Set;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationHistory;->removeConversationsFromWrite(Ljava/lang/String;Ljava/util/Set;)Z

    .line 450
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 451
    :cond_42
    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 452
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_4e
    .catchall {:try_start_2f .. :try_end_4e} :catchall_74

    .line 454
    :try_start_4e
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    if-eqz v3, :cond_53

    goto :goto_58

    .line 456
    :cond_53
    new-instance v3, Landroid/app/NotificationHistory;

    invoke-direct {v3}, Landroid/app/NotificationHistory;-><init>()V

    .line 457
    :goto_58
    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    invoke-direct {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;-><init>()V

    .line 458
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->build()Lcom/android/server/notification/NotificationHistoryFilter;

    move-result-object v4

    .line 457
    invoke-static {v2, v3, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$smreadLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    .line 459
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mConversationIds:Ljava/util/Set;

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationHistory;->removeConversationsFromWrite(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 461
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v4, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$mwriteLocked(Lcom/android/server/notification/NotificationHistoryDatabase;Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_73} :catch_76
    .catchall {:try_start_4e .. :try_end_73} :catchall_74

    goto :goto_42

    :catchall_74
    move-exception p0

    goto :goto_98

    :catch_76
    move-exception v3

    .line 464
    :try_start_77
    const-string v4, "NotiHistoryDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot clean up file on conversation removal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 464
    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 468
    :cond_96
    monitor-exit v0

    return-void

    :goto_98
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_77 .. :try_end_99} :catchall_74

    throw p0
.end method

.method public setNotificationHistory(Landroid/app/NotificationHistory;)V
    .registers 2

    .line 440
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    return-void
.end method
