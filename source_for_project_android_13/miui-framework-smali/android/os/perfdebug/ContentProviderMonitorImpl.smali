.class public Landroid/os/perfdebug/ContentProviderMonitorImpl;
.super Landroid/os/perfdebug/ContentProviderMonitor;
.source "ContentProviderMonitorImpl.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ContentProviderMonitor"


# instance fields
.field private blacklist mMonitorBeginTime:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/os/perfdebug/ContentProviderMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist monitorCreateBegin()V
    .registers 3

    .line 30
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ContentProviderMonitorImpl;->mMonitorBeginTime:J

    .line 33
    :cond_c
    return-void
.end method

.method public blacklist monitorCreateEnd(Landroid/content/pm/ProviderInfo;)V
    .registers 10
    .param p1, "info"    # Landroid/content/pm/ProviderInfo;

    .line 40
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/perfdebug/ContentProviderMonitorImpl;->mMonitorBeginTime:J

    sub-long/2addr v0, v2

    .line 42
    .local v0, "monitorTime":J
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gtz v2, :cond_14

    .line 43
    return-void

    .line 45
    :cond_14
    sget v2, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_VERSION:I

    const/4 v3, 0x3

    const-string v4, "true"

    const-string v5, "false"

    if-ne v2, v3, :cond_76

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const v3, 0x35c37297

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    if-eqz p1, :cond_72

    .line 53
    iget-object v6, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v6, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget v6, p1, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-boolean v6, p1, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v6, :cond_6e

    goto :goto_6f

    :cond_6e
    move-object v4, v5

    :goto_6f
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_72
    invoke-static {v3, v2}, Landroid/os/perfdebug/PerfJsonEventUtils;->writeEvent(ILjava/util/List;)V

    .line 59
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_ca

    .line 60
    :cond_76
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 61
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "PerfMonitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v3, " createProvider : time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    if-eqz p1, :cond_c1

    .line 66
    const-string v3, " authority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v3, " className="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v3, " flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v3, p1, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v3, " multiprocess="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-boolean v3, p1, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v3, :cond_bd

    goto :goto_be

    :cond_bd
    move-object v4, v5

    :goto_be
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_c1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContentProviderMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v0    # "monitorTime":J
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_ca
    :goto_ca
    return-void
.end method
