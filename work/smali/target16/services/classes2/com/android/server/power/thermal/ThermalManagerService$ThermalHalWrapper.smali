.class public abstract Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ThermalManagerService$ThermalHalWrapper"


# instance fields
.field public mCallback:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

.field public final mHalLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract connectToHal()Z
.end method

.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public abstract forecastSkinTemperature(I)F
.end method

.method public abstract getCurrentCoolingDevices(ZI)Ljava/util/List;
.end method

.method public abstract getCurrentTemperatures(ZI)Ljava/util/List;
.end method

.method public abstract getTemperatureThresholds(ZI)Ljava/util/List;
.end method

.method public resendCurrentTemperatures()V
    .registers 7

    .line 1202
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1203
    :try_start_4
    invoke-virtual {p0, v1, v1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v2

    .line 1204
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_c
    if-ge v1, v3, :cond_1e

    .line 1206
    iget-object v4, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Temperature;

    invoke-interface {v4, v5}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;->onTemperatureChanged(Landroid/os/Temperature;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :catchall_1c
    move-exception p0

    goto :goto_20

    .line 1208
    :cond_1e
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1c

    throw p0
.end method

.method public setCallback(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;)V
    .registers 2

    .line 1180
    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    return-void
.end method
