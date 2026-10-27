.class final Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;
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
    name = "RemoveNotificationRunnable"
.end annotation


# instance fields
.field private mNotificationHistory:Landroid/app/NotificationHistory;

.field private mPkg:Ljava/lang/String;

.field private mPostedTime:J

.field final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;J)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationHistoryDatabase;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "postedTime"    # J

    .line 462
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 464
    iput-wide p3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPostedTime:J

    .line 465
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 474
    invoke-static {}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "NotiHistoryDatabase"

    const-string v1, "RemoveNotificationRunnable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_d
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 477
    :try_start_14
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPostedTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationHistory;->removeNotificationFromWrite(Ljava/lang/String;J)Z

    .line 479
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 480
    .local v1, "historyFileItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/AtomicFile;>;"
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 481
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_7e

    .line 483
    .local v2, "af":Landroid/util/AtomicFile;
    :try_start_33
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    if-eqz v3, :cond_38

    .line 484
    goto :goto_3d

    .line 485
    :cond_38
    new-instance v3, Landroid/app/NotificationHistory;

    invoke-direct {v3}, Landroid/app/NotificationHistory;-><init>()V

    :goto_3d
    nop

    .line 486
    .local v3, "notificationHistory":Landroid/app/NotificationHistory;
    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    invoke-direct {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;-><init>()V

    .line 487
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->build()Lcom/android/server/notification/NotificationHistoryFilter;

    move-result-object v4

    .line 486
    invoke-static {v2, v3, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$smreadLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    .line 488
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPostedTime:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/NotificationHistory;->removeNotificationFromWrite(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 489
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v4, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$mwriteLocked(Lcom/android/server/notification/NotificationHistoryDatabase;Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_59} :catch_5a
    .catchall {:try_start_33 .. :try_end_59} :catchall_7e

    .line 494
    .end local v3    # "notificationHistory":Landroid/app/NotificationHistory;
    :cond_59
    goto :goto_7b

    .line 491
    :catch_5a
    move-exception v3

    .line 492
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5b
    const-string v4, "NotiHistoryDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot clean up file on notification removal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 493
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 492
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    .end local v2    # "af":Landroid/util/AtomicFile;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_7b
    goto :goto_27

    .line 496
    .end local v1    # "historyFileItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/AtomicFile;>;"
    :cond_7c
    monitor-exit v0

    .line 497
    return-void

    .line 496
    :catchall_7e
    move-exception v1

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_5b .. :try_end_80} :catchall_7e

    throw v1
.end method

.method setNotificationHistory(Landroid/app/NotificationHistory;)V
    .registers 2
    .param p1, "nh"    # Landroid/app/NotificationHistory;

    .line 469
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    .line 470
    return-void
.end method
