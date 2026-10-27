.class final Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;
.super Landroid/media/metrics/IMediaMetricsManager$Stub;
.source "MediaMetricsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/metrics/MediaMetricsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-direct {p0}, Landroid/media/metrics/IMediaMetricsManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;-><init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V

    return-void
.end method

.method private getSessionIdInternal(I)Ljava/lang/String;
    .registers 7
    .param p1, "userId"    # I

    .line 239
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 240
    .local v0, "byteId":[B
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmSecureRandom(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 241
    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "id":Ljava/lang/String;
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string/jumbo v3, "metrics.manager"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 246
    const-string v4, "create"

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->LOG_SESSION_ID:Landroid/media/MediaMetrics$Key;

    .line 247
    invoke-virtual {v2, v3, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 248
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 249
    return-object v1
.end method

.method private inList([Ljava/lang/String;Ljava/util/List;)Z
    .registers 10
    .param p1, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 471
    .local p2, "arr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_23

    aget-object v3, p1, v2

    .line 472
    .local v3, "p":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 473
    .local v5, "element":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 474
    const/4 v0, 0x1

    return v0

    .line 476
    .end local v5    # "element":Ljava/lang/String;
    :cond_1f
    goto :goto_b

    .line 471
    .end local v3    # "p":Ljava/lang/String;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 478
    :cond_23
    return v1
.end method

.method private listNameToLoggingLevel(Ljava/lang/String;)I
    .registers 5
    .param p1, "listName"    # Ljava/lang/String;

    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_42

    :cond_8
    goto :goto_35

    :sswitch_9
    const-string/jumbo v0, "player_metrics_per_app_attribution_allowlist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_36

    :sswitch_14
    const-string/jumbo v0, "player_metrics_app_blocklist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_36

    :sswitch_1f
    const-string/jumbo v0, "player_metrics_app_allowlist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_36

    :sswitch_2a
    const-string/jumbo v0, "player_metrics_per_app_attribution_blocklist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_36

    :goto_35
    const/4 v0, -0x1

    :goto_36
    const v2, 0x1869f

    packed-switch v0, :pswitch_data_54

    .line 491
    return v2

    .line 489
    :pswitch_3d
    const/16 v0, 0x3e8

    return v0

    .line 486
    :pswitch_40
    return v1

    .line 484
    :pswitch_41
    return v2

    :sswitch_data_42
    .sparse-switch
        -0x70e7b2af -> :sswitch_2a
        -0x4cdbea91 -> :sswitch_1f
        -0x2f080b4d -> :sswitch_14
        0x71446e0d -> :sswitch_9
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_41
        :pswitch_40
        :pswitch_3d
        :pswitch_3d
    .end packed-switch
.end method

.method private loggingLevel()I
    .registers 10

    .line 350
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 351
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 353
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    if-nez v2, :cond_35

    .line 354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1b3

    .line 356
    .local v4, "identity":J
    :try_start_18
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v6, "media"

    const-string/jumbo v7, "media_metrics_mode"

    invoke-static {v6, v7, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/Integer;)V
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_2f

    .line 361
    :try_start_2b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 362
    goto :goto_35

    .line 361
    :catchall_2f
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 362
    nop

    .end local p0    # "this":Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;
    throw v2

    .line 365
    .end local v4    # "identity":J
    .restart local p0    # "this":Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;
    :cond_35
    :goto_35
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_45

    .line 366
    monitor-exit v0

    return v5

    .line 368
    :cond_45
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v4, 0x1869f

    if-nez v2, :cond_5d

    .line 369
    const-string v2, "MediaMetricsManagerService"

    const-string v3, "Logging level blocked: MEDIA_METRICS_MODE_OFF"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    monitor-exit v0

    return v4

    .line 373
    :cond_5d
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 374
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 375
    .local v6, "packages":[Ljava/lang/String;
    if-eqz v6, :cond_189

    array-length v7, v6

    if-nez v7, :cond_72

    goto/16 :goto_189

    .line 385
    :cond_72
    iget-object v7, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v3, :cond_f5

    .line 386
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_a3

    .line 387
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v7, "player_metrics_app_blocklist"

    invoke-static {v3, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V

    .line 388
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_a3

    .line 390
    const-string v3, "MediaMetricsManagerService"

    const-string v5, "Logging level blocked: Failed to get PLAYER_METRICS_APP_BLOCKLIST."

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    monitor-exit v0

    return v4

    .line 395
    :cond_a3
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v3

    const-string/jumbo v7, "player_metrics_app_blocklist"

    invoke-direct {p0, v6, v3, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 397
    .local v3, "level":Ljava/lang/Integer;
    if-eqz v3, :cond_b8

    .line 398
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    monitor-exit v0

    return v4

    .line 400
    :cond_b8
    iget-object v7, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_dd

    .line 401
    iget-object v7, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v8, "player_metrics_per_app_attribution_blocklist"

    .line 402
    invoke-static {v7, v8}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V

    .line 403
    iget-object v7, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_dd

    .line 405
    const-string v5, "MediaMetricsManagerService"

    const-string v7, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_BLOCKLIST."

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    monitor-exit v0

    return v4

    .line 410
    :cond_dd
    iget-object v4, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v4}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v4

    const-string/jumbo v7, "player_metrics_per_app_attribution_blocklist"

    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .line 414
    if-eqz v3, :cond_f3

    .line 415
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    monitor-exit v0

    return v4

    .line 418
    :cond_f3
    monitor-exit v0

    return v5

    .line 420
    .end local v3    # "level":Ljava/lang/Integer;
    :cond_f5
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_180

    .line 421
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_127

    .line 422
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v5, "player_metrics_per_app_attribution_allowlist"

    .line 423
    invoke-static {v3, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V

    .line 424
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_127

    .line 426
    const-string v3, "MediaMetricsManagerService"

    const-string v5, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_ALLOWLIST."

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    monitor-exit v0

    return v4

    .line 431
    :cond_127
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v3

    const-string/jumbo v5, "player_metrics_per_app_attribution_allowlist"

    invoke-direct {p0, v6, v3, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 435
    .restart local v3    # "level":Ljava/lang/Integer;
    if-eqz v3, :cond_13c

    .line 436
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    monitor-exit v0

    return v4

    .line 438
    :cond_13c
    iget-object v5, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_161

    .line 439
    iget-object v5, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v7, "player_metrics_app_allowlist"

    invoke-static {v5, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V

    .line 440
    iget-object v5, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_161

    .line 442
    const-string v5, "MediaMetricsManagerService"

    const-string v7, "Logging level blocked: Failed to get PLAYER_METRICS_APP_ALLOWLIST."

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    monitor-exit v0

    return v4

    .line 447
    :cond_161
    iget-object v5, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v5

    const-string/jumbo v7, "player_metrics_app_allowlist"

    invoke-direct {p0, v6, v5, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, v5

    .line 449
    if-eqz v3, :cond_177

    .line 450
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    monitor-exit v0

    return v4

    .line 453
    :cond_177
    const-string v5, "MediaMetricsManagerService"

    const-string v7, "Logging level blocked: Not detected in any allowlist."

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    monitor-exit v0

    return v4

    .line 456
    .end local v1    # "uid":I
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "level":Ljava/lang/Integer;
    .end local v6    # "packages":[Ljava/lang/String;
    :cond_180
    monitor-exit v0
    :try_end_181
    .catchall {:try_start_2b .. :try_end_181} :catchall_1b3

    .line 458
    const-string v0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: Blocked by default."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return v4

    .line 380
    .restart local v1    # "uid":I
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "packages":[Ljava/lang/String;
    :cond_189
    :goto_189
    :try_start_189
    const-string v5, "MediaMetricsManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "empty package from uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v5, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_1b0

    .line 383
    const/16 v4, 0x3e8

    goto :goto_1b1

    :cond_1b0
    nop

    :goto_1b1
    monitor-exit v0

    .line 382
    return v4

    .line 456
    .end local v1    # "uid":I
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "packages":[Ljava/lang/String;
    :catchall_1b3
    move-exception v1

    monitor-exit v0
    :try_end_1b5
    .catchall {:try_start_189 .. :try_end_1b5} :catchall_1b3

    throw v1
.end method

.method private loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5
    .param p1, "packages"    # [Ljava/lang/String;
    .param p3, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 464
    .local p2, "cached":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->inList([Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 465
    invoke-direct {p0, p3}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->listNameToLoggingLevel(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 467
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getBundleSessionId(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 281
    invoke-direct {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditingSessionId(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 276
    invoke-direct {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackSessionId(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 261
    invoke-direct {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordingSessionId(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 266
    invoke-direct {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranscodingSessionId(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 271
    invoke-direct {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public releaseSessionId(Ljava/lang/String;I)V
    .registers 5
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Releasing sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [NOP]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaMetricsManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method public reportBundleMetrics(Ljava/lang/String;Landroid/os/PersistableBundle;I)V
    .registers 12
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "metrics"    # Landroid/os/PersistableBundle;
    .param p3, "userId"    # I

    .line 186
    invoke-direct {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result v0

    .line 187
    .local v0, "level":I
    const v1, 0x1869f

    if-ne v0, v1, :cond_a

    .line 188
    return-void

    .line 191
    :cond_a
    const-string v1, "bundlesession-statsd-atom"

    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 192
    .local v1, "atomid":I
    packed-switch v1, :pswitch_data_86

    .line 194
    return-void

    .line 200
    :pswitch_14
    const-string/jumbo v2, "playbackstateevent-sessionid"

    invoke-virtual {p2, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "_sessionId":Ljava/lang/String;
    const/4 v3, -0x1

    const-string/jumbo v4, "playbackstateevent-state"

    invoke-virtual {p2, v4, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 202
    .local v3, "_state":I
    const-wide/16 v4, -0x1

    const-string/jumbo v6, "playbackstateevent-lifetime"

    invoke-virtual {p2, v6, v4, v5}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 203
    .local v4, "_lifetime":J
    if-eqz v2, :cond_59

    if-ltz v3, :cond_59

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_37

    goto :goto_59

    .line 209
    :cond_37
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v6

    const/16 v7, 0x142

    .line 210
    invoke-virtual {v6, v7}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    .line 211
    invoke-virtual {v6, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    .line 212
    invoke-virtual {v6, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    .line 213
    invoke-virtual {v6, v4, v5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    .line 214
    invoke-virtual {v6}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object v6

    .line 215
    invoke-virtual {v6}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v6

    .line 216
    .local v6, "statsEvent":Landroid/util/StatsEvent;
    invoke-static {v6}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 217
    return-void

    .line 204
    .end local v6    # "statsEvent":Landroid/util/StatsEvent;
    :cond_59
    :goto_59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dropping incomplete data for atom 322: _sessionId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " _state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " _lifetime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MediaMetricsManagerService"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    :pswitch_data_86
    .packed-switch 0x142
        :pswitch_14
    .end packed-switch
.end method

.method public reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;I)V
    .registers 8
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/media/metrics/NetworkEvent;
    .param p3, "userId"    # I

    .line 305
    invoke-direct {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result v0

    .line 306
    .local v0, "level":I
    const v1, 0x1869f

    if-ne v0, v1, :cond_a

    .line 307
    return-void

    .line 309
    :cond_a
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const/16 v2, 0x141

    .line 310
    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 311
    invoke-virtual {v1, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 312
    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 313
    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    .line 316
    .local v1, "statsEvent":Landroid/util/StatsEvent;
    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 317
    return-void
.end method

.method public reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;I)V
    .registers 8
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/media/metrics/PlaybackErrorEvent;
    .param p3, "userId"    # I

    .line 287
    invoke-direct {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result v0

    .line 288
    .local v0, "level":I
    const v1, 0x1869f

    if-ne v0, v1, :cond_a

    .line 289
    return-void

    .line 291
    :cond_a
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const/16 v2, 0x143

    .line 292
    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 293
    invoke-virtual {v1, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 294
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getExceptionStack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 295
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 296
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getSubErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 297
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 298
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    .line 300
    .local v1, "statsEvent":Landroid/util/StatsEvent;
    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 301
    return-void
.end method

.method public reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;I)V
    .registers 9
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "metrics"    # Landroid/media/metrics/PlaybackMetrics;
    .param p3, "userId"    # I

    .line 155
    invoke-direct {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result v0

    .line 156
    .local v0, "level":I
    const v1, 0x1869f

    if-ne v0, v1, :cond_a

    .line 157
    return-void

    .line 159
    :cond_a
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const/16 v2, 0x140

    .line 160
    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 161
    const/4 v2, 0x0

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    goto :goto_1d

    :cond_1c
    move v3, v2

    :goto_1d
    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 162
    invoke-virtual {v1, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 163
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getMediaDurationMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 164
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamSource()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 165
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamType()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 166
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlaybackType()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 167
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmType()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 168
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getContentType()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 169
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 170
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    new-array v3, v2, [B

    .line 171
    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesPlayed()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 173
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesDropped()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getAudioUnderrunCount()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 175
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkBytesRead()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 176
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getLocalBytesRead()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 177
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkTransferDurationMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 179
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmSessionId()[B

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    .line 182
    .local v1, "statsEvent":Landroid/util/StatsEvent;
    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 183
    return-void
.end method

.method public reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;I)V
    .registers 8
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/media/metrics/PlaybackStateEvent;
    .param p3, "userId"    # I

    .line 224
    invoke-direct {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result v0

    .line 225
    .local v0, "level":I
    const v1, 0x1869f

    if-ne v0, v1, :cond_a

    .line 226
    return-void

    .line 228
    :cond_a
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const/16 v2, 0x142

    .line 229
    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 230
    invoke-virtual {v1, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 231
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 232
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    .line 235
    .local v1, "statsEvent":Landroid/util/StatsEvent;
    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 236
    return-void
.end method

.method public reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;I)V
    .registers 8
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/media/metrics/TrackChangeEvent;
    .param p3, "userId"    # I

    .line 322
    invoke-direct {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result v0

    .line 323
    .local v0, "level":I
    const v1, 0x1869f

    if-ne v0, v1, :cond_a

    .line 324
    return-void

    .line 326
    :cond_a
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const/16 v2, 0x144

    .line 327
    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 328
    invoke-virtual {v1, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 329
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 330
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackChangeReason()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 331
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getContainerMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 332
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getSampleMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 333
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getCodecName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 334
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getBitrate()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 335
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 336
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 337
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 338
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguageRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 339
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getChannelCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 340
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getAudioSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 341
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 342
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 343
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getVideoFrameRate()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 344
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    .line 346
    .local v1, "statsEvent":Landroid/util/StatsEvent;
    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 347
    return-void
.end method
