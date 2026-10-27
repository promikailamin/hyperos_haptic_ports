.class public Landroid/os/statistics/LooperMessageSuperviser;
.super Ljava/lang/Object;
.source "LooperMessageSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;,
        Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist beginLooperMessage(Landroid/os/ILooperMonitorable;Landroid/os/Message;)V
    .registers 3
    .param p0, "looper"    # Landroid/os/ILooperMonitorable;
    .param p1, "msg"    # Landroid/os/Message;

    .line 39
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isPerfEventReportable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 40
    return-void

    .line 43
    :cond_7
    invoke-interface {p0}, Landroid/os/ILooperMonitorable;->isMonitorLooper()Z

    move-result v0

    if-nez v0, :cond_e

    .line 44
    return-void

    .line 47
    :cond_e
    invoke-static {}, Landroid/os/statistics/LooperMessageSuperviser;->nativeBeginLooperMessage()V

    .line 48
    return-void
.end method

.method public static blacklist endLooperMessage(Landroid/os/ILooperMonitorable;Landroid/os/Message;J)V
    .registers 9
    .param p0, "looper"    # Landroid/os/ILooperMonitorable;
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "msgPlanTimeMillis"    # J

    .line 51
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isPerfEventReportable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 52
    return-void

    .line 55
    :cond_7
    invoke-interface {p0}, Landroid/os/ILooperMonitorable;->isMonitorLooper()Z

    move-result v0

    if-nez v0, :cond_e

    .line 56
    return-void

    .line 59
    :cond_e
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    .line 60
    .local v0, "messageTarget":Landroid/os/Handler;
    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v1

    .line 61
    .local v1, "messageCallback":Ljava/lang/Runnable;
    const/4 v2, 0x0

    if-nez v0, :cond_1b

    move-object v3, v2

    goto :goto_23

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_23
    iget v4, p1, Landroid/os/Message;->what:I

    .line 62
    if-nez v1, :cond_28

    goto :goto_30

    :cond_28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 61
    :goto_30
    invoke-static {v3, v4, v2, p2, p3}, Landroid/os/statistics/LooperMessageSuperviser;->nativeEndLooperMessage(Ljava/lang/String;ILjava/lang/String;J)V

    .line 63
    return-void
.end method

.method private static native blacklist nativeBeginLooperMessage()V
.end method

.method private static native blacklist nativeEndLooperMessage(Ljava/lang/String;ILjava/lang/String;J)V
.end method
