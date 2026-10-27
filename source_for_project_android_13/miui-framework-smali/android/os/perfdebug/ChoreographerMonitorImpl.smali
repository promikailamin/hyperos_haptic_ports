.class public Landroid/os/perfdebug/ChoreographerMonitorImpl;
.super Landroid/os/perfdebug/ChoreographerMonitor;
.source "ChoreographerMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;
    }
.end annotation


# static fields
.field private static final blacklist CALLBACK_TRACE_TITLES:[Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "ChoreographerMonitor"


# instance fields
.field private blacklist mExecuteCallbacksInLastFrame:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMonitorBeginTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 30
    const-string v0, "input"

    const-string v1, "animation"

    const-string v2, "insets_animation"

    const-string v3, "traversal"

    const-string v4, "commit"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/perfdebug/ChoreographerMonitorImpl;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Landroid/os/perfdebug/ChoreographerMonitor;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/perfdebug/ChoreographerMonitorImpl;->mExecuteCallbacksInLastFrame:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist monitorCallbackExecuteBegin(ILjava/lang/Object;J)V
    .registers 10
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "dueTime"    # J

    .line 113
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceViewDraw()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 114
    const-wide/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/perfdebug/ChoreographerMonitorImpl;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 115
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 119
    :cond_2e
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p3

    .line 121
    .local v0, "latencyMillis":J
    iget-object v2, p0, Landroid/os/perfdebug/ChoreographerMonitorImpl;->mExecuteCallbacksInLastFrame:Ljava/util/ArrayList;

    new-instance v3, Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;

    .line 122
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, v0, v1}, Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;-><init>(ILjava/lang/String;J)V

    .line 121
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v0    # "latencyMillis":J
    :cond_4b
    return-void
.end method

.method public blacklist monitorCallbackExecuteEnd()V
    .registers 3

    .line 131
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceViewDraw()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 132
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 134
    :cond_b
    return-void
.end method

.method public blacklist monitorDoFrameBegin()V
    .registers 3

    .line 46
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ChoreographerMonitorImpl;->mMonitorBeginTime:J

    .line 49
    :cond_c
    return-void
.end method

.method public blacklist monitorDoFrameEnd()V
    .registers 14

    .line 56
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/perfdebug/ChoreographerMonitorImpl;->mMonitorBeginTime:J

    sub-long/2addr v0, v2

    .line 58
    .local v0, "monitorTime":J
    sget v2, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_SLOW_DOFRAME_MS:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_110

    .line 59
    sget v2, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_VERSION:I

    const/4 v3, 0x3

    const-string v4, "ms)"

    const-string v5, " latency="

    const-string v6, " action="

    const-string v7, " (title="

    const/16 v8, 0x100

    if-ne v2, v3, :cond_b3

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const v3, 0x35c3716c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-static {}, Landroid/os/perfdebug/VsyncFrameImpl;->getInstance()Landroid/os/perfdebug/VsyncFrameImpl;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/perfdebug/VsyncFrameImpl;->getCurFrame()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v9

    .line 69
    .local v8, "sb":Ljava/lang/StringBuilder;
    iget-object v9, p0, Landroid/os/perfdebug/ChoreographerMonitorImpl;->mExecuteCallbacksInLastFrame:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;

    .line 70
    .local v10, "callback":Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    sget-object v11, Landroid/os/perfdebug/ChoreographerMonitorImpl;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    iget v12, v10, Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;->callbackType:I

    aget-object v11, v11, v12

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v11, v10, Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;->action:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-wide v11, v10, Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;->latencyMillis:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .end local v10    # "callback":Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;
    goto :goto_7c

    .line 78
    :cond_a8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {v3, v2}, Landroid/os/perfdebug/PerfJsonEventUtils;->writeEvent(ILjava/util/List;)V

    .line 80
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    goto :goto_110

    .line 81
    :cond_b3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 82
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "PerfMonitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v3, " choreDoFrame : time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    const-string v3, "ms vsyncFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {}, Landroid/os/perfdebug/VsyncFrameImpl;->getInstance()Landroid/os/perfdebug/VsyncFrameImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/perfdebug/VsyncFrameImpl;->getCurFrame()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    iget-object v3, p0, Landroid/os/perfdebug/ChoreographerMonitorImpl;->mExecuteCallbacksInLastFrame:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_db
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_107

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;

    .line 88
    .local v8, "callback":Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    sget-object v9, Landroid/os/perfdebug/ChoreographerMonitorImpl;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    iget v10, v8, Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;->callbackType:I

    aget-object v9, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v9, v8, Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;->action:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-wide v9, v8, Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;->latencyMillis:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .end local v8    # "callback":Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;
    goto :goto_db

    .line 96
    :cond_107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChoreographerMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_110
    :goto_110
    iget-object v2, p0, Landroid/os/perfdebug/ChoreographerMonitorImpl;->mExecuteCallbacksInLastFrame:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 101
    .end local v0    # "monitorTime":J
    :cond_115
    return-void
.end method
