.class public interface abstract Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;
.super Ljava/lang/Object;
.source "GnssPowerOptimizeStub.java"


# static fields
.field public static final GNSS_ENGINE_BLOCK_STATUS:I = 0x1

.field public static final GNSS_ENGINE_CONTROL_STATUS:I = 0x3

.field public static final GNSS_ENGINE_START_STATUS:I = 0x2

.field public static final GNSS_ENGINE_STOP_STATUS:I = 0x4

.field public static final GNSS_ENGINE_UNKNOWN_STATUS:I


# direct methods
.method public static getInstance()Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;
    .registers 1

    .line 18
    const-class v0, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;

    return-object v0
.end method


# virtual methods
.method public blockEngineStart()Z
    .registers 2

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public abstract clearLocationRequest()V
.end method

.method public abstract disableGnssSwitch()V
.end method

.method public engineStoppedByGpo()Z
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getEngineStatus()I
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public isBlackListControlEnabled()Z
    .registers 2

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public abstract recordEngineUsageDaily(J)V
.end method

.method public abstract removeLocationRequestId(I)V
.end method

.method public abstract reportLocation2Gpo(Landroid/location/Location;)V
.end method

.method public abstract saveLocationRequestId(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
.end method

.method public abstract setEngineStatus(I)V
.end method

.method public abstract setGpoVersionValue(I)V
.end method
