.class public Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;
.super Landroid/os/Handler;
.source "DiscreteOpsSqlRegistry.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/DiscreteOpsSqlRegistry;Landroid/os/Looper;)V
    .registers 3

    .line 364
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    .line 365
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 370
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c7

    if-eq v0, v1, :cond_ac

    const/4 v1, 0x3

    if-ne v0, v1, :cond_93

    .line 397
    :try_start_b
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object p1

    monitor-enter p1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_75

    .line 398
    :try_start_12
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->-$$Nest$mevictOldAppOpEvents(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Ljava/util/List;

    move-result-object v0

    .line 400
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v1

    .line 401
    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->size()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->capacity()I

    move-result v3

    if-lt v1, v3, :cond_51

    .line 402
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->-$$Nest$fgetmCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 403
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->clear()V

    goto :goto_51

    :catchall_4f
    move-exception v0

    goto :goto_77

    .line 405
    :cond_51
    :goto_51
    monitor-exit p1
    :try_end_52
    .catchall {:try_start_12 .. :try_end_52} :catchall_4f

    .line 406
    :try_start_52
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpsDbHelper(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsDbHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/appop/DiscreteOpsDbHelper;->insertDiscreteOps(Ljava/util/List;)V
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_75

    .line 409
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_108

    .line 410
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object p0

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetDB_WRITE_INTERVAL()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catchall_75
    move-exception p1

    goto :goto_79

    .line 405
    :goto_77
    :try_start_77
    monitor-exit p1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_4f

    :try_start_78
    throw v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_75

    .line 409
    :goto_79
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_92

    .line 410
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object p0

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetDB_WRITE_INTERVAL()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 413
    :cond_92
    throw p1

    .line 415
    :cond_93
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 389
    :cond_ac
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    sub-long/2addr v0, v2

    .line 390
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpsDbHelper(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsDbHelper;

    move-result-object p0

    const-string p1, "DELETE FROM app_op_accesses WHERE access_time < ?"

    .line 392
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 390
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/DiscreteOpsDbHelper;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 374
    :cond_c7
    :try_start_c7
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object p1

    monitor-enter p1
    :try_end_ce
    .catchall {:try_start_c7 .. :try_end_ce} :catchall_109

    .line 375
    :try_start_ce
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->-$$Nest$mevictOldAppOpEvents(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Ljava/util/List;

    move-result-object v0

    .line 376
    monitor-exit p1
    :try_end_d9
    .catchall {:try_start_ce .. :try_end_d9} :catchall_10b

    .line 377
    :try_start_d9
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpsDbHelper(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsDbHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/appop/DiscreteOpsDbHelper;->insertDiscreteOps(Ljava/util/List;)V
    :try_end_e2
    .catchall {:try_start_d9 .. :try_end_e2} :catchall_109

    .line 379
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object p1

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetDB_WRITE_INTERVAL()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 382
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_108

    .line 383
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object p0

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetEXPIRED_ENTRY_DELETION_INTERVAL()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_108
    return-void

    :catchall_109
    move-exception p1

    goto :goto_10e

    :catchall_10b
    move-exception v0

    .line 376
    :try_start_10c
    monitor-exit p1
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10b

    :try_start_10d
    throw v0
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_109

    .line 379
    :goto_10e
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object v0

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetDB_WRITE_INTERVAL()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 382
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_134

    .line 383
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object p0

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetEXPIRED_ENTRY_DELETION_INTERVAL()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 386
    :cond_134
    throw p1
.end method
