.class public Lcom/android/server/power/thermal/ThermalManagerService$1;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"

# interfaces
.implements Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/thermal/ThermalManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/thermal/ThermalManagerService;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$1;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTemperatureChanged(Landroid/os/Temperature;)V
    .registers 5

    .line 179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 181
    :try_start_4
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$1;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$monTemperatureChanged(Lcom/android/server/power/thermal/ThermalManagerService;Landroid/os/Temperature;Z)V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 183
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    throw p0
.end method

.method public onThresholdChanged(Landroid/hardware/thermal/TemperatureThreshold;)V
    .registers 7

    .line 189
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 191
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$1;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    iget-object v2, v2, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    iget-object v2, v2, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_54

    .line 195
    :try_start_b
    iget-object v3, p0, Lcom/android/server/power/thermal/ThermalManagerService$1;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    iget-object v3, v3, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->updateTemperatureThresholdLocked(Landroid/hardware/thermal/TemperatureThreshold;Z)V

    .line 196
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_5b

    .line 197
    :try_start_14
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$1;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {p1}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_54

    .line 198
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$1;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmThermalHeadroomListeners(Lcom/android/server/power/thermal/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-nez v2, :cond_2e

    .line 199
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_2c

    .line 212
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2c
    move-exception p0

    goto :goto_59

    .line 201
    :cond_2e
    :try_start_2e
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2c

    .line 203
    :try_start_2f
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$1;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    iget-object p1, p1, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    iget-object p1, p1, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter p1
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_54

    .line 204
    :try_start_36
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$1;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    iget-object v2, v2, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {v2}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->getHeadroomCallbackDataLocked()Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;

    move-result-object v2

    .line 205
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_56

    .line 206
    :try_start_3f
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$1;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {p1}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_54

    .line 207
    :try_start_46
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$1;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$mcheckAndNotifyHeadroomListenersLocked(Lcom/android/server/power/thermal/ThermalManagerService;Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;I)V

    .line 210
    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_51

    .line 212
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_51
    move-exception p0

    .line 210
    :try_start_52
    monitor-exit p1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    throw p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p0

    goto :goto_5e

    :catchall_56
    move-exception p0

    .line 205
    :try_start_57
    monitor-exit p1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    :try_start_58
    throw p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_54

    .line 201
    :goto_59
    :try_start_59
    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_2c

    :try_start_5a
    throw p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_54

    :catchall_5b
    move-exception p0

    .line 196
    :try_start_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_54

    .line 212
    :goto_5e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 213
    throw p0
.end method
