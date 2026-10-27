.class Lcom/android/internal/os/BatteryStatsImpl$4;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic blacklist val$initialTimeMs:J

.field final synthetic blacklist val$memStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/ByteArrayOutputStream;J)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 13031
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$memStream:Ljava/io/ByteArrayOutputStream;

    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$initialTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 10

    .line 13034
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 13035
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_41

    .line 13036
    .local v1, "startTimeMs2":J
    const/4 v3, 0x0

    .line 13038
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_a
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 13039
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$memStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 13040
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 13041
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 13042
    const-string v4, "batterystats-daily"

    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$initialTimeMs:J

    .line 13044
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    add-long/2addr v5, v7

    sub-long/2addr v5, v1

    .line 13042
    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2f} :catch_30
    .catchall {:try_start_a .. :try_end_2f} :catchall_41

    .line 13049
    goto :goto_3f

    .line 13045
    :catch_30
    move-exception v4

    .line 13046
    .local v4, "e":Ljava/io/IOException;
    :try_start_31
    const-string v5, "BatteryStats"

    const-string v6, "Error writing battery daily items"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13048
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 13050
    .end local v1    # "startTimeMs2":J
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3f
    monitor-exit v0

    .line 13051
    return-void

    .line 13050
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_31 .. :try_end_43} :catchall_41

    throw v1
.end method
