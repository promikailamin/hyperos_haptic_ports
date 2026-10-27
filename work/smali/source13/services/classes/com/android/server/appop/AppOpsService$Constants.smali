.class final Lcom/android/server/appop/AppOpsService$Constants;
.super Landroid/database/ContentObserver;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Constants"
.end annotation


# instance fields
.field public BG_STATE_SETTLE_TIME:J

.field public FG_SERVICE_STATE_SETTLE_TIME:J

.field public TOP_STATE_SETTLE_TIME:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/os/Handler;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 496
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Constants;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 497
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 493
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 498
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService$Constants;->updateConstants()V

    .line 499
    return-void
.end method

.method private updateConstants()V
    .registers 7

    .line 515
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Constants;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_b

    const-string v1, "app_ops_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 516
    :cond_b
    const-string v0, ""

    :goto_d
    nop

    .line 518
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Constants;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1

    .line 520
    :try_start_11
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v2, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_16} :catch_19
    .catchall {:try_start_11 .. :try_end_16} :catchall_17

    .line 525
    goto :goto_21

    .line 532
    :catchall_17
    move-exception v2

    goto :goto_46

    .line 521
    :catch_19
    move-exception v2

    .line 524
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1a
    const-string v3, "AppOps"

    const-string v4, "Bad app ops settings"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_21
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "top_state_settle_time"

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    .line 528
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "fg_service_state_settle_time"

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    .line 530
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "bg_state_settle_time"

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 532
    monitor-exit v1

    .line 533
    return-void

    .line 532
    :goto_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_1a .. :try_end_47} :catchall_17

    throw v2
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 536
    const-string v0, "  Settings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "top_state_settle_time"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 539
    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 540
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 541
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fg_service_state_settle_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 542
    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 543
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 544
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "bg_state_settle_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 545
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 546
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 547
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 511
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService$Constants;->updateConstants()V

    .line 512
    return-void
.end method

.method public startMonitoring(Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 502
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 503
    nop

    .line 504
    const-string v0, "app_ops_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 503
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 506
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService$Constants;->updateConstants()V

    .line 507
    return-void
.end method
