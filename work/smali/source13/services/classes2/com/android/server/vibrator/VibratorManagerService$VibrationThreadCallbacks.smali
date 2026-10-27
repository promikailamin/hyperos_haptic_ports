.class final Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VibrationThreadCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 2

    .line 1203
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    return-void
.end method


# virtual methods
.method public cancelSyncedVibration()V
    .registers 2

    .line 1221
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->cancelSynced()V

    .line 1222
    return-void
.end method

.method public noteVibratorOff(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 1246
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmBatteryStatsService(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V

    .line 1247
    const/16 v0, 0x54

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 1251
    goto :goto_12

    .line 1250
    :catch_11
    move-exception v0

    .line 1252
    :goto_12
    return-void
.end method

.method public noteVibratorOn(IJ)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "duration"    # J

    .line 1227
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_7

    .line 1228
    return-void

    .line 1230
    :cond_7
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p2, v0

    if-nez v0, :cond_12

    .line 1233
    const-wide/16 p2, 0x1388

    .line 1235
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmBatteryStatsService(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 1236
    const/16 v0, 0x54

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v1, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IJ)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_24} :catch_25

    .line 1240
    goto :goto_26

    .line 1239
    :catch_25
    move-exception v0

    .line 1241
    :goto_26
    return-void
.end method

.method public onVibrationCompleted(JLcom/android/server/vibrator/Vibration$Status;)V
    .registers 7
    .param p1, "vibrationId"    # J
    .param p3, "status"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 1257
    const-string v0, "VibratorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finished with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1260
    :try_start_29
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v1

    .line 1261
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_46

    .line 1262
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1, p3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mreportFinishedVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 1264
    :cond_46
    monitor-exit v0

    .line 1265
    return-void

    .line 1264
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public onVibrationThreadReleased(J)V
    .registers 10
    .param p1, "vibrationId"    # J

    .line 1270
    const-string v0, "VibratorManagerService"

    const-string v1, "VibrationThread released after finished vibration"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1274
    :try_start_e
    const-string v1, "VibratorManagerService"

    const-string v2, "Processing VibrationThread released callback"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v1

    .line 1277
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_59

    .line 1278
    const-string v1, "VibratorManagerService"

    const-string v2, "VibrationId mismatch on release. expected=%d, released=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v5

    .line 1280
    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1278
    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_59
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)V

    .line 1283
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmNextVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 1284
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmNextVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v1

    .line 1285
    .local v1, "nextConductor":Lcom/android/server/vibrator/VibrationStepConductor;
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3, v2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmNextVibration(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)V

    .line 1286
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2, v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mstartVibrationOnThreadLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v2

    .line 1287
    .local v2, "status":Lcom/android/server/vibrator/Vibration$Status;
    sget-object v3, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq v2, v3, :cond_85

    .line 1288
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 1291
    .end local v1    # "nextConductor":Lcom/android/server/vibrator/VibrationStepConductor;
    .end local v2    # "status":Lcom/android/server/vibrator/Vibration$Status;
    :cond_85
    monitor-exit v0

    .line 1292
    return-void

    .line 1291
    :catchall_87
    move-exception v1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_e .. :try_end_89} :catchall_87

    throw v1
.end method

.method public prepareSyncedVibration(J[I)Z
    .registers 6
    .param p1, "requiredCapabilities"    # J
    .param p3, "vibratorIds"    # [I

    .line 1207
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCapabilities(Lcom/android/server/vibrator/VibratorManagerService;)J

    move-result-wide v0

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-eqz v0, :cond_d

    .line 1209
    const/4 v0, 0x0

    return v0

    .line 1211
    :cond_d
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->prepareSynced([I)Z

    move-result v0

    return v0
.end method

.method public triggerSyncedVibration(J)Z
    .registers 4
    .param p1, "vibrationId"    # J

    .line 1216
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->triggerSynced(J)Z

    move-result v0

    return v0
.end method
