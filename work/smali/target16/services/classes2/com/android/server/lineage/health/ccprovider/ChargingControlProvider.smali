.class public abstract Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;
.super Ljava/lang/Object;
.source "ChargingControlProvider.java"


# instance fields
.field public isEnabled:Z

.field public final mChargingControl:Lvendor/lineage/health/IChargingControl;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lvendor/lineage/health/IChargingControl;)V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->isEnabled:Z

    .line 25
    iput-object p1, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mChargingControl:Lvendor/lineage/health/IChargingControl;

    return-void
.end method


# virtual methods
.method public final disable()V
    .registers 3

    .line 65
    iget-boolean v0, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->isEnabled:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->isEnabled:Z

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LineageHealth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->onDisable()V

    return-void
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public final enable()V
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->isEnabled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->isEnabled:Z

    .line 56
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->onEnabled()V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is enabled"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LineageHealth"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract isChargingControlModeSupported(I)Z
.end method

.method public final isHALModeSupported(I)Z
    .registers 6

    .line 159
    const-string v0, "LineageHealth"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupported mode called, param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mChargingControl:Lvendor/lineage/health/IChargingControl;

    .line 160
    invoke-interface {v3}, Lvendor/lineage/health/IChargingControl;->getSupportedMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p0, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mChargingControl:Lvendor/lineage/health/IChargingControl;

    invoke-interface {p0}, Lvendor/lineage/health/IChargingControl;->getSupportedMode()I

    move-result p0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2b} :catch_31

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_30

    const/4 p0, 0x1

    return p0

    :cond_30
    return v1

    :catch_31
    move-exception p0

    .line 163
    const-string p1, "Unable to get supported mode from HAL!"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public onBatteryChanged(FI)Z
    .registers 3

    .line 89
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unsupported operation"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onBatteryChanged(FJJI)Z
    .registers 7

    .line 107
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unsupported operation"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract onDisable()V
.end method

.method public abstract onEnabled()V
.end method

.method public abstract onReset()V
.end method

.method public abstract requiresBatteryLevelMonitoring()Z
.end method

.method public final reset()V
    .registers 1

    .line 44
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->onReset()V

    return-void
.end method

.method public final update(FI)Z
    .registers 4

    .line 30
    iget-boolean v0, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->isEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 33
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->onBatteryChanged(FI)Z

    move-result p0

    return p0
.end method

.method public final update(FJJI)Z
    .registers 14

    .line 37
    iget-boolean v0, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->isEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 40
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->onBatteryChanged(FJJI)Z

    move-result p0

    return p0
.end method
