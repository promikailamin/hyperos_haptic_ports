.class public Landroid/os/perfdebug/ServiceMonitorImpl;
.super Landroid/os/perfdebug/ServiceMonitor;
.source "ServiceMonitorImpl.java"


# static fields
.field public static final blacklist SERVICE_START_TYPE_BIND:I = 0x2

.field public static final blacklist SERVICE_START_TYPE_CREATE:I = 0x1

.field public static final blacklist SERVICE_START_TYPE_UNKNOW:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "ServiceMonitor"


# instance fields
.field private blacklist mCreateServiceBeginTime:J

.field private blacklist mServiceStartType:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Landroid/os/perfdebug/ServiceMonitor;-><init>()V

    return-void
.end method

.method private blacklist getForegroundServiceType(I)Ljava/lang/String;
    .registers 3
    .param p1, "foregroundServiceType"    # I

    .line 113
    sparse-switch p1, :sswitch_data_20

    .line 139
    const-string v0, "unknown"

    .local v0, "typeStr":Ljava/lang/String;
    goto :goto_1e

    .line 133
    .end local v0    # "typeStr":Ljava/lang/String;
    :sswitch_6
    const-string v0, "media-projection"

    .line 134
    .restart local v0    # "typeStr":Ljava/lang/String;
    goto :goto_1e

    .line 130
    .end local v0    # "typeStr":Ljava/lang/String;
    :sswitch_9
    const-string v0, "connected-device"

    .line 131
    .restart local v0    # "typeStr":Ljava/lang/String;
    goto :goto_1e

    .line 127
    .end local v0    # "typeStr":Ljava/lang/String;
    :sswitch_c
    const-string v0, "location"

    .line 128
    .restart local v0    # "typeStr":Ljava/lang/String;
    goto :goto_1e

    .line 124
    .end local v0    # "typeStr":Ljava/lang/String;
    :sswitch_f
    const-string v0, "phone-call"

    .line 125
    .restart local v0    # "typeStr":Ljava/lang/String;
    goto :goto_1e

    .line 121
    .end local v0    # "typeStr":Ljava/lang/String;
    :sswitch_12
    const-string v0, "media-playback"

    .line 122
    .restart local v0    # "typeStr":Ljava/lang/String;
    goto :goto_1e

    .line 118
    .end local v0    # "typeStr":Ljava/lang/String;
    :sswitch_15
    const-string v0, "data-sync"

    .line 119
    .restart local v0    # "typeStr":Ljava/lang/String;
    goto :goto_1e

    .line 115
    .end local v0    # "typeStr":Ljava/lang/String;
    :sswitch_18
    const-string v0, "none"

    .line 116
    .restart local v0    # "typeStr":Ljava/lang/String;
    goto :goto_1e

    .line 136
    .end local v0    # "typeStr":Ljava/lang/String;
    :sswitch_1b
    const-string v0, "manifest"

    .line 137
    .restart local v0    # "typeStr":Ljava/lang/String;
    nop

    .line 141
    :goto_1e
    return-object v0

    nop

    :sswitch_data_20
    .sparse-switch
        -0x1 -> :sswitch_1b
        0x0 -> :sswitch_18
        0x1 -> :sswitch_15
        0x2 -> :sswitch_12
        0x4 -> :sswitch_f
        0x8 -> :sswitch_c
        0x10 -> :sswitch_9
        0x20 -> :sswitch_6
    .end sparse-switch
.end method

.method private blacklist getServiceStartType(I)Ljava/lang/String;
    .registers 3
    .param p1, "startType"    # I

    .line 97
    packed-switch p1, :pswitch_data_e

    .line 105
    const-string v0, " unknown"

    .local v0, "result":Ljava/lang/String;
    goto :goto_c

    .line 102
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_6
    const-string v0, " bindService"

    .line 103
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_c

    .line 99
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_9
    const-string v0, " createService"

    .line 100
    .restart local v0    # "result":Ljava/lang/String;
    nop

    .line 108
    :goto_c
    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public blacklist monitorCreateBegin(I)V
    .registers 4
    .param p1, "serviceStartType"    # I

    .line 33
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ServiceMonitorImpl;->mCreateServiceBeginTime:J

    .line 35
    iput p1, p0, Landroid/os/perfdebug/ServiceMonitorImpl;->mServiceStartType:I

    .line 37
    :cond_e
    return-void
.end method

.method public blacklist monitorCreateEnd(Landroid/content/pm/ServiceInfo;ZLjava/lang/String;Ljava/lang/String;II)V
    .registers 20
    .param p1, "info"    # Landroid/content/pm/ServiceInfo;
    .param p2, "isForeground"    # Z
    .param p3, "callerPackage"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I

    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v3

    if-eqz v3, :cond_109

    .line 46
    if-eqz p2, :cond_10

    sget v3, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_SERVICE_FG_CREATE_MS:I

    int-to-long v3, v3

    goto :goto_13

    .line 47
    :cond_10
    sget v3, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_SERVICE_BG_CREATE_MS:I

    int-to-long v3, v3

    :goto_13
    nop

    .line 48
    .local v3, "serviceTimeout":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Landroid/os/perfdebug/ServiceMonitorImpl;->mCreateServiceBeginTime:J

    sub-long/2addr v5, v7

    .line 49
    .local v5, "monitorTime":J
    cmp-long v7, v5, v3

    if-gtz v7, :cond_20

    .line 50
    return-void

    .line 52
    :cond_20
    sget v7, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_VERSION:I

    const/4 v8, 0x3

    const-string v9, "foreground"

    const-string v10, "background"

    if-ne v7, v8, :cond_9a

    .line 53
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const v8, 0x35c37294

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget v11, v0, Landroid/os/perfdebug/ServiceMonitorImpl;->mServiceStartType:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-wide v11, v0, Landroid/os/perfdebug/ServiceMonitorImpl;->mCreateServiceBeginTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    if-eqz p2, :cond_6d

    goto :goto_6e

    :cond_6d
    move-object v9, v10

    :goto_6e
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    if-eqz v1, :cond_94

    .line 64
    iget-object v9, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v9, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getForegroundServiceType()I

    move-result v9

    invoke-direct {p0, v9}, Landroid/os/perfdebug/ServiceMonitorImpl;->getForegroundServiceType(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget v9, v1, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_94
    invoke-static {v8, v7}, Landroid/os/perfdebug/PerfJsonEventUtils;->writeEvent(ILjava/util/List;)V

    .line 70
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v8, p3

    goto :goto_10b

    .line 71
    :cond_9a
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x100

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v8, "PerfMonitor"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v8, v0, Landroid/os/perfdebug/ServiceMonitorImpl;->mServiceStartType:I

    invoke-direct {p0, v8}, Landroid/os/perfdebug/ServiceMonitorImpl;->getServiceStartType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v8, " : time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    const-string v8, "ms type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    if-eqz p2, :cond_bf

    goto :goto_c0

    :cond_bf
    move-object v9, v10

    :goto_c0
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v8, " processName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v8, " callerPackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    move-object/from16 v8, p3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    if-eqz v1, :cond_ff

    .line 83
    const-string v9, " serviceName="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v9, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v9, " foregroundServiceType="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getForegroundServiceType()I

    move-result v9

    invoke-direct {p0, v9}, Landroid/os/perfdebug/ServiceMonitorImpl;->getForegroundServiceType(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v9, " flags=0x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v9, v1, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_ff
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ServiceMonitor"

    invoke-static {v10, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10b

    .line 45
    .end local v3    # "serviceTimeout":J
    .end local v5    # "monitorTime":J
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_109
    move-object/from16 v8, p3

    .line 93
    :goto_10b
    return-void
.end method
