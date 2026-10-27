.class public final Lcom/android/server/BatteryService$LocalService;
.super Landroid/os/BatteryManagerInternal;
.source "BatteryService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 1906
    iput-object p1, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/BatteryManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public getBatteryChargeCounter()I
    .registers 2

    .line 1930
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1931
    :try_start_7
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHealthInfo(Lcom/android/server/BatteryService;)Landroid/hardware/health/HealthInfo;

    move-result-object p0

    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 1932
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getBatteryFullCharge()I
    .registers 2

    .line 1937
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1938
    :try_start_7
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHealthInfo(Lcom/android/server/BatteryService;)Landroid/hardware/health/HealthInfo;

    move-result-object p0

    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 1939
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getBatteryHealth()I
    .registers 2

    .line 1944
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1945
    :try_start_7
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHealthInfo(Lcom/android/server/BatteryService;)Landroid/hardware/health/HealthInfo;

    move-result-object p0

    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 1946
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getBatteryLevel()I
    .registers 2

    .line 1923
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1924
    :try_start_7
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHealthInfo(Lcom/android/server/BatteryService;)Landroid/hardware/health/HealthInfo;

    move-result-object p0

    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 1925
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getBatteryLevelLow()Z
    .registers 2

    .line 1951
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1952
    :try_start_7
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmBatteryLevelLow(Lcom/android/server/BatteryService;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 1953
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getChargingPolicy()I
    .registers 2

    .line 1964
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1965
    :try_start_7
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLastChargingPolicy(Lcom/android/server/BatteryService;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 1966
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getInvalidCharger()I
    .registers 2

    .line 1971
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1972
    :try_start_7
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmInvalidCharger(Lcom/android/server/BatteryService;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 1973
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getPlugType()I
    .registers 2

    .line 1916
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1917
    :try_start_7
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmPlugType(Lcom/android/server/BatteryService;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 1918
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public isPowered(I)Z
    .registers 3

    .line 1909
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1910
    :try_start_7
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->-$$Nest$misPoweredLocked(Lcom/android/server/BatteryService;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 1911
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public registerChargingPolicyChangeListener(Landroid/os/BatteryManagerInternal$ChargingPolicyChangeListener;)V
    .registers 2

    .line 1959
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmChargingPolicyChangeListeners(Lcom/android/server/BatteryService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetBattery(Z)V
    .registers 3

    .line 1993
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/BatteryService;->-$$Nest$mresetBattery(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public setBatteryLevel(IZ)V
    .registers 3

    .line 1983
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0, p1, p2}, Lcom/android/server/BatteryService;->-$$Nest$msetBatteryLevel(Lcom/android/server/BatteryService;IZ)V

    return-void
.end method

.method public setChargerAcOnline(ZZ)V
    .registers 3

    .line 1978
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0, p1, p2}, Lcom/android/server/BatteryService;->-$$Nest$msetChargerAcOnline(Lcom/android/server/BatteryService;ZZ)V

    return-void
.end method

.method public suspendBatteryInput()V
    .registers 1

    .line 1998
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$msuspendBatteryInput(Lcom/android/server/BatteryService;)V

    return-void
.end method

.method public unplugBattery(Z)V
    .registers 3

    .line 1988
    iget-object p0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/BatteryService;->-$$Nest$munplugBattery(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V

    return-void
.end method
