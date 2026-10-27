.class public Landroid/os/perfdebug/BroadcastMonitorImpl;
.super Landroid/os/perfdebug/BroadcastMonitor;
.source "BroadcastMonitorImpl.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BroadcastMonitor"


# instance fields
.field private blacklist mMonitorBeginTime:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/os/perfdebug/BroadcastMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist monitorReceiveBegin()V
    .registers 3

    .line 30
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/BroadcastMonitorImpl;->mMonitorBeginTime:J

    .line 33
    :cond_c
    return-void
.end method

.method public blacklist monitorReceiveEnd(ZLandroid/content/Intent;Landroid/content/BroadcastReceiver;)V
    .registers 15
    .param p1, "isOrder"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 44
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 46
    .local v0, "isForeground":Z
    :goto_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/os/perfdebug/BroadcastMonitorImpl;->mMonitorBeginTime:J

    sub-long/2addr v1, v3

    .line 47
    .local v1, "monitorTime":J
    if-eqz v0, :cond_1e

    const-wide/16 v3, 0x1388

    goto :goto_21

    .line 48
    :cond_1e
    const-wide/32 v3, 0x9c40

    :goto_21
    nop

    .line 49
    .local v3, "timeOut":J
    cmp-long v5, v1, v3

    if-gtz v5, :cond_27

    .line 50
    return-void

    .line 53
    :cond_27
    sget v5, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_VERSION:I

    const/4 v6, 0x3

    const-string v7, "foreground"

    const-string v8, "background"

    if-ne v5, v6, :cond_8b

    .line 54
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const v6, 0x35c37296

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    if-eqz v0, :cond_6a

    goto :goto_6b

    :cond_6a
    move-object v7, v8

    :goto_6b
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {v6, v5}, Landroid/os/perfdebug/PerfJsonEventUtils;->writeEvent(ILjava/util/List;)V

    .line 65
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_d8

    .line 66
    :cond_8b
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 67
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v6, "PerfMonitor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v6, " createBroadcast : time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    const-string v6, "ms type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    if-eqz v0, :cond_a7

    goto :goto_a8

    :cond_a7
    move-object v7, v8

    :goto_a8
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v6, " isOrder="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    const-string v6, " broadcast="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BroadcastMonitor"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v0    # "isForeground":Z
    .end local v1    # "monitorTime":J
    .end local v3    # "timeOut":J
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_d8
    :goto_d8
    return-void
.end method
