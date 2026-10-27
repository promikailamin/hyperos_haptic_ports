.class public Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper$1;
.super Landroid/hardware/thermal/IThermalChangedCallback$Stub;
.source "ThermalManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;)V
    .registers 2

    .line 1241
    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper$1;->this$0:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;

    invoke-direct {p0}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 1271
    const-string p0, "4c4fc474c40b64963eb8d78b713b1095fecd72f0"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method public notifyThresholdChanged(Landroid/hardware/thermal/TemperatureThreshold;)V
    .registers 4

    .line 1258
    iget v0, p1, Landroid/hardware/thermal/TemperatureThreshold;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 1259
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper$1;->this$0:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;

    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    invoke-interface {p0, p1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;->onThresholdChanged(Landroid/hardware/thermal/TemperatureThreshold;)V

    :cond_c
    return-void
.end method

.method public notifyThrottling(Landroid/hardware/thermal/Temperature;)V
    .registers 6

    .line 1245
    new-instance v0, Landroid/os/Temperature;

    iget v1, p1, Landroid/hardware/thermal/Temperature;->value:F

    iget v2, p1, Landroid/hardware/thermal/Temperature;->type:I

    iget-object v3, p1, Landroid/hardware/thermal/Temperature;->name:Ljava/lang/String;

    iget p1, p1, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    .line 1247
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1249
    :try_start_11
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper$1;->this$0:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;

    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    invoke-interface {p0, v0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;->onTemperatureChanged(Landroid/os/Temperature;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c

    .line 1251
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1252
    throw p0
.end method
