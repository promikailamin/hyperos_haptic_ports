.class public Lcom/android/server/usage/StorageStatsService$H;
.super Landroid/os/Handler;
.source "StorageStatsService.java"


# instance fields
.field public mPreviousBytes:J

.field public final mStats:Landroid/os/StatFs;

.field public mTotalBytes:J

.field public final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/StorageStatsService;Landroid/os/Looper;)V
    .registers 5

    .line 686
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 687
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 689
    new-instance p1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    .line 690
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 691
    invoke-virtual {p1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mTotalBytes:J

    return-void
.end method


# virtual methods
.method public final getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;
    .registers 5

    .line 774
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 775
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 776
    new-instance v1, Lcom/android/server/storage/CacheQuotaStrategy;

    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/StorageStatsService;->-$$Nest$fgetmContext(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v3}, Lcom/android/server/usage/StorageStatsService;->-$$Nest$fgetmInstaller(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/pm/Installer;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/StorageStatsService;->-$$Nest$fgetmCacheQuotas(Lcom/android/server/usage/StorageStatsService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-direct {v1, v2, v0, v3, p0}, Lcom/android/server/storage/CacheQuotaStrategy;-><init>(Landroid/content/Context;Landroid/app/usage/UsageStatsManagerInternal;Lcom/android/server/pm/Installer;Landroid/util/ArrayMap;)V

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 699
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->-$$Nest$fgetmContext(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->isCacheQuotaCalculationsEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1f

    .line 703
    :cond_11
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x7530

    const/16 v2, 0x64

    const-wide/32 v3, 0x2255100

    const/16 v5, 0x66

    packed-switch p1, :pswitch_data_e2

    :goto_1f
    return-void

    .line 754
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    return-void

    .line 748
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 749
    invoke-virtual {p0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 727
    :pswitch_33
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object p1

    const-wide/16 v6, -0x1

    .line 728
    iput-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 730
    :try_start_3b
    invoke-virtual {p1}, Lcom/android/server/storage/CacheQuotaStrategy;->setupQuotasFromFile()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_41} :catch_44
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_41} :catch_42

    goto :goto_55

    :catch_42
    move-exception v6

    goto :goto_46

    :catch_44
    move-exception v6

    goto :goto_4e

    .line 734
    :goto_46
    const-string v7, "StorageStatsService"

    const-string v8, "Cache quota XML file is malformed?"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 732
    :goto_4e
    const-string v7, "StorageStatsService"

    const-string v8, "An error occurred while reading the cache quota file."

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    :goto_55
    iget-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_75

    .line 739
    iget-object v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 740
    iget-object v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 741
    invoke-virtual {p0, p1}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 743
    :cond_75
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 744
    invoke-virtual {p0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 705
    :pswitch_7c
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 706
    iget-wide v3, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 708
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {p1}, Lcom/android/server/usage/StorageStatsService;->-$$Nest$fgetmLock(Lcom/android/server/usage/StorageStatsService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 709
    :try_start_9d
    iget-object v5, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/usage/StorageStatsService$H;->mTotalBytes:J

    iget-object v9, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v9}, Lcom/android/server/usage/StorageStatsService;->-$$Nest$fgetmStorageThresholdPercentHigh(Lcom/android/server/usage/StorageStatsService;)I

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x64

    div-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_bd

    .line 711
    iget-wide v5, p0, Lcom/android/server/usage/StorageStatsService$H;->mTotalBytes:J

    const-wide/16 v7, 0x5

    mul-long/2addr v5, v7

    div-long/2addr v5, v9

    goto :goto_c3

    :catchall_bb
    move-exception p0

    goto :goto_e0

    .line 714
    :cond_bd
    iget-wide v5, p0, Lcom/android/server/usage/StorageStatsService$H;->mTotalBytes:J

    const-wide/16 v7, 0x2

    mul-long/2addr v5, v7

    div-long/2addr v5, v9

    .line 717
    :goto_c3
    monitor-exit p1
    :try_end_c4
    .catchall {:try_start_9d .. :try_end_c4} :catchall_bb

    cmp-long p1, v3, v5

    if-lez p1, :cond_dc

    .line 719
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 720
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 721
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-virtual {p1}, Lcom/android/server/usage/StorageStatsService;->notifySignificantDelta()V

    .line 723
    :cond_dc
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 717
    :goto_e0
    :try_start_e0
    monitor-exit p1
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_bb

    throw p0

    :pswitch_data_e2
    .packed-switch 0x64
        :pswitch_7c
        :pswitch_33
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method

.method public final recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V
    .registers 2

    .line 770
    invoke-virtual {p1}, Lcom/android/server/storage/CacheQuotaStrategy;->recalculateQuotas()V

    return-void
.end method
