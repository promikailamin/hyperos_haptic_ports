.class public Lcom/android/server/am/OomAdjusterStub;
.super Ljava/lang/Object;
.source "OomAdjusterStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/OomAdjusterStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/am/OomAdjusterStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OomAdjusterStub;

    return-object v0
.end method


# virtual methods
.method public applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 18
    return-void
.end method

.method public compactBackgroundProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 26
    return-void
.end method

.method public computeBindServiceAdj(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ConnectionRecord;)I
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "adj"    # I
    .param p3, "connectService"    # Lcom/android/server/am/ConnectionRecord;

    .line 21
    iget-object v0, p3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 22
    .local v0, "cstate":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "topApp"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "adj"    # I
    .param p4, "procState"    # I
    .param p5, "cycleReEval"    # Z

    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public isSetUntrustedBgGroup(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public resetProperThreadPriority(Lcom/android/server/am/ProcessRecord;II)V
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "tid"    # I
    .param p3, "prio"    # I

    .line 45
    if-eqz p2, :cond_5

    .line 46
    invoke-static {p2, p3}, Landroid/os/Process;->setThreadPriority(II)V

    .line 48
    :cond_5
    return-void
.end method

.method public setProperThreadPriority(Lcom/android/server/am/ProcessRecord;III)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"    # I
    .param p3, "renderThreadTid"    # I
    .param p4, "prio"    # I

    .line 34
    invoke-static {p2, p4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 35
    if-eqz p3, :cond_a

    .line 37
    :try_start_5
    invoke-static {p3, p4}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_8} :catch_9

    .line 40
    goto :goto_a

    .line 38
    :catch_9
    move-exception v0

    .line 42
    :cond_a
    :goto_a
    return-void
.end method

.method public shouldSkipDueToBind(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "client"    # Lcom/android/server/am/ProcessRecord;

    .line 51
    const/4 v0, 0x0

    return v0
.end method
