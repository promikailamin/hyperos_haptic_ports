.class public Lcom/android/server/lineage/health/ccprovider/Limit;
.super Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;
.source "Limit.java"


# instance fields
.field public final mChargingLimitMargin:I


# direct methods
.method public constructor <init>(Lvendor/lineage/health/IChargingControl;Landroid/content/Context;)V
    .registers 4

    .line 27
    invoke-direct {p0, p2, p1}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;-><init>(Landroid/content/Context;Lvendor/lineage/health/IChargingControl;)V

    const/4 p1, 0x2

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->isHALModeSupported(I)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 31
    iget-object p2, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e0057

    .line 33
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/lineage/health/ccprovider/Limit;->mChargingLimitMargin:I

    goto :goto_1d

    :cond_1a
    const/4 p2, 0x1

    .line 35
    iput p2, p0, Lcom/android/server/lineage/health/ccprovider/Limit;->mChargingLimitMargin:I

    .line 37
    :goto_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isBypassSupported: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LineageHealth"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isChargingControlModeSupported(I)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :cond_b
    :goto_b
    return p0
.end method

.method public isSupported()Z
    .registers 2

    const/16 v0, 0x8

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->isHALModeSupported(I)Z

    move-result p0

    return p0
.end method

.method public onBatteryChanged(FI)Z
    .registers 5

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current battery level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", target: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LineageHealth"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0, p2}, Lcom/android/server/lineage/health/ccprovider/Limit;->setChargingLimit(I)Z

    move-result p0

    return p0
.end method

.method public onDisable()V
    .registers 1

    .line 53
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ccprovider/Limit;->onReset()V

    return-void
.end method

.method public onEnabled()V
    .registers 1

    .line 48
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ccprovider/Limit;->onReset()V

    return-void
.end method

.method public onReset()V
    .registers 2

    const/16 v0, 0x64

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/health/ccprovider/Limit;->setChargingLimit(I)Z

    return-void
.end method

.method public requiresBatteryLevelMonitoring()Z
    .registers 2

    const/4 v0, 0x2

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->isHALModeSupported(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final setChargingLimit(I)Z
    .registers 5

    const/4 v0, 0x0

    .line 63
    :try_start_1
    iget-object v1, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mChargingControl:Lvendor/lineage/health/IChargingControl;

    invoke-interface {v1}, Lvendor/lineage/health/IChargingControl;->getChargingLimit()Lvendor/lineage/health/ChargingLimitInfo;

    move-result-object v1

    iget v1, v1, Lvendor/lineage/health/ChargingLimitInfo;->max:I

    if-eq v1, p1, :cond_26

    .line 64
    new-instance v1, Lvendor/lineage/health/ChargingLimitInfo;

    invoke-direct {v1}, Lvendor/lineage/health/ChargingLimitInfo;-><init>()V

    const/16 v2, 0x64

    if-ne p1, v2, :cond_19

    .line 66
    iput v0, v1, Lvendor/lineage/health/ChargingLimitInfo;->min:I

    goto :goto_1f

    :catch_17
    move-exception p0

    goto :goto_28

    .line 68
    :cond_19
    iget v2, p0, Lcom/android/server/lineage/health/ccprovider/Limit;->mChargingLimitMargin:I

    sub-int v2, p1, v2

    iput v2, v1, Lvendor/lineage/health/ChargingLimitInfo;->min:I

    .line 70
    :goto_1f
    iput p1, v1, Lvendor/lineage/health/ChargingLimitInfo;->max:I

    .line 71
    iget-object p0, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mChargingControl:Lvendor/lineage/health/IChargingControl;

    invoke-interface {p0, v1}, Lvendor/lineage/health/IChargingControl;->setChargingLimit(Lvendor/lineage/health/ChargingLimitInfo;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_17

    :cond_26
    const/4 p0, 0x1

    return p0

    .line 75
    :goto_28
    const-string p1, "LineageHealth"

    const-string v1, "Failed to set charging limit"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
