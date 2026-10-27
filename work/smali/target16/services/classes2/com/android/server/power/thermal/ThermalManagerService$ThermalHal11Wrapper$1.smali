.class public Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper$1;
.super Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;
.source "ThermalManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;)V
    .registers 2

    .line 1623
    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper$1;->this$0:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;

    invoke-direct {p0}, Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyThrottling(ZLandroid/hardware/thermal/V1_0/Temperature;)V
    .registers 6

    .line 1627
    new-instance v0, Landroid/os/Temperature;

    iget v1, p2, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    iget v2, p2, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    iget-object p2, p2, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    if-eqz p1, :cond_c

    const/4 p1, 0x3

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 1630
    :goto_d
    invoke-direct {v0, v1, v2, p2, p1}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    .line 1631
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 1633
    :try_start_14
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper$1;->this$0:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;

    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    invoke-interface {p0, v0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;->onTemperatureChanged(Landroid/os/Temperature;)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1f

    .line 1635
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1f
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1636
    throw p0
.end method
