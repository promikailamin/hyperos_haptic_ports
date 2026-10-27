.class public final Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 2

    .line 1816
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    return-void
.end method


# virtual methods
.method public cancelSyncedVibration()V
    .registers 4

    .line 1844
    const-string v0, "cancelSyncedVibration"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1846
    :try_start_8
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorManager(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/HalVibratorManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/vibrator/HalVibratorManager;->cancelSynced()Z
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_15

    .line 1848
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_15
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1849
    throw p0
.end method

.method public noteVibratorOff(I)V
    .registers 5

    .line 1879
    const-string/jumbo v0, "noteVibratorOff"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1881
    :try_start_9
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmBatteryStatsService(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V

    .line 1882
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmFrameworkStatsLogger(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->writeVibratorStateOffAsync(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1b} :catch_21
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1f

    .line 1886
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1f
    move-exception p0

    goto :goto_2d

    :catch_21
    move-exception p0

    .line 1884
    :try_start_22
    const-string p1, "VibratorManagerService"

    const-string v0, "Error logging VibratorStateChanged to OFF"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    .line 1886
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_2d
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1887
    throw p0
.end method

.method public noteVibratorOn(IJ)V
    .registers 9

    .line 1854
    const-string/jumbo v0, "noteVibratorOn"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-gtz v0, :cond_13

    .line 1873
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_13
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v0, p2, v3

    if-nez v0, :cond_1e

    const-wide/16 p2, 0x1388

    .line 1868
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmBatteryStatsService(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 1869
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmFrameworkStatsLogger(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->writeVibratorStateOnAsync(IJ)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_30} :catch_36
    .catchall {:try_start_1e .. :try_end_30} :catchall_34

    .line 1873
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_34
    move-exception p0

    goto :goto_42

    :catch_36
    move-exception p0

    .line 1871
    :try_start_37
    const-string p1, "VibratorManagerService"

    const-string p2, "Error logging VibratorStateChanged to ON"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_34

    .line 1873
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_42
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1874
    throw p0
.end method

.method public onVibrationThreadReleased(J)V
    .registers 11

    .line 1892
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1893
    const-string v0, "VibratorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationThread released vibration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :cond_1c
    const-string/jumbo v0, "onVibrationThreadReleased"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1897
    :try_start_25
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_109

    .line 1898
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v3

    instance-of v4, v3, Lcom/android/server/vibrator/SingleVibrationSession;

    if-eqz v4, :cond_87

    check-cast v3, Lcom/android/server/vibrator/SingleVibrationSession;

    .line 1899
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_67

    invoke-virtual {v3}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v4, v4, p1

    if-eqz v4, :cond_67

    .line 1900
    const-string v4, "VibratorManagerService"

    const-string v5, "VibrationId mismatch on vibration thread release. expected=%d, released=%d"

    .line 1903
    invoke-virtual {v3}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v3

    iget-wide v6, v3, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1900
    invoke-static {v5, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    :catchall_64
    move-exception p0

    goto/16 :goto_107

    .line 1905
    :cond_67
    :goto_67
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mfinishAppOpModeLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 1906
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mclearCurrentSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V

    .line 1907
    const-string/jumbo p1, "vibration"

    const/4 p2, 0x0

    invoke-static {v1, v2, p1, p2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1909
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mmaybeStartNextSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V

    goto/16 :goto_102

    .line 1910
    :cond_87
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v3

    instance-of v4, v3, Lcom/android/server/vibrator/VendorVibrationSession;

    if-eqz v4, :cond_e2

    check-cast v3, Lcom/android/server/vibrator/VendorVibrationSession;

    .line 1911
    invoke-virtual {v3}, Lcom/android/server/vibrator/VendorVibrationSession;->clearVibrationConductor()Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v3

    .line 1912
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_102

    if-nez v3, :cond_ba

    .line 1914
    const-string p1, "VibratorManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vendor session without ongoing vibration on thread release. currentSession="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_102

    .line 1916
    :cond_ba
    invoke-virtual {v3}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    iget-wide v4, p0, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long p0, v4, p1

    if-eqz p0, :cond_102

    .line 1917
    const-string p0, "VibratorManagerService"

    const-string v4, "VibrationId mismatch on vibration thread release. expected=%d, released=%d"

    .line 1920
    invoke-virtual {v3}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v3

    iget-wide v5, v3, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1917
    invoke-static {v4, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_102

    .line 1923
    :cond_e2
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_102

    .line 1924
    const-string p1, "VibratorManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VibrationSession invalid on vibration thread release. currentSession="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    :cond_102
    :goto_102
    monitor-exit v0
    :try_end_103
    .catchall {:try_start_2c .. :try_end_103} :catchall_64

    .line 1929
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1927
    :goto_107
    :try_start_107
    monitor-exit v0
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_64

    :try_start_108
    throw p0
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_109

    :catchall_109
    move-exception p0

    .line 1929
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1930
    throw p0
.end method

.method public prepareSyncedVibration(J[I)Z
    .registers 7

    .line 1820
    const-string/jumbo v0, "prepareSyncedVibration"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1822
    :try_start_9
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorManager(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/HalVibratorManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/vibrator/HalVibratorManager;->hasCapability(J)Z

    move-result p1
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_28

    if-nez p1, :cond_1a

    .line 1828
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0

    .line 1826
    :cond_1a
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorManager(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/HalVibratorManager;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/android/server/vibrator/HalVibratorManager;->prepareSynced([I)Z

    move-result p0
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_28

    .line 1828
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_28
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1829
    throw p0
.end method

.method public triggerSyncedVibration(J)Z
    .registers 6

    .line 1834
    const-string/jumbo v0, "triggerSyncedVibration"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1836
    :try_start_9
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorManager(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/HalVibratorManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/vibrator/HalVibratorManager;->triggerSynced(J)Z

    move-result p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 1838
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_17
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1839
    throw p0
.end method
