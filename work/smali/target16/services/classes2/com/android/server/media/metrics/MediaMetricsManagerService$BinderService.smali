.class public final Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;
.super Landroid/media/metrics/IMediaMetricsManager$Stub;
.source "MediaMetricsManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-direct {p0}, Landroid/media/metrics/IMediaMetricsManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;Lcom/android/server/media/metrics/MediaMetricsManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;-><init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V

    return-void
.end method


# virtual methods
.method public getBundleSessionId(I)Ljava/lang/String;
    .registers 2

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEditingSessionId(I)Ljava/lang/String;
    .registers 2

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackSessionId(I)Ljava/lang/String;
    .registers 2

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRecordingSessionId(I)Ljava/lang/String;
    .registers 2

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSessionIdInternal(I)Ljava/lang/String;
    .registers 4

    const/16 p1, 0xc

    .line 257
    new-array p1, p1, [B

    .line 258
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmSecureRandom(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 p0, 0xb

    .line 259
    invoke-static {p1, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 263
    new-instance p1, Landroid/media/MediaMetrics$Item;

    const-string/jumbo v0, "metrics.manager"

    invoke-direct {p1, v0}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string v1, "create"

    .line 264
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object v0, Landroid/media/MediaMetrics$Property;->LOG_SESSION_ID:Landroid/media/MediaMetrics$Key;

    .line 265
    invoke-virtual {p1, v0, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Landroid/media/MediaMetrics$Item;->record()Z

    return-object p0
.end method

.method public getTranscodingSessionId(I)Ljava/lang/String;
    .registers 2

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final inList([Ljava/lang/String;Ljava/util/List;)Z
    .registers 8

    .line 694
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_22

    aget-object v2, p1, v1

    .line 695
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 696
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_22
    return v0
.end method

.method public final listNameToLoggingLevel(Ljava/lang/String;)I
    .registers 4

    .line 705
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p0, :sswitch_data_3c

    goto :goto_30

    :sswitch_d
    const-string/jumbo p0, "player_metrics_per_app_attribution_allowlist"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_30

    :cond_17
    const/4 v1, 0x2

    goto :goto_30

    :sswitch_19
    const-string/jumbo p0, "player_metrics_app_allowlist"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_30

    :cond_23
    const/4 v1, 0x1

    goto :goto_30

    :sswitch_25
    const-string/jumbo p0, "player_metrics_per_app_attribution_blocklist"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v0

    :goto_30
    packed-switch v1, :pswitch_data_4a

    const p0, 0x1869f

    return p0

    :pswitch_37
    return v0

    :pswitch_38
    const/16 p0, 0x3e8

    return p0

    nop

    :sswitch_data_3c
    .sparse-switch
        -0x70e7b2af -> :sswitch_25
        -0x4cdbea91 -> :sswitch_19
        0x71446e0d -> :sswitch_d
    .end sparse-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_38
        :pswitch_37
        :pswitch_38
    .end packed-switch
.end method

.method public final loggingLevel()I
    .registers 9

    .line 573
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 574
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 576
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    if-nez v2, :cond_37

    .line 577
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_2f

    .line 579
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
    .catchall {:try_start_18 .. :try_end_2b} :catchall_32

    .line 584
    :try_start_2b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_37

    :catchall_2f
    move-exception p0

    goto/16 :goto_1af

    :catchall_32
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 585
    throw p0

    .line 588
    :cond_37
    :goto_37
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_47

    .line 589
    monitor-exit v0

    return v5

    .line 591
    :cond_47
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v4, 0x1869f

    if-nez v2, :cond_5f

    .line 592
    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: MEDIA_METRICS_MODE_OFF"

    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    monitor-exit v0

    return v4

    .line 596
    :cond_5f
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 597
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_189

    .line 598
    array-length v6, v2

    if-nez v6, :cond_74

    goto/16 :goto_189

    .line 608
    :cond_74
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_f6

    .line 609
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a5

    .line 610
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v3, "player_metrics_app_blocklist"

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V

    .line 611
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a5

    .line 613
    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: Failed to get PLAYER_METRICS_APP_BLOCKLIST."

    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    monitor-exit v0

    return v4

    .line 618
    :cond_a5
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v3, "player_metrics_app_blocklist"

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_ba

    .line 621
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 623
    :cond_ba
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_df

    .line 624
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v3, "player_metrics_per_app_attribution_blocklist"

    .line 625
    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V

    .line 626
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_df

    .line 628
    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_BLOCKLIST."

    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    monitor-exit v0

    return v4

    .line 633
    :cond_df
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v3, "player_metrics_per_app_attribution_blocklist"

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_f4

    .line 638
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 641
    :cond_f4
    monitor-exit v0

    return v5

    .line 643
    :cond_f6
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_180

    .line 644
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_128

    .line 645
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v3, "player_metrics_per_app_attribution_allowlist"

    .line 646
    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V

    .line 647
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_128

    .line 649
    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_ALLOWLIST."

    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    monitor-exit v0

    return v4

    .line 654
    :cond_128
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v3, "player_metrics_per_app_attribution_allowlist"

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_13d

    .line 659
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 661
    :cond_13d
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_162

    .line 662
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v3, "player_metrics_app_allowlist"

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V

    .line 663
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_162

    .line 665
    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: Failed to get PLAYER_METRICS_APP_ALLOWLIST."

    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    monitor-exit v0

    return v4

    .line 670
    :cond_162
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v3, "player_metrics_app_allowlist"

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_177

    .line 673
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 676
    :cond_177
    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: Not detected in any allowlist."

    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    monitor-exit v0

    return v4

    .line 679
    :cond_180
    monitor-exit v0
    :try_end_181
    .catchall {:try_start_2b .. :try_end_181} :catchall_2f

    .line 681
    const-string p0, "MediaMetricsManagerService"

    const-string v0, "Logging level blocked: Blocked by default."

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 603
    :cond_189
    :goto_189
    :try_start_189
    const-string v2, "MediaMetricsManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "empty package from uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v3, :cond_1ad

    const/16 v4, 0x3e8

    .line 606
    :cond_1ad
    monitor-exit v0

    return v4

    .line 679
    :goto_1af
    monitor-exit v0
    :try_end_1b0
    .catchall {:try_start_189 .. :try_end_1b0} :catchall_2f

    throw p0
.end method

.method public final loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    .line 687
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->inList([Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 688
    invoke-virtual {p0, p3}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->listNameToLoggingLevel(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public releaseSessionId(Ljava/lang/String;I)V
    .registers 4

    .line 274
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Releasing sessionId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for userId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " [NOP]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaMetricsManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportBundleMetrics(Ljava/lang/String;Landroid/os/PersistableBundle;I)V
    .registers 8

    .line 204
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p1, 0x1869f

    if-ne p0, p1, :cond_a

    goto :goto_14

    .line 209
    :cond_a
    const-string p0, "bundlesession-statsd-atom"

    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x142

    if-eq p0, p1, :cond_15

    :goto_14
    return-void

    .line 218
    :cond_15
    const-string/jumbo p0, "playbackstateevent-sessionid"

    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 219
    const-string/jumbo p3, "playbackstateevent-state"

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    .line 220
    const-string/jumbo v0, "playbackstateevent-lifetime"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    if-eqz p0, :cond_58

    if-ltz p3, :cond_58

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_38

    goto :goto_58

    .line 227
    :cond_38
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p2

    .line 228
    invoke-virtual {p2, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    .line 229
    invoke-virtual {p1, p0}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 230
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 231
    invoke-virtual {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 234
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void

    .line 222
    :cond_58
    :goto_58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dropping incomplete data for atom 322: _sessionId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " _state: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " _lifetime: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaMetricsManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportEditingEndedEvent(Ljava/lang/String;Landroid/media/metrics/EditingEndedEvent;I)V
    .registers 45

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result v0

    const v1, 0x1869f

    if-ne v0, v1, :cond_a

    return-void

    .line 374
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 375
    invoke-static {}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$sfgetEMPTY_MEDIA_ITEM_INFO()Landroid/media/metrics/MediaItemInfo;

    move-result-object v0

    goto :goto_24

    .line 376
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/MediaItemInfo;

    .line 377
    :goto_24
    invoke-virtual {v0}, Landroid/media/metrics/MediaItemInfo;->getDataTypes()J

    move-result-wide v2

    .line 380
    invoke-virtual {v0}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    move-result-object v4

    .line 379
    const-string v5, "audio/"

    invoke-static {v4, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 383
    invoke-virtual {v0}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    move-result-object v6

    .line 382
    const-string/jumbo v7, "video/"

    invoke-static {v6, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 384
    invoke-virtual {v0}, Landroid/media/metrics/MediaItemInfo;->getVideoSize()Landroid/util/Size;

    move-result-object v8

    .line 385
    invoke-static {v8}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    move-result v9

    if-nez v9, :cond_58

    .line 388
    new-instance v9, Landroid/util/Size;

    .line 390
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/util/Size;-><init>(II)V

    .line 389
    invoke-static {v9}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    move-result v9

    .line 392
    :cond_58
    invoke-virtual {v0}, Landroid/media/metrics/MediaItemInfo;->getCodecNames()Ljava/util/List;

    move-result-object v10

    .line 393
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    const-string v12, ""

    if-nez v11, :cond_6b

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_6c

    :cond_6b
    move-object v11, v12

    .line 394
    :goto_6c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_7a

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_7b

    :cond_7a
    move-object v10, v12

    .line 397
    :goto_7b
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    move-result-object v13

    if-nez v13, :cond_86

    .line 398
    invoke-static {}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$sfgetEMPTY_MEDIA_ITEM_INFO()Landroid/media/metrics/MediaItemInfo;

    move-result-object v13

    goto :goto_8a

    .line 399
    :cond_86
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    move-result-object v13

    .line 400
    :goto_8a
    invoke-virtual {v13}, Landroid/media/metrics/MediaItemInfo;->getDataTypes()J

    move-result-wide v15

    .line 403
    invoke-virtual {v13}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    move-result-object v14

    .line 402
    invoke-static {v14, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 406
    invoke-virtual {v13}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    move-result-object v14

    .line 405
    invoke-static {v14, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 407
    invoke-virtual {v13}, Landroid/media/metrics/MediaItemInfo;->getVideoSize()Landroid/util/Size;

    move-result-object v14

    .line 408
    invoke-static {v14}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    move-result v17

    if-nez v17, :cond_c0

    .line 411
    new-instance v1, Landroid/util/Size;

    move-object/from16 v18, v0

    .line 413
    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v0

    move-wide/from16 v19, v2

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/util/Size;-><init>(II)V

    .line 412
    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    move-result v17

    :goto_bd
    move/from16 v0, v17

    goto :goto_c5

    :cond_c0
    move-object/from16 v18, v0

    move-wide/from16 v19, v2

    goto :goto_bd

    .line 415
    :goto_c5
    invoke-virtual {v13}, Landroid/media/metrics/MediaItemInfo;->getCodecNames()Ljava/util/List;

    move-result-object v1

    .line 417
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d7

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_d8

    :cond_d7
    move-object v3, v12

    .line 419
    :goto_d8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v17, v8

    const/4 v8, 0x1

    if-le v2, v8, :cond_e8

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    .line 420
    :cond_e8
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOperationTypes()J

    move-result-wide v1

    .line 422
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v8

    move-wide/from16 v21, v1

    const/16 v1, 0x31e

    .line 423
    invoke-virtual {v8, v1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    move-object/from16 v2, p1

    .line 424
    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getFinalState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getFinalProgressPercent()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    move-object v2, v13

    move-object v8, v14

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x1

    and-long v23, v21, v13

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-eqz v23, :cond_12e

    move-wide/from16 v23, v13

    const/4 v13, 0x1

    goto :goto_131

    :cond_12e
    move-wide/from16 v23, v13

    const/4 v13, 0x0

    .line 429
    :goto_131
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x2

    and-long v27, v21, v13

    cmp-long v27, v27, v25

    if-eqz v27, :cond_141

    move-wide/from16 v27, v13

    const/4 v13, 0x1

    goto :goto_144

    :cond_141
    move-wide/from16 v27, v13

    const/4 v13, 0x0

    .line 434
    :goto_144
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x4

    and-long v29, v21, v13

    cmp-long v29, v29, v25

    if-eqz v29, :cond_154

    move-wide/from16 v29, v13

    const/4 v13, 0x1

    goto :goto_157

    :cond_154
    move-wide/from16 v29, v13

    const/4 v13, 0x0

    .line 439
    :goto_157
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x8

    and-long v31, v21, v13

    cmp-long v31, v31, v25

    if-eqz v31, :cond_167

    move-wide/from16 v31, v13

    const/4 v13, 0x1

    goto :goto_16a

    :cond_167
    move-wide/from16 v31, v13

    const/4 v13, 0x0

    .line 442
    :goto_16a
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x10

    and-long v33, v21, v13

    cmp-long v33, v33, v25

    if-eqz v33, :cond_17a

    move-wide/from16 v33, v13

    const/4 v13, 0x1

    goto :goto_17d

    :cond_17a
    move-wide/from16 v33, v13

    const/4 v13, 0x0

    .line 445
    :goto_17d
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x20

    and-long v35, v21, v13

    cmp-long v35, v35, v25

    if-eqz v35, :cond_18d

    move-wide/from16 v35, v13

    const/4 v13, 0x1

    goto :goto_190

    :cond_18d
    move-wide/from16 v35, v13

    const/4 v13, 0x0

    .line 450
    :goto_190
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x40

    and-long v37, v21, v13

    cmp-long v37, v37, v25

    if-eqz v37, :cond_1a0

    move-wide/from16 v37, v13

    const/4 v13, 0x1

    goto :goto_1a3

    :cond_1a0
    move-wide/from16 v37, v13

    const/4 v13, 0x0

    .line 455
    :goto_1a3
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x80

    and-long v21, v21, v13

    cmp-long v21, v21, v25

    if-eqz v21, :cond_1b3

    move-wide/from16 v21, v13

    const/4 v13, 0x1

    goto :goto_1b6

    :cond_1b3
    move-wide/from16 v21, v13

    const/4 v13, 0x0

    .line 457
    :goto_1b6
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getExporterName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getMuxerName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 462
    invoke-static/range {p2 .. p2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetThroughputFps(Landroid/media/metrics/EditingEndedEvent;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 464
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getSourceType()I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v13, v19, v23

    cmp-long v13, v13, v25

    if-eqz v13, :cond_1f6

    const/4 v13, 0x1

    goto :goto_1f7

    :cond_1f6
    const/4 v13, 0x0

    .line 465
    :goto_1f7
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v13, v19, v27

    cmp-long v13, v13, v25

    if-eqz v13, :cond_203

    const/4 v13, 0x1

    goto :goto_204

    :cond_203
    const/4 v13, 0x0

    .line 466
    :goto_204
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v13, v19, v29

    cmp-long v13, v13, v25

    if-eqz v13, :cond_210

    const/4 v13, 0x1

    goto :goto_211

    :cond_210
    const/4 v13, 0x0

    .line 467
    :goto_211
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v13, v19, v31

    cmp-long v13, v13, v25

    if-eqz v13, :cond_21d

    const/4 v13, 0x1

    goto :goto_21e

    :cond_21d
    const/4 v13, 0x0

    .line 468
    :goto_21e
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v13, v19, v33

    cmp-long v13, v13, v25

    if-eqz v13, :cond_22a

    const/4 v13, 0x1

    goto :goto_22b

    :cond_22a
    const/4 v13, 0x0

    .line 469
    :goto_22b
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v13, v19, v35

    cmp-long v13, v13, v25

    if-eqz v13, :cond_237

    const/4 v13, 0x1

    goto :goto_238

    :cond_237
    const/4 v13, 0x0

    .line 470
    :goto_238
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v13, v19, v37

    cmp-long v13, v13, v25

    if-eqz v13, :cond_244

    const/4 v13, 0x1

    goto :goto_245

    :cond_244
    const/4 v13, 0x0

    .line 471
    :goto_245
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v13, v19, v21

    cmp-long v13, v13, v25

    if-eqz v13, :cond_251

    const/4 v13, 0x1

    goto :goto_252

    :cond_251
    const/4 v13, 0x0

    .line 473
    :goto_252
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x100

    and-long v39, v19, v13

    cmp-long v39, v39, v25

    move-wide/from16 p1, v13

    if-eqz v39, :cond_262

    const/4 v13, 0x1

    goto :goto_263

    :cond_262
    const/4 v13, 0x0

    .line 478
    :goto_263
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x200

    and-long v39, v19, v13

    cmp-long v39, v39, v25

    if-eqz v39, :cond_273

    move-wide/from16 v39, v13

    const/4 v13, 0x1

    goto :goto_276

    :cond_273
    move-wide/from16 v39, v13

    const/4 v13, 0x0

    .line 479
    :goto_276
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x400

    and-long v19, v19, v13

    cmp-long v19, v19, v25

    if-eqz v19, :cond_286

    move-wide/from16 v19, v13

    const/4 v13, 0x1

    goto :goto_289

    :cond_286
    move-wide/from16 v19, v13

    const/4 v13, 0x0

    .line 481
    :goto_289
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 488
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getDurationMillis()J

    move-result-wide v13

    .line 487
    invoke-static {v13, v14}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    move-result-wide v13

    .line 486
    invoke-virtual {v1, v13, v14}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 491
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getClipDurationMillis()J

    move-result-wide v13

    .line 490
    invoke-static {v13, v14}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    move-result-wide v13

    .line 489
    invoke-virtual {v1, v13, v14}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 493
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getContainerMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 492
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 494
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 495
    invoke-virtual {v1, v6}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 496
    invoke-static {v6}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetCodecEnum(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 499
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleRateHz()I

    move-result v4

    .line 498
    invoke-static {v4}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredAudioSampleRateHz(I)I

    move-result v4

    .line 497
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 500
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getAudioChannelCount()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 501
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleCount()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 502
    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 503
    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 504
    invoke-virtual {v1, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 505
    invoke-static/range {v17 .. v17}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionAspectRatioEnum(Landroid/util/Size;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 506
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 509
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    move-result v4

    .line 508
    invoke-static {v4, v6}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoHdrFormatEnum(ILjava/lang/String;)I

    move-result v4

    .line 507
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 511
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 512
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    move-result v4

    invoke-static {v4}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoFrameRateEnum(F)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 513
    invoke-virtual {v1, v11}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 514
    invoke-virtual {v1, v10}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v23

    cmp-long v4, v9, v25

    if-eqz v4, :cond_335

    const/4 v4, 0x1

    goto :goto_336

    :cond_335
    const/4 v4, 0x0

    .line 515
    :goto_336
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v27

    cmp-long v4, v9, v25

    if-eqz v4, :cond_342

    const/4 v4, 0x1

    goto :goto_343

    :cond_342
    const/4 v4, 0x0

    .line 516
    :goto_343
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v29

    cmp-long v4, v9, v25

    if-eqz v4, :cond_34f

    const/4 v4, 0x1

    goto :goto_350

    :cond_34f
    const/4 v4, 0x0

    .line 517
    :goto_350
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v31

    cmp-long v4, v9, v25

    if-eqz v4, :cond_35c

    const/4 v4, 0x1

    goto :goto_35d

    :cond_35c
    const/4 v4, 0x0

    .line 518
    :goto_35d
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v33

    cmp-long v4, v9, v25

    if-eqz v4, :cond_369

    const/4 v4, 0x1

    goto :goto_36a

    :cond_369
    const/4 v4, 0x0

    .line 519
    :goto_36a
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v35

    cmp-long v4, v9, v25

    if-eqz v4, :cond_376

    const/4 v4, 0x1

    goto :goto_377

    :cond_376
    const/4 v4, 0x0

    .line 520
    :goto_377
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v37

    cmp-long v4, v9, v25

    if-eqz v4, :cond_383

    const/4 v4, 0x1

    goto :goto_384

    :cond_383
    const/4 v4, 0x0

    .line 521
    :goto_384
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v21

    cmp-long v4, v9, v25

    if-eqz v4, :cond_390

    const/4 v4, 0x1

    goto :goto_391

    :cond_390
    const/4 v4, 0x0

    .line 524
    :goto_391
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, p1

    cmp-long v4, v9, v25

    if-eqz v4, :cond_39d

    const/4 v4, 0x1

    goto :goto_39e

    :cond_39d
    const/4 v4, 0x0

    .line 529
    :goto_39e
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v39

    cmp-long v4, v9, v25

    if-eqz v4, :cond_3aa

    const/4 v4, 0x1

    goto :goto_3ab

    :cond_3aa
    const/4 v4, 0x0

    .line 530
    :goto_3ab
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v19

    cmp-long v4, v9, v25

    if-eqz v4, :cond_3b7

    const/4 v4, 0x1

    goto :goto_3b8

    :cond_3b7
    const/4 v4, 0x0

    .line 532
    :goto_3b8
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 539
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getDurationMillis()J

    move-result-wide v9

    .line 538
    invoke-static {v9, v10}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    move-result-wide v9

    .line 537
    invoke-virtual {v1, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 542
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getClipDurationMillis()J

    move-result-wide v9

    .line 541
    invoke-static {v9, v10}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    move-result-wide v9

    .line 540
    invoke-virtual {v1, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 544
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getContainerMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 543
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 545
    invoke-virtual {v1, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 546
    invoke-virtual {v1, v7}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 547
    invoke-static {v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetCodecEnum(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 550
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleRateHz()I

    move-result v4

    .line 549
    invoke-static {v4}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredAudioSampleRateHz(I)I

    move-result v4

    .line 548
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 551
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getAudioChannelCount()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 552
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleCount()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 553
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 554
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 555
    invoke-virtual {v1, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 556
    invoke-static {v8}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionAspectRatioEnum(Landroid/util/Size;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 557
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 560
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    move-result v1

    .line 559
    invoke-static {v1, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoHdrFormatEnum(ILjava/lang/String;)I

    move-result v1

    .line 558
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 562
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 564
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    move-result v1

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoFrameRateEnum(F)I

    move-result v1

    .line 563
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 565
    invoke-virtual {v0, v3}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 566
    invoke-virtual {v0, v12}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    .line 569
    invoke-static {v0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;I)V
    .registers 4

    .line 323
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_a

    return-void

    .line 327
    :cond_a
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const/16 p3, 0x141

    .line 328
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 329
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 330
    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getNetworkType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 331
    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getTimeSinceCreatedMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 332
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 333
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 334
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;I)V
    .registers 4

    .line 305
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_a

    return-void

    .line 309
    :cond_a
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const/16 p3, 0x143

    .line 310
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 311
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 312
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getExceptionStack()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 313
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 314
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getSubErrorCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 315
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getTimeSinceCreatedMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 316
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 317
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 318
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;I)V
    .registers 7

    .line 173
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_a

    return-void

    .line 177
    :cond_a
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p3

    const/16 v0, 0x140

    .line 178
    invoke-virtual {p3, v0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p0, :cond_1c

    .line 179
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    goto :goto_1d

    :cond_1c
    move p0, v0

    :goto_1d
    invoke-virtual {p3, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 180
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 181
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getMediaDurationMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 182
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamSource()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 183
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 184
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlaybackType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 185
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 186
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getContentType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 187
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 188
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    new-array p1, v0, [B

    .line 189
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 190
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesPlayed()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 191
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesDropped()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 192
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getAudioUnderrunCount()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 193
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkBytesRead()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 194
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getLocalBytesRead()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 195
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkTransferDurationMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 197
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmSessionId()[B

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 198
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 200
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;I)V
    .registers 4

    .line 242
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_a

    return-void

    .line 246
    :cond_a
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const/16 p3, 0x142

    .line 247
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 248
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 249
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 250
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getTimeSinceCreatedMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 251
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 252
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 253
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;I)V
    .registers 6

    .line 340
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_a

    return-void

    .line 344
    :cond_a
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const/16 p3, 0x144

    .line 345
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 346
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 347
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackState()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 348
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackChangeReason()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 349
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getContainerMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 350
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getSampleMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 351
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getCodecName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 352
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getBitrate()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 353
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 354
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 355
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 356
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguageRegion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 357
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getChannelCount()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 358
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getAudioSampleRate()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 359
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 360
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 361
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getVideoFrameRate()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 362
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 363
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 364
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method
