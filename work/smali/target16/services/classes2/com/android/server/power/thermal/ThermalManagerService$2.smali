.class public Lcom/android/server/power/thermal/ThermalManagerService$2;
.super Landroid/os/IThermalService$Stub;
.source "ThermalManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/thermal/ThermalManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/thermal/ThermalManagerService;)V
    .registers 2

    .line 555
    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-direct {p0}, Landroid/os/IThermalService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 830
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/thermal/ThermalManagerService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentCoolingDevices()[Landroid/os/CoolingDevice;
    .registers 5

    .line 692
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 696
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmHalReady(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_25

    .line 697
    new-array p0, v3, [Landroid/os/CoolingDevice;
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    .line 703
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_23
    move-exception p0

    goto :goto_3f

    .line 699
    :cond_25
    :try_start_25
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/thermal/ThermalManagerService;)Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    move-result-object p0

    invoke-virtual {p0, v3, v3}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->getCurrentCoolingDevices(ZI)Ljava/util/List;

    move-result-object p0

    .line 701
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/CoolingDevice;

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/CoolingDevice;
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_23

    .line 703
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_3f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 704
    throw p0
.end method

.method public getCurrentCoolingDevicesWithType(I)[Landroid/os/CoolingDevice;
    .registers 5

    .line 709
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 713
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmHalReady(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_25

    const/4 p0, 0x0

    .line 714
    new-array p0, p0, [Landroid/os/CoolingDevice;
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    .line 720
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_23
    move-exception p0

    goto :goto_40

    .line 716
    :cond_25
    :try_start_25
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/thermal/ThermalManagerService;)Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->getCurrentCoolingDevices(ZI)Ljava/util/List;

    move-result-object p0

    .line 718
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/CoolingDevice;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/CoolingDevice;
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_23

    .line 720
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 721
    throw p0
.end method

.method public getCurrentTemperatures()[Landroid/os/Temperature;
    .registers 5

    .line 611
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 615
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmHalReady(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_25

    .line 616
    new-array p0, v3, [Landroid/os/Temperature;
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    .line 622
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_23
    move-exception p0

    goto :goto_3f

    .line 618
    :cond_25
    :try_start_25
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/thermal/ThermalManagerService;)Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    move-result-object p0

    invoke-virtual {p0, v3, v3}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object p0

    .line 620
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/Temperature;

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Temperature;
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_23

    .line 622
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_3f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 623
    throw p0
.end method

.method public getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;
    .registers 5

    .line 628
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 632
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmHalReady(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_25

    const/4 p0, 0x0

    .line 633
    new-array p0, p0, [Landroid/os/Temperature;
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    .line 638
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_23
    move-exception p0

    goto :goto_40

    .line 635
    :cond_25
    :try_start_25
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/thermal/ThermalManagerService;)Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object p0

    .line 636
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/Temperature;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Temperature;
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_23

    .line 638
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 639
    throw p0
.end method

.method public getCurrentThermalStatus()I
    .registers 8

    .line 674
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 675
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_38

    .line 678
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 679
    iget-object v4, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v4}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmHalReady(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v4, 0x2

    .line 681
    :goto_1e
    iget-object v5, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v5}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmStatus(Lcom/android/server/power/thermal/ThermalManagerService;)I

    move-result v5

    .line 682
    invoke-static {v5}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$smthermalSeverityToStatsdStatus(I)I

    move-result v5

    const/16 v6, 0x304

    .line 677
    invoke-static {v6, v3, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 683
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmStatus(Lcom/android/server/power/thermal/ThermalManagerService;)I

    move-result p0
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_3a

    .line 685
    :try_start_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_38
    move-exception p0

    goto :goto_3f

    :catchall_3a
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 686
    throw p0

    .line 687
    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_38

    throw p0
.end method

.method public getThermalHeadroom(I)F
    .registers 10

    .line 780
    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v1}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmHalReady(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/high16 v7, 0x7fc00000    # Float.NaN

    if-nez v1, :cond_25

    .line 782
    invoke-static {}, Landroid/os/IThermalService$Stub;->getCallingUid()I

    move-result v1

    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/thermal/ThermalManagerService;->mIsHalSkinForecastSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 787
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    const/16 v0, 0x305

    const/4 v2, 0x2

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/4 v5, 0x0

    move v4, p1

    .line 781
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFIZZ)V

    return v7

    :cond_25
    if-ltz p1, :cond_35

    const/16 v1, 0x3c

    if-le p1, v1, :cond_2c

    goto :goto_35

    .line 805
    :cond_2c
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->getForecast(I)F

    move-result v0

    return v0

    .line 796
    :cond_35
    :goto_35
    invoke-static {}, Landroid/os/IThermalService$Stub;->getCallingUid()I

    move-result v1

    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/thermal/ThermalManagerService;->mIsHalSkinForecastSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 801
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    const/16 v0, 0x305

    const/4 v2, 0x4

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/4 v5, 0x0

    move v4, p1

    .line 795
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFIZZ)V

    return v7
.end method

.method public getThermalHeadroomThresholds()[F
    .registers 4

    .line 810
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmHalReady(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/16 v1, 0x306

    if-eqz v0, :cond_1f

    .line 823
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v2, 0x1

    .line 822
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 825
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->getHeadroomThresholds()[F

    move-result-object p0

    return-object p0

    .line 812
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/4 v0, 0x2

    .line 811
    invoke-static {v1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 814
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Thermal HAL connection is not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isCallerShell()Z
    .registers 2

    .line 834
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_d

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 842
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$2;->isCallerShell()Z

    move-result v0

    if-nez v0, :cond_10

    .line 843
    invoke-static {}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Only shell is allowed to call thermalservice shell commands"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 846
    :cond_10
    new-instance v0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalShellCommand;

    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalShellCommand;-><init>(Lcom/android/server/power/thermal/ThermalManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public registerThermalEventListener(Landroid/os/IThermalEventListener;)Z
    .registers 7

    .line 558
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 561
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_29

    .line 563
    :try_start_17
    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v1}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmThermalEventListeners(Lcom/android/server/power/thermal/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v1
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_36

    if-nez v1, :cond_2b

    .line 570
    :try_start_23
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_29

    return p0

    :catchall_29
    move-exception p0

    goto :goto_3b

    .line 567
    :cond_2b
    :try_start_2b
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {p0, p1, v2}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$mpostEventListenerCurrentTemperaturesLocked(Lcom/android/server/power/thermal/ThermalManagerService;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_36

    .line 570
    :try_start_30
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_36
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    throw p0

    .line 572
    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_29

    throw p0
.end method

.method public registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    .registers 8

    .line 578
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 581
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_2d

    .line 583
    :try_start_17
    iget-object v3, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmThermalEventListeners(Lcom/android/server/power/thermal/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v3
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_3e

    if-nez v3, :cond_2f

    .line 590
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2d

    return p0

    :catchall_2d
    move-exception p0

    goto :goto_43

    .line 587
    :cond_2f
    :try_start_2f
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$mpostEventListenerCurrentTemperaturesLocked(Lcom/android/server/power/thermal/ThermalManagerService;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_3e

    .line 590
    :try_start_38
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_3e
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 591
    throw p0

    .line 592
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_2d

    throw p0
.end method

.method public registerThermalHeadroomListener(Landroid/os/IThermalHeadroomListener;)Z
    .registers 7

    .line 726
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmHalReady(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 729
    :cond_e
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 731
    :try_start_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_2a

    .line 733
    :try_start_19
    iget-object v4, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v4}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmThermalHeadroomListeners(Lcom/android/server/power/thermal/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v4
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_5a

    if-nez v4, :cond_2c

    .line 737
    :try_start_25
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return v1

    :catchall_2a
    move-exception p0

    goto :goto_5f

    :cond_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 739
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_2a

    .line 741
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    iget-object v1, v0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 742
    :try_start_37
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {v0}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->getHeadroomCallbackDataLocked()Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;

    move-result-object v0

    .line 743
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_57

    .line 745
    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v1}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 746
    :try_start_47
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    .line 751
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x3

    .line 746
    invoke-static {p0, p1, v0, v3, v1}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$mpostHeadroomListenerLocked(Lcom/android/server/power/thermal/ThermalManagerService;Landroid/os/IThermalHeadroomListener;Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;II)V

    .line 752
    monitor-exit v2

    const/4 p0, 0x1

    return p0

    :catchall_54
    move-exception p0

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_54

    throw p0

    :catchall_57
    move-exception p0

    .line 743
    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p0

    :catchall_5a
    move-exception p0

    .line 737
    :try_start_5b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 738
    throw p0

    .line 739
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_2a

    throw p0
.end method

.method public registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    .registers 6

    .line 644
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 646
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_1d

    .line 648
    :try_start_b
    iget-object v3, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmThermalStatusListeners(Lcom/android/server/power/thermal/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_2a

    if-nez v3, :cond_1f

    .line 655
    :try_start_17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    return p0

    :catchall_1d
    move-exception p0

    goto :goto_2f

    .line 652
    :cond_1f
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$mpostStatusListenerLocked(Lcom/android/server/power/thermal/ThermalManagerService;Landroid/os/IThermalStatusListener;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2a

    .line 655
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_2a
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 656
    throw p0

    .line 657
    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_1d

    throw p0
.end method

.method public unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z
    .registers 5

    .line 597
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 600
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_26

    .line 602
    :try_start_17
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmThermalEventListeners(Lcom/android/server/power/thermal/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_28

    .line 604
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_26
    move-exception p0

    goto :goto_2d

    :catchall_28
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    throw p0

    .line 606
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_26

    throw p0
.end method

.method public unregisterThermalHeadroomListener(Landroid/os/IThermalHeadroomListener;)Z
    .registers 5

    .line 764
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 765
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_1a

    .line 767
    :try_start_b
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmThermalHeadroomListeners(Lcom/android/server/power/thermal/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1c

    .line 773
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    goto :goto_21

    :catchall_1c
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 774
    throw p0

    .line 775
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_1a

    throw p0
.end method

.method public unregisterThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    .registers 5

    .line 662
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 663
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_1a

    .line 665
    :try_start_b
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$2;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmThermalStatusListeners(Lcom/android/server/power/thermal/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1c

    .line 667
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    goto :goto_21

    :catchall_1c
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 668
    throw p0

    .line 669
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_1a

    throw p0
.end method
