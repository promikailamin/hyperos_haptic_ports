.class public Lcom/android/server/lineage/health/ccprovider/Deadline;
.super Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;
.source "Deadline.java"


# instance fields
.field public mSavedTargetTime:J


# direct methods
.method public constructor <init>(Lvendor/lineage/health/IChargingControl;Landroid/content/Context;)V
    .registers 3

    .line 25
    invoke-direct {p0, p2, p1}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;-><init>(Landroid/content/Context;Lvendor/lineage/health/IChargingControl;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSavedTargetTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/lineage/health/ccprovider/Deadline;->mSavedTargetTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isChargingControlModeSupported(I)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :cond_8
    :goto_8
    return p0
.end method

.method public isSupported()Z
    .registers 2

    const/4 v0, 0x4

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->isHALModeSupported(I)Z

    move-result p0

    return p0
.end method

.method public onBatteryChanged(FJJI)Z
    .registers 11

    .line 31
    iget-wide p1, p0, Lcom/android/server/lineage/health/ccprovider/Deadline;->mSavedTargetTime:J

    cmp-long p1, p4, p1

    const/4 p2, 0x1

    if-nez p1, :cond_8

    return p2

    .line 35
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p4, v0

    const-wide/16 v2, 0x3e8

    .line 36
    div-long/2addr v0, v2

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Setting charge deadline: Deadline (seconds): "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "LineageHealth"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :try_start_27
    iget-object p1, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mChargingControl:Lvendor/lineage/health/IChargingControl;

    invoke-interface {p1, v0, v1}, Lvendor/lineage/health/IChargingControl;->setChargingDeadline(J)V

    .line 42
    iput-wide p4, p0, Lcom/android/server/lineage/health/ccprovider/Deadline;->mSavedTargetTime:J
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2e} :catch_2f

    return p2

    :catch_2f
    move-exception p0

    .line 44
    const-string p1, "Failed to set charging deadline"

    invoke-static {p3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onDisable()V
    .registers 1

    .line 58
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ccprovider/Deadline;->onReset()V

    return-void
.end method

.method public onEnabled()V
    .registers 1

    .line 53
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ccprovider/Deadline;->onReset()V

    return-void
.end method

.method public onReset()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 63
    iput-wide v0, p0, Lcom/android/server/lineage/health/ccprovider/Deadline;->mSavedTargetTime:J

    .line 66
    :try_start_4
    iget-object p0, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mChargingControl:Lvendor/lineage/health/IChargingControl;

    const-wide/16 v0, -0x1

    invoke-interface {p0, v0, v1}, Lvendor/lineage/health/IChargingControl;->setChargingDeadline(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 68
    const-string v0, "LineageHealth"

    const-string v1, "Failed to reset charging deadline"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public requiresBatteryLevelMonitoring()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method
