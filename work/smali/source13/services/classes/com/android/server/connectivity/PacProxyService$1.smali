.class Lcom/android/server/connectivity/PacProxyService$1;
.super Ljava/lang/Object;
.source "PacProxyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PacProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacProxyService;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacProxyService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/PacProxyService;

    .line 120
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 125
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmPacUrl(Lcom/android/server/connectivity/PacProxyService;)Landroid/net/Uri;

    move-result-object v0

    .line 126
    .local v0, "pacUrl":Landroid/net/Uri;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    .line 127
    :cond_f
    const/16 v1, -0xbb

    invoke-static {v1}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v1

    .line 130
    .local v1, "oldTag":I
    :try_start_15
    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$smget(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_1f
    .catchall {:try_start_15 .. :try_end_19} :catchall_1d

    .line 135
    .local v2, "file":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 136
    goto :goto_3e

    .line 135
    .end local v2    # "file":Ljava/lang/String;
    :catchall_1d
    move-exception v2

    goto :goto_73

    .line 131
    :catch_1f
    move-exception v2

    .line 132
    .local v2, "ioe":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 133
    .local v3, "file":Ljava/lang/String;
    :try_start_21
    const-string v4, "PacProxyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load PAC file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_1d

    .line 135
    nop

    .end local v2    # "ioe":Ljava/io/IOException;
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 136
    move-object v2, v3

    .line 137
    .end local v3    # "file":Ljava/lang/String;
    .local v2, "file":Ljava/lang/String;
    :goto_3e
    if-eqz v2, :cond_6d

    .line 138
    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v3}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmProxyLock(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 139
    :try_start_47
    iget-object v4, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v4}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmCurrentPac(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 140
    iget-object v4, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v4, v2}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$msetCurrentProxyScript(Lcom/android/server/connectivity/PacProxyService;Ljava/lang/String;)V

    .line 142
    :cond_58
    monitor-exit v3
    :try_end_59
    .catchall {:try_start_47 .. :try_end_59} :catchall_6a

    .line 143
    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fputmHasDownloaded(Lcom/android/server/connectivity/PacProxyService;Z)V

    .line 144
    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v3}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$msendProxyIfNeeded(Lcom/android/server/connectivity/PacProxyService;)V

    .line 145
    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v3}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$mlongSchedule(Lcom/android/server/connectivity/PacProxyService;)V

    goto :goto_72

    .line 142
    :catchall_6a
    move-exception v4

    :try_start_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v4

    .line 147
    :cond_6d
    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v3}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$mreschedule(Lcom/android/server/connectivity/PacProxyService;)V

    .line 149
    :goto_72
    return-void

    .line 135
    .end local v2    # "file":Ljava/lang/String;
    :goto_73
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 136
    throw v2
.end method
