.class public final Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 2

    .line 1977
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    return-void
.end method


# virtual methods
.method public endSession(JZ)V
    .registers 7

    .line 2064
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vibration session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_18

    .line 2066
    const-string v1, " aborting"

    goto :goto_1a

    :cond_18
    const-string v1, " ending"

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2065
    const-string v1, "VibratorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    :cond_26
    const-string v0, "endSession"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2070
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorManager(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/HalVibratorManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/vibrator/HalVibratorManager;->endSession(JZ)Z
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_3b

    .line 2072
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_3b
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2073
    throw p0
.end method

.method public onSessionReleased(J)V
    .registers 11

    .line 2078
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2079
    const-string v0, "VibratorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibration session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    :cond_21
    const-string/jumbo v0, "onVendorSessionReleased"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2083
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_c6

    .line 2084
    :try_start_31
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v3

    instance-of v4, v3, Lcom/android/server/vibrator/VendorVibrationSession;

    if-eqz v4, :cond_9f

    check-cast v3, Lcom/android/server/vibrator/VendorVibrationSession;

    .line 2092
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_67

    invoke-virtual {v3}, Lcom/android/server/vibrator/VendorVibrationSession;->getSessionId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-eqz v4, :cond_67

    .line 2093
    const-string v4, "VibratorManagerService"

    const-string v5, "SessionId mismatch on vendor vibration session release. expected=%d, released=%d"

    .line 2096
    invoke-virtual {v3}, Lcom/android/server/vibrator/VendorVibrationSession;->getSessionId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v6, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 2093
    invoke-static {v5, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    :catchall_65
    move-exception p0

    goto :goto_c4

    .line 2100
    :cond_67
    :goto_67
    invoke-virtual {v3}, Lcom/android/server/vibrator/VendorVibrationSession;->getVibratorIds()[I

    move-result-object p1

    array-length p2, p1

    const/4 v3, 0x0

    :goto_6d
    if-ge v3, p2, :cond_83

    aget v4, p1, v3

    .line 2101
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorManager(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/HalVibratorManager;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/server/vibrator/HalVibratorManager;->getVibrator(I)Lcom/android/server/vibrator/HalVibrator;

    move-result-object v4

    if-eqz v4, :cond_80

    .line 2103
    invoke-interface {v4}, Lcom/android/server/vibrator/HalVibrator;->off()Z

    :cond_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 2106
    :cond_83
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mfinishAppOpModeLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 2107
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mclearCurrentSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V

    .line 2109
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mmaybeStartNextSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V

    .line 2110
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_31 .. :try_end_9b} :catchall_65

    .line 2112
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 2085
    :cond_9f
    :try_start_9f
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_bf

    .line 2086
    const-string p1, "VibratorManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VibrationSession invalid on vibration session release. currentSession="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    :cond_bf
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_9f .. :try_end_c0} :catchall_65

    .line 2112
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 2110
    :goto_c4
    :try_start_c4
    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_65

    :try_start_c5
    throw p0
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c6

    :catchall_c6
    move-exception p0

    .line 2112
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2113
    throw p0
.end method

.method public vibrate(JLcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)V
    .registers 14

    .line 1982
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1983
    const-string v0, "VibratorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibration session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " vibration requested"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_21
    const-string/jumbo v0, "sessionVibrate"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1987
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_16f

    .line 1988
    :try_start_31
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v3

    instance-of v4, v3, Lcom/android/server/vibrator/VendorVibrationSession;

    if-eqz v4, :cond_148

    check-cast v3, Lcom/android/server/vibrator/VendorVibrationSession;

    .line 1996
    invoke-virtual {v3}, Lcom/android/server/vibrator/VendorVibrationSession;->getSessionId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-eqz v4, :cond_6d

    .line 1997
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_68

    .line 1998
    const-string p0, "VibratorManagerService"

    const-string p3, "SessionId mismatch on vendor vibration session vibrate. expected=%d, released=%d"

    .line 2001
    invoke-virtual {v3}, Lcom/android/server/vibrator/VendorVibrationSession;->getSessionId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p4, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1998
    invoke-static {p3, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    :catchall_65
    move-exception p0

    goto/16 :goto_16d

    .line 2004
    :cond_68
    :goto_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_31 .. :try_end_69} :catchall_65

    .line 2058
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 2006
    :cond_6d
    :try_start_6d
    invoke-virtual {v3}, Lcom/android/server/vibrator/VendorVibrationSession;->wasEndRequested()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 2007
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_81

    .line 2008
    const-string p1, "VibratorManagerService"

    const-string/jumbo p2, "session vibrate; session is ending, vibration ignored"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    :cond_81
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object p1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p0, p4, p3, p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mcreateVibrationAttemptDebugInfo(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/android/server/vibrator/VendorVibrationSession;->notifyVibrationAttempt(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    .line 2012
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_6d .. :try_end_8d} :catchall_65

    .line 2058
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 2014
    :cond_91
    :try_start_91
    invoke-static {p4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$smisEffectValid(Landroid/os/CombinedVibration;)Z

    move-result v4

    if-nez v4, :cond_a7

    .line 2015
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object p1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p0, p4, p3, p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mcreateVibrationAttemptDebugInfo(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/android/server/vibrator/VendorVibrationSession;->notifyVibrationAttempt(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    .line 2017
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_91 .. :try_end_a3} :catchall_65

    .line 2058
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 2019
    :cond_a7
    :try_start_a7
    invoke-virtual {p4}, Landroid/os/CombinedVibration;->getDuration()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-nez v4, :cond_c4

    .line 2021
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object p1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p0, p4, p3, p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mcreateVibrationAttemptDebugInfo(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/android/server/vibrator/VendorVibrationSession;->notifyVibrationAttempt(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    .line 2023
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_a7 .. :try_end_c0} :catchall_65

    .line 2058
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 2026
    :cond_c4
    :try_start_c4
    new-instance v4, Lcom/android/server/vibrator/HalVibration;

    invoke-direct {v4, p3, p4}, Lcom/android/server/vibrator/HalVibration;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)V

    .line 2028
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v5, v5, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v6, v5}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    invoke-virtual {v4, v6}, Lcom/android/server/vibrator/HalVibration;->fillFallbacks(Ljava/util/function/IntFunction;)V

    .line 2031
    iget-object v5, p3, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v5

    if-eqz v5, :cond_e8

    .line 2035
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v5, v5, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 2038
    :cond_e8
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_10e

    .line 2039
    const-string v5, "VibratorManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting vibrate for vibration "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " in session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    :cond_10e
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 2044
    invoke-virtual {v3}, Lcom/android/server/vibrator/VendorVibrationSession;->getDeviceAdapter()Lcom/android/server/vibrator/DeviceAdapter;

    move-result-object p2

    invoke-static {p1, v4, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mcreateSessionVibrationStepConductor(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object p1

    .line 2045
    invoke-virtual {v3, p1}, Lcom/android/server/vibrator/VendorVibrationSession;->maybeSetVibrationConductor(Lcom/android/server/vibrator/VibrationStepConductor;)Z

    move-result p2

    if-eqz p2, :cond_138

    .line 2046
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrationThread(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationThread;->runVibrationOnVibrationThread(Lcom/android/server/vibrator/VibrationStepConductor;)Z

    move-result p0

    if-nez p0, :cond_143

    .line 2048
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object p1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;)V

    invoke-virtual {v4, p0}, Lcom/android/server/vibrator/HalVibration;->end(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 2049
    invoke-virtual {v3}, Lcom/android/server/vibrator/VendorVibrationSession;->clearVibrationConductor()Lcom/android/server/vibrator/VibrationStepConductor;

    goto :goto_143

    .line 2053
    :cond_138
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object p1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p0, p4, p3, p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mcreateVibrationAttemptDebugInfo(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/android/server/vibrator/VendorVibrationSession;->notifyVibrationAttempt(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    .line 2056
    :cond_143
    :goto_143
    monitor-exit v0
    :try_end_144
    .catchall {:try_start_c4 .. :try_end_144} :catchall_65

    .line 2058
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1989
    :cond_148
    :try_start_148
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_168

    .line 1990
    const-string p1, "VibratorManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VibrationSession invalid on session vibrate. currentSession="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_168
    monitor-exit v0
    :try_end_169
    .catchall {:try_start_148 .. :try_end_169} :catchall_65

    .line 2058
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 2056
    :goto_16d
    :try_start_16d
    monitor-exit v0
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_65

    :try_start_16e
    throw p0
    :try_end_16f
    .catchall {:try_start_16e .. :try_end_16f} :catchall_16f

    :catchall_16f
    move-exception p0

    .line 2058
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2059
    throw p0
.end method
