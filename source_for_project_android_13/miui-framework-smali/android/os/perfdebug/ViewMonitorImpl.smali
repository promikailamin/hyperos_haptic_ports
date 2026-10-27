.class public Landroid/os/perfdebug/ViewMonitorImpl;
.super Landroid/os/perfdebug/ViewMonitor;
.source "ViewMonitorImpl.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ViewMonitor"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/os/perfdebug/ViewMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist markDrawBegin(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 24
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceViewDraw()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 25
    const-wide/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draw:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 27
    :cond_26
    return-void
.end method

.method public blacklist markDrawEnd()V
    .registers 3

    .line 34
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceViewDraw()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 35
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 37
    :cond_b
    return-void
.end method

.method public blacklist markLayoutBegin(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 70
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceViewLayout()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 71
    const-wide/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 73
    :cond_26
    return-void
.end method

.method public blacklist markLayoutEnd()V
    .registers 3

    .line 80
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceViewLayout()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 81
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 83
    :cond_b
    return-void
.end method

.method public blacklist markMeasureBegin(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 93
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceViewMeasure()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 94
    const-wide/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "measure : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 96
    :cond_26
    return-void
.end method

.method public blacklist markMeasureEnd()V
    .registers 3

    .line 103
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceViewMeasure()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 104
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 106
    :cond_b
    return-void
.end method

.method public blacklist markOnDrawBegin(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 47
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceViewDraw()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 48
    const-wide/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDraw:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 50
    :cond_26
    return-void
.end method

.method public blacklist markOnDrawEnd()V
    .registers 3

    .line 57
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceViewDraw()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 58
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 60
    :cond_b
    return-void
.end method
