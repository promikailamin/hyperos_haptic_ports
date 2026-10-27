.class public final Lcom/android/server/tv/TvInputManagerService$MessageHandler;
.super Landroid/os/Handler;
.source "TvInputManagerService.java"


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ContentResolver;Landroid/os/Looper;)V
    .registers 4

    .line 4623
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 4624
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4625
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final encodeTuneParams(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6

    .line 4719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4720
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 4721
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4722
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 4723
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4724
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_20

    goto :goto_d

    .line 4728
    :cond_20
    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4729
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4730
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4731
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4732
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 4735
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 4630
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_db

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2a

    .line 4712
    const-string p0, "TvInputManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4693
    :cond_2a
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4694
    :try_start_31
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmOnScreenInputId(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_42

    .line 4695
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$massertTvAsCecActiveSourceLocked(Lcom/android/server/tv/TvInputManagerService;)V

    .line 4696
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    goto :goto_7a

    .line 4700
    :cond_42
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    .line 4701
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmOnScreenInputId(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    if-nez p1, :cond_67

    .line 4703
    const-string p0, "TvInputManagerService"

    const-string p1, "Unexpected null TvInputState."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4704
    monitor-exit v0

    return-void

    .line 4706
    :cond_67
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result p1

    const/16 v1, 0x3ef

    if-eq p1, v1, :cond_78

    .line 4707
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$massertTvAsCecActiveSourceLocked(Lcom/android/server/tv/TvInputManagerService;)V

    .line 4709
    :cond_78
    monitor-exit v0

    return-void

    :goto_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_31 .. :try_end_7b} :catchall_40

    throw p0

    .line 4684
    :cond_7c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 4685
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4686
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4687
    :try_start_8f
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mupdateHardwareTvInputServiceBindingLocked(Lcom/android/server/tv/TvInputManagerService;I)V

    .line 4688
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_8f .. :try_end_95} :catchall_99

    .line 4689
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_99
    move-exception p0

    .line 4688
    :try_start_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p0

    .line 4679
    :cond_9c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->mContentResolver:Landroid/content/ContentResolver;

    return-void

    .line 4660
    :cond_a3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 4661
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 4662
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 4664
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4665
    const-string/jumbo v3, "watch_end_time_utc_millis"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4667
    const-string/jumbo v1, "session_token"

    .line 4668
    invoke-interface {v0}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4667
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4671
    :try_start_c7
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_ce
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c7 .. :try_end_ce} :catch_cf

    goto :goto_d7

    :catch_cf
    move-exception p0

    .line 4673
    const-string v0, "TvInputManagerService"

    const-string v1, "error in insert db for MSG_LOG_WATCH_END"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4675
    :goto_d7
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_138

    .line 4632
    :cond_db
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 4633
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 4634
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 4635
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 4636
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 4637
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    .line 4639
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 4640
    const-string/jumbo v6, "package_name"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4641
    const-string/jumbo v0, "watch_start_time_utc_millis"

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4643
    const-string v0, "channel_id"

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v3, :cond_11b

    .line 4645
    const-string/jumbo v0, "tune_params"

    .line 4646
    invoke-virtual {p0, v3}, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->encodeTuneParams(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 4645
    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4648
    :cond_11b
    const-string/jumbo v0, "session_token"

    .line 4649
    invoke-interface {v4}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4648
    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4652
    :try_start_125
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_12c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_125 .. :try_end_12c} :catch_12d

    goto :goto_135

    :catch_12d
    move-exception p0

    .line 4654
    const-string v0, "TvInputManagerService"

    const-string v1, "error in insert db for MSG_LOG_WATCH_START"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4656
    :goto_135
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_138
    return-void
.end method

.method public final replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 4741
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4742
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_22

    aget-char v2, p1, v1

    .line 4743
    const-string v3, "%=,"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1c

    const/16 v3, 0x25

    .line 4744
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4746
    :cond_1c
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 4748
    :cond_22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
