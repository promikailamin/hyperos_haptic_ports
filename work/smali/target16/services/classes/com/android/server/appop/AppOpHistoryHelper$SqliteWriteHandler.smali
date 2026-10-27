.class public Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;
.super Landroid/os/Handler;
.source "AppOpHistoryHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpHistoryHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpHistoryHelper;Landroid/os/Looper;)V
    .registers 3

    .line 444
    iput-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    .line 445
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final ensureDatabaseSize()V
    .registers 5

    .line 495
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {v0}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$fgetmDatabaseFile(Lcom/android/server/appop/AppOpHistoryHelper;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 497
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {p0}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$fgetmDbHelper(Lcom/android/server/appop/AppOpHistoryHelper;)Lcom/android/server/appop/AppOpHistoryDbHelper;

    move-result-object p0

    const-string v0, "DELETE FROM app_op_accesses WHERE access_time <= (SELECT access_time FROM app_op_accesses ORDER BY access_time LIMIT 1 OFFSET 1024)"

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpHistoryDbHelper;->execSQL(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 450
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9d

    if-eq p1, v0, :cond_72

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-eq p1, v0, :cond_f

    return-void

    .line 489
    :cond_f
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {p0}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$fgetmDbHelper(Lcom/android/server/appop/AppOpHistoryHelper;)Lcom/android/server/appop/AppOpHistoryDbHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void

    .line 463
    :cond_19
    :try_start_19
    iget-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {p1}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$fgetmCache(Lcom/android/server/appop/AppOpHistoryHelper;)Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    move-result-object p1

    monitor-enter p1
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_65

    .line 464
    :try_start_20
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {v0}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$fgetmCache(Lcom/android/server/appop/AppOpHistoryHelper;)Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->-$$Nest$mevict(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;)Ljava/util/List;

    move-result-object v0

    .line 466
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {v2}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$fgetmCache(Lcom/android/server/appop/AppOpHistoryHelper;)Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    move-result-object v2

    .line 467
    invoke-static {v2}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->-$$Nest$msize(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {v3}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$fgetmCache(Lcom/android/server/appop/AppOpHistoryHelper;)Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->-$$Nest$mcapacity(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;)I

    move-result v3

    if-lt v2, v3, :cond_56

    .line 468
    iget-object v2, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {v2}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$fgetmCache(Lcom/android/server/appop/AppOpHistoryHelper;)Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->-$$Nest$mevictAll(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_56

    :catchall_54
    move-exception v0

    goto :goto_67

    .line 470
    :cond_56
    :goto_56
    monitor-exit p1
    :try_end_57
    .catchall {:try_start_20 .. :try_end_57} :catchall_54

    .line 471
    :try_start_57
    iget-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {p1, v0, v1}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$minsertAppOpHistory(Lcom/android/server/appop/AppOpHistoryHelper;Ljava/util/List;I)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_65

    .line 474
    iget-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {p1}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$mensurePeriodicJobsAreScheduled(Lcom/android/server/appop/AppOpHistoryHelper;)V

    .line 475
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->ensureDatabaseSize()V

    return-void

    :catchall_65
    move-exception p1

    goto :goto_69

    .line 470
    :goto_67
    :try_start_67
    monitor-exit p1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_54

    :try_start_68
    throw v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_65

    .line 474
    :goto_69
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {v0}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$mensurePeriodicJobsAreScheduled(Lcom/android/server/appop/AppOpHistoryHelper;)V

    .line 475
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->ensureDatabaseSize()V

    .line 476
    throw p1

    .line 480
    :cond_72
    :try_start_72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {p1}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$fgetmHistoryRetentionMillis(Lcom/android/server/appop/AppOpHistoryHelper;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 481
    iget-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {p1}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$fgetmDbHelper(Lcom/android/server/appop/AppOpHistoryHelper;)Lcom/android/server/appop/AppOpHistoryDbHelper;

    move-result-object p1

    const-string v2, "DELETE FROM app_op_accesses WHERE access_time < ?"

    .line 483
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 481
    invoke-virtual {p1, v2, v0}, Lcom/android/server/appop/AppOpHistoryDbHelper;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_90
    .catchall {:try_start_72 .. :try_end_90} :catchall_96

    .line 485
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {p0}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$mensurePeriodicJobsAreScheduled(Lcom/android/server/appop/AppOpHistoryHelper;)V

    return-void

    :catchall_96
    move-exception p1

    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {p0}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$mensurePeriodicJobsAreScheduled(Lcom/android/server/appop/AppOpHistoryHelper;)V

    .line 486
    throw p1

    .line 453
    :cond_9d
    :try_start_9d
    iget-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {p1}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$fgetmCache(Lcom/android/server/appop/AppOpHistoryHelper;)Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->-$$Nest$mevict(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$minsertAppOpHistory(Lcom/android/server/appop/AppOpHistoryHelper;Ljava/util/List;I)V
    :try_end_aa
    .catchall {:try_start_9d .. :try_end_aa} :catchall_b3

    .line 456
    iget-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {p1}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$mensurePeriodicJobsAreScheduled(Lcom/android/server/appop/AppOpHistoryHelper;)V

    .line 457
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->ensureDatabaseSize()V

    return-void

    :catchall_b3
    move-exception p1

    .line 456
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {v0}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$mensurePeriodicJobsAreScheduled(Lcom/android/server/appop/AppOpHistoryHelper;)V

    .line 457
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;->ensureDatabaseSize()V

    .line 458
    throw p1
.end method

.method public removeAllPendingMessages()V
    .registers 2

    const/4 v0, 0x1

    .line 502
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    .line 503
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    .line 504
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
