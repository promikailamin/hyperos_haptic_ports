.class public Lcom/android/server/connectivity/PacProxyService$1;
.super Ljava/lang/Object;
.source "PacProxyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/PacProxyService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/PacProxyService;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmPacUrl(Lcom/android/server/connectivity/PacProxyService;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_70

    :cond_f
    const/16 v1, -0xbb

    .line 128
    invoke-static {v1}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v1

    .line 131
    :try_start_15
    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$smget(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_1f
    .catchall {:try_start_15 .. :try_end_19} :catchall_1d

    .line 136
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto :goto_3a

    :catchall_1d
    move-exception p0

    goto :goto_71

    :catch_1f
    move-exception v0

    .line 134
    :try_start_20
    const-string v2, "PacProxyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load PAC file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_1d

    .line 136
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 v0, 0x0

    :goto_3a
    if-eqz v0, :cond_6b

    .line 139
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v1}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmProxyLock(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 140
    :try_start_43
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v2}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmCurrentPac(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 141
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v2, v0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$msetCurrentProxyScript(Lcom/android/server/connectivity/PacProxyService;Ljava/lang/String;)V

    goto :goto_57

    :catchall_55
    move-exception p0

    goto :goto_69

    .line 143
    :cond_57
    :goto_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_43 .. :try_end_58} :catchall_55

    .line 144
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fputmHasDownloaded(Lcom/android/server/connectivity/PacProxyService;Z)V

    .line 145
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$msendProxyIfNeeded(Lcom/android/server/connectivity/PacProxyService;)V

    .line 146
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$mlongSchedule(Lcom/android/server/connectivity/PacProxyService;)V

    goto :goto_70

    .line 143
    :goto_69
    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_55

    throw p0

    .line 148
    :cond_6b
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$mreschedule(Lcom/android/server/connectivity/PacProxyService;)V

    :goto_70
    return-void

    .line 136
    :goto_71
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 137
    throw p0
.end method
