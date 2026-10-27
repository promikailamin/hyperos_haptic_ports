.class Lcom/android/server/usage/StorageStatsService$H;
.super Landroid/os/Handler;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/StorageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MINIMUM_CHANGE_DELTA_PERCENT_HIGH:J = 0x5L

.field private static final MINIMUM_CHANGE_DELTA_PERCENT_LOW:J = 0x2L

.field private static final MSG_CHECK_STORAGE_DELTA:I = 0x64

.field private static final MSG_LOAD_CACHED_QUOTAS_FROM_FILE:I = 0x65

.field private static final MSG_PACKAGE_REMOVED:I = 0x67

.field private static final MSG_RECALCULATE_QUOTAS:I = 0x66

.field private static final UNSET:I = -0x1


# instance fields
.field private mPreviousBytes:J

.field private final mStats:Landroid/os/StatFs;

.field private mTotalBytes:J

.field final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/StorageStatsService;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .line 590
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 591
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 593
    new-instance p1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    .line 594
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 595
    invoke-virtual {p1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mTotalBytes:J

    .line 596
    return-void
.end method

.method private getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;
    .registers 6

    .line 678
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 679
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 680
    .local v0, "usageStatsManager":Landroid/app/usage/UsageStatsManagerInternal;
    new-instance v1, Lcom/android/server/storage/CacheQuotaStrategy;

    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/StorageStatsService;->-$$Nest$fgetmContext(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v3}, Lcom/android/server/usage/StorageStatsService;->-$$Nest$fgetmInstaller(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/pm/Installer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v4}, Lcom/android/server/usage/StorageStatsService;->-$$Nest$fgetmCacheQuotas(Lcom/android/server/usage/StorageStatsService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/server/storage/CacheQuotaStrategy;-><init>(Landroid/content/Context;Landroid/app/usage/UsageStatsManagerInternal;Lcom/android/server/pm/Installer;Landroid/util/ArrayMap;)V

    return-object v1
.end method

.method private recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V
    .registers 2
    .param p1, "strategy"    # Lcom/android/server/storage/CacheQuotaStrategy;

    .line 674
    invoke-virtual {p1}, Lcom/android/server/storage/CacheQuotaStrategy;->recalculateQuotas()V

    .line 675
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 603
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->-$$Nest$fgetmContext(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->isCacheQuotaCalculationsEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 604
    return-void

    .line 607
    :cond_11
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x7530

    const/16 v3, 0x64

    const-wide/32 v4, 0x2255100

    const/16 v6, 0x66

    packed-switch v0, :pswitch_data_e4

    .line 665
    return-void

    .line 658
    :pswitch_20
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 659
    goto/16 :goto_df

    .line 652
    :pswitch_29
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 653
    invoke-virtual {p0, v6, v4, v5}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 654
    goto/16 :goto_df

    .line 631
    :pswitch_35
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object v0

    .line 632
    .local v0, "strategy":Lcom/android/server/storage/CacheQuotaStrategy;
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 634
    :try_start_3d
    invoke-virtual {v0}, Lcom/android/server/storage/CacheQuotaStrategy;->setupQuotasFromFile()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_43} :catch_4d
    .catch Ljava/lang/IllegalStateException; {:try_start_3d .. :try_end_43} :catch_44

    goto :goto_55

    .line 637
    :catch_44
    move-exception v7

    .line 638
    .local v7, "e":Ljava/lang/IllegalStateException;
    const-string v8, "StorageStatsService"

    const-string v9, "Cache quota XML file is malformed?"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    .line 635
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catch_4d
    move-exception v7

    .line 636
    .local v7, "e":Ljava/io/IOException;
    const-string v8, "StorageStatsService"

    const-string v9, "An error occurred while reading the cache quota file."

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 639
    .end local v7    # "e":Ljava/io/IOException;
    :goto_55
    nop

    .line 642
    :goto_56
    iget-wide v7, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_76

    .line 643
    iget-object v7, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 644
    iget-object v7, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 645
    invoke-direct {p0, v0}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 647
    :cond_76
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 648
    invoke-virtual {p0, v6, v4, v5}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 649
    goto :goto_df

    .line 609
    .end local v0    # "strategy":Lcom/android/server/storage/CacheQuotaStrategy;
    :pswitch_7d
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 610
    iget-wide v4, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 612
    .local v4, "bytesDelta":J
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->-$$Nest$fgetmLock(Lcom/android/server/usage/StorageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 613
    :try_start_9e
    iget-object v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/usage/StorageStatsService$H;->mTotalBytes:J

    iget-object v10, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v10}, Lcom/android/server/usage/StorageStatsService;->-$$Nest$fgetmStorageThresholdPercentHigh(Lcom/android/server/usage/StorageStatsService;)I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-lez v6, :cond_bc

    .line 615
    iget-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mTotalBytes:J

    const-wide/16 v8, 0x5

    mul-long/2addr v6, v8

    div-long/2addr v6, v10

    .local v6, "bytesDeltaThreshold":J
    goto :goto_c2

    .line 618
    .end local v6    # "bytesDeltaThreshold":J
    :cond_bc
    iget-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mTotalBytes:J

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    div-long/2addr v6, v10

    .line 621
    .restart local v6    # "bytesDeltaThreshold":J
    :goto_c2
    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_9e .. :try_end_c3} :catchall_e0

    .line 622
    cmp-long v0, v4, v6

    if-lez v0, :cond_db

    .line 623
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 624
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 625
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/StorageStatsService;->notifySignificantDelta()V

    .line 627
    :cond_db
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 628
    nop

    .line 667
    .end local v4    # "bytesDelta":J
    .end local v6    # "bytesDeltaThreshold":J
    :goto_df
    return-void

    .line 621
    .restart local v4    # "bytesDelta":J
    :catchall_e0
    move-exception v1

    :try_start_e1
    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e0

    throw v1

    nop

    :pswitch_data_e4
    .packed-switch 0x64
        :pswitch_7d
        :pswitch_35
        :pswitch_29
        :pswitch_20
    .end packed-switch
.end method
