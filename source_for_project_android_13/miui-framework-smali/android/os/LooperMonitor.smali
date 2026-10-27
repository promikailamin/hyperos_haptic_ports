.class public Landroid/os/LooperMonitor;
.super Ljava/lang/Object;
.source "LooperMonitor.java"

# interfaces
.implements Landroid/os/ILooperMonitorable;


# instance fields
.field private blacklist mEnableMonitor:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enableMonitor(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 18
    iput-boolean p1, p0, Landroid/os/LooperMonitor;->mEnableMonitor:Z

    .line 19
    if-eqz p1, :cond_1e

    .line 21
    :try_start_4
    const-string v0, "getQueue"

    const-class v1, Landroid/os/MessageQueue;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v3}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue;

    .line 22
    .local v0, "queue":Landroid/os/MessageQueue;
    if-eqz v0, :cond_1c

    .line 23
    const-string v1, "enableMonitor"

    const-class v3, Ljava/lang/Void;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_1d

    .line 26
    .end local v0    # "queue":Landroid/os/MessageQueue;
    :cond_1c
    goto :goto_1e

    .line 25
    :catch_1d
    move-exception v0

    .line 28
    :cond_1e
    :goto_1e
    return-void
.end method

.method public blacklist isMonitorLooper()Z
    .registers 2

    .line 14
    iget-boolean v0, p0, Landroid/os/LooperMonitor;->mEnableMonitor:Z

    return v0
.end method
