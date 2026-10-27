.class public final Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Lcom/android/server/vibrator/ExternalVibrationSession$VibratorManagerHooks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 2

    .line 1938
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    return-void
.end method


# virtual methods
.method public onExternalVibrationReleased(J)V
    .registers 11

    .line 1943
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1944
    const-string v0, "VibratorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "External vibration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    :cond_21
    const-string/jumbo v0, "onExternalVibrationReleased"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1948
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_9f

    .line 1949
    :try_start_31
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v3

    instance-of v4, v3, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-eqz v4, :cond_78

    check-cast v3, Lcom/android/server/vibrator/ExternalVibrationSession;

    .line 1957
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_61

    iget-wide v4, v3, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v6, v4, p1

    if-eqz v6, :cond_61

    .line 1958
    const-string v6, "VibratorManagerService"

    const-string v7, "VibrationId mismatch on external vibration release. expected=%d, released=%d"

    .line 1960
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1958
    invoke-static {v7, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :catchall_5f
    move-exception p0

    goto :goto_9d

    .line 1962
    :cond_61
    :goto_61
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p2, v3, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    const/4 v3, 0x0

    invoke-static {p1, v3, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$msetExternalControl(Lcom/android/server/vibrator/VibratorManagerService;ZLcom/android/server/vibrator/VibrationStats;)V

    .line 1963
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mclearCurrentSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V

    .line 1965
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mmaybeStartNextSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V

    .line 1966
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_31 .. :try_end_74} :catchall_5f

    .line 1968
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1950
    :cond_78
    :try_start_78
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_98

    .line 1951
    const-string p1, "VibratorManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VibrationSession invalid on external vibration release. currentSession="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_98
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_78 .. :try_end_99} :catchall_5f

    .line 1968
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1966
    :goto_9d
    :try_start_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_5f

    :try_start_9e
    throw p0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9f

    :catchall_9f
    move-exception p0

    .line 1968
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1969
    throw p0
.end method
