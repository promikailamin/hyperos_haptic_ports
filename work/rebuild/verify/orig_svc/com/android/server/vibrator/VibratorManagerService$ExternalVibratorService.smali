.class final Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
.super Landroid/os/IExternalVibratorService$Stub;
.source "VibratorManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 2

    .line 2692
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/os/IExternalVibratorService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasExternalControlCapability()Z
    .registers 8

    .line 2840
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorManager(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/HalVibratorManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/vibrator/HalVibratorManager;->getVibratorIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_2e

    aget v4, v0, v3

    .line 2841
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorManager(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/HalVibratorManager;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/server/vibrator/HalVibratorManager;->getVibrator(I)Lcom/android/server/vibrator/HalVibrator;

    move-result-object v4

    if-eqz v4, :cond_2b

    .line 2843
    invoke-interface {v4}, Lcom/android/server/vibrator/HalVibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v4

    const-wide/16 v5, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 p0, 0x1

    return p0

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2e
    return v2
.end method

.method public onExternalVibrationStart(Landroid/os/ExternalVibration;)Landroid/os/ExternalVibrationScale;
    .registers 10

    .line 2696
    const-string/jumbo v0, "onExternalVibrationStart"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2700
    :try_start_9
    new-instance v0, Lcom/android/server/vibrator/ExternalVibrationSession;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmExternalVibrationCallbacks(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/android/server/vibrator/ExternalVibrationSession;-><init>(Landroid/os/ExternalVibration;Lcom/android/server/vibrator/ExternalVibrationSession$VibratorManagerHooks;)V

    .line 2703
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->muteScale()V

    .line 2706
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_141

    .line 2707
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->hasExternalControlCapability()Z

    move-result v4

    if-nez v4, :cond_37

    .line 2708
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object p1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p0, v0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 2709
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object p0

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_34

    .line 2814
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_34
    move-exception p0

    goto/16 :goto_1e3

    .line 2712
    :cond_37
    :try_start_37
    const-string v4, "android.permission.VIBRATE"

    .line 2714
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 2712
    invoke-static {v4, v5, v6, v7}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v4

    if-eqz v4, :cond_81

    .line 2716
    const-string v4, "VibratorManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tried to play externally controlled vibration without VIBRATE permission, ignoring."

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object p1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p0, v0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 2720
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object p0

    monitor-exit v3
    :try_end_7d
    .catchall {:try_start_37 .. :try_end_7d} :catchall_34

    .line 2814
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 2723
    :cond_81
    :try_start_81
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v5, v0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-static {v4, v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mshouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v4

    if-eqz v4, :cond_99

    .line 2725
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0, v0, v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 2726
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object p0

    monitor-exit v3
    :try_end_95
    .catchall {:try_start_81 .. :try_end_95} :catchall_34

    .line 2814
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 2729
    :cond_99
    :try_start_99
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v4

    instance-of v5, v4, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-eqz v5, :cond_b4

    check-cast v4, Lcom/android/server/vibrator/ExternalVibrationSession;

    .line 2730
    invoke-virtual {v4, p1}, Lcom/android/server/vibrator/ExternalVibrationSession;->isHoldingSameVibration(Landroid/os/ExternalVibration;)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 2733
    invoke-virtual {v4}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object p0

    monitor-exit v3
    :try_end_b0
    .catchall {:try_start_99 .. :try_end_b0} :catchall_34

    .line 2814
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 2737
    :cond_b4
    :try_start_b4
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v4, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mshouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object v4

    if-eqz v4, :cond_ce

    .line 2739
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p1, v4, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v4, v4, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-static {p0, v0, p1, v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 2740
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object p0

    monitor-exit v3
    :try_end_ca
    .catchall {:try_start_b4 .. :try_end_ca} :catchall_34

    .line 2814
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 2744
    :cond_ce
    :try_start_ce
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v5, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v6, v0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-static {v4, v5, v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mclearNextSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 2745
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v4, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmNextSession(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)V

    .line 2747
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v4

    if-eqz v4, :cond_102

    .line 2758
    iget-object v4, v0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v5

    .line 2759
    invoke-interface {v5}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v5

    .line 2758
    invoke-virtual {v4, v5}, Lcom/android/server/vibrator/VibrationStats;->reportInterruptedAnotherVibration(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 2760
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v4

    sget-object v5, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v6, v0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V

    move v4, v7

    goto :goto_103

    :cond_102
    const/4 v4, 0x0

    .line 2764
    :goto_103
    monitor-exit v3
    :try_end_104
    .catchall {:try_start_ce .. :try_end_104} :catchall_34

    const/4 v3, 0x0

    if-eqz v4, :cond_144

    .line 2767
    :try_start_107
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v5, v6}, Lcom/android/server/vibrator/VibratorManagerService;->waitForCurrentSessionEnd(J)Z

    move-result v4

    if-nez v4, :cond_144

    .line 2768
    const-string p1, "VibratorManagerService"

    const-string v4, "Timed out waiting for vibration to cancel"

    invoke-static {p1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_11f
    .catchall {:try_start_107 .. :try_end_11f} :catchall_141

    .line 2770
    :try_start_11f
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmNextSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v4

    if-ne v4, v0, :cond_12f

    .line 2771
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v4, v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmNextSession(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)V

    goto :goto_12f

    :catchall_12d
    move-exception p0

    goto :goto_13f

    .line 2773
    :cond_12f
    :goto_12f
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v3, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p0, v0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 2774
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object p0

    monitor-exit p1
    :try_end_13b
    .catchall {:try_start_11f .. :try_end_13b} :catchall_12d

    .line 2814
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 2775
    :goto_13f
    :try_start_13f
    monitor-exit p1
    :try_end_140
    .catchall {:try_start_13f .. :try_end_140} :catchall_12d

    :try_start_140
    throw p0

    :catchall_141
    move-exception p0

    goto/16 :goto_1e5

    .line 2778
    :cond_144
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_14b
    .catchall {:try_start_140 .. :try_end_14b} :catchall_141

    .line 2779
    :try_start_14b
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmNextSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v5

    if-ne v5, v0, :cond_1d8

    .line 2781
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v5, v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmNextSession(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)V

    .line 2787
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->linkToDeath()Z

    move-result v5

    if-nez v5, :cond_170

    .line 2788
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object p1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p0, v0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 2789
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object p0

    monitor-exit v4
    :try_end_16a
    .catchall {:try_start_14b .. :try_end_16a} :catchall_16e

    .line 2814
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_16e
    move-exception p0

    goto :goto_1e1

    .line 2791
    :cond_170
    :try_start_170
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_17d

    .line 2792
    const-string v5, "VibratorManagerService"

    const-string v6, "Vibrator going under external control."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    :cond_17d
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v6, v0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-static {v5, v7, v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$msetExternalControl(Lcom/android/server/vibrator/VibratorManagerService;ZLcom/android/server/vibrator/VibrationStats;)V

    .line 2795
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_1a0

    .line 2796
    const-string v5, "VibratorManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Playing external vibration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    :cond_1a0
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 2799
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object p1

    .line 2798
    invoke-static {v5, p1, v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mfixupVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object p1

    const/4 v3, 0x4

    .line 2800
    invoke-virtual {p1, v3}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v3

    if-eqz v3, :cond_1b8

    .line 2803
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v3, v3, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 2805
    :cond_1b8
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)V

    .line 2806
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrationScaler(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationScaler;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/android/server/vibrator/ExternalVibrationSession;->scale(Lcom/android/server/vibrator/VibrationScaler;I)V

    .line 2810
    iget-object p0, v0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStats;->reportStarted()V

    .line 2811
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object p0

    monitor-exit v4
    :try_end_1d4
    .catchall {:try_start_170 .. :try_end_1d4} :catchall_16e

    .line 2814
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 2785
    :cond_1d8
    :try_start_1d8
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object p0

    monitor-exit v4
    :try_end_1dd
    .catchall {:try_start_1d8 .. :try_end_1dd} :catchall_16e

    .line 2814
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 2812
    :goto_1e1
    :try_start_1e1
    monitor-exit v4
    :try_end_1e2
    .catchall {:try_start_1e1 .. :try_end_1e2} :catchall_16e

    :try_start_1e2
    throw p0
    :try_end_1e3
    .catchall {:try_start_1e2 .. :try_end_1e3} :catchall_141

    .line 2764
    :goto_1e3
    :try_start_1e3
    monitor-exit v3
    :try_end_1e4
    .catchall {:try_start_1e3 .. :try_end_1e4} :catchall_34

    :try_start_1e4
    throw p0
    :try_end_1e5
    .catchall {:try_start_1e4 .. :try_end_1e5} :catchall_141

    .line 2814
    :goto_1e5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2815
    throw p0
.end method

.method public onExternalVibrationStop(Landroid/os/ExternalVibration;)V
    .registers 8

    .line 2820
    const-string/jumbo v0, "onExternalVibrationStop"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2822
    :try_start_9
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_7c

    .line 2823
    :try_start_10
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v3

    instance-of v4, v3, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-eqz v4, :cond_4d

    check-cast v3, Lcom/android/server/vibrator/ExternalVibrationSession;

    .line 2824
    invoke-virtual {v3, p1}, Lcom/android/server/vibrator/ExternalVibrationSession;->isHoldingSameVibration(Landroid/os/ExternalVibration;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 2825
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 2826
    const-string v3, "VibratorManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping external vibration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :catchall_3f
    move-exception p0

    goto :goto_7a

    .line 2828
    :cond_41
    :goto_41
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object p0

    sget-object p1, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {p0, p1}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V

    goto :goto_75

    .line 2829
    :cond_4d
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_75

    .line 2830
    const-string v3, "VibratorManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VibrationSession invalid on external vibration stop. currentSession="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", received="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    :cond_75
    :goto_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_10 .. :try_end_76} :catchall_3f

    .line 2835
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 2833
    :goto_7a
    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_3f

    :try_start_7b
    throw p0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception p0

    .line 2835
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2836
    throw p0
.end method
