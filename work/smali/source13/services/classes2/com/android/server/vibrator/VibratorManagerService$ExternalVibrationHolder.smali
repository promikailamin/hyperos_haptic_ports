.class final Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExternalVibrationHolder"
.end annotation


# instance fields
.field public final externalVibration:Landroid/os/ExternalVibration;

.field private mEndTimeDebug:J

.field private mEndUptimeMillis:J

.field private final mStartTimeDebug:J

.field private final mStartUptimeMillis:J

.field private mStatus:Lcom/android/server/vibrator/Vibration$Status;

.field public scale:I

.field final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;)V
    .registers 5
    .param p2, "externalVibration"    # Landroid/os/ExternalVibration;

    .line 1365
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1366
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 1367
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    .line 1368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStartUptimeMillis:J

    .line 1369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStartTimeDebug:J

    .line 1370
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 1371
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 1384
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1385
    :try_start_7
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 1387
    const-string v1, "VibratorManagerService"

    const-string v2, "External vibration finished because binder died"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/Vibration$Status;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendExternalVibrateLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 1392
    :cond_1e
    monitor-exit v0

    .line 1393
    return-void

    .line 1392
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public end(Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 4
    .param p1, "status"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 1374
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq v0, v1, :cond_7

    .line 1376
    return-void

    .line 1378
    :cond_7
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 1379
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mEndUptimeMillis:J

    .line 1380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mEndTimeDebug:J

    .line 1381
    return-void
.end method

.method public getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;
    .registers 19

    .line 1396
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mEndUptimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_d

    const-wide/16 v1, -0x1

    goto :goto_10

    :cond_d
    iget-wide v3, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStartUptimeMillis:J

    sub-long/2addr v1, v3

    :goto_10
    move-wide v8, v1

    .line 1397
    .local v8, "durationMs":J
    new-instance v1, Lcom/android/server/vibrator/Vibration$DebugInfo;

    iget-wide v4, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStartTimeDebug:J

    iget-wide v6, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mEndTimeDebug:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v2, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    int-to-float v12, v2

    iget-object v2, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 1400
    invoke-virtual {v2}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v13

    iget-object v2, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v2}, Landroid/os/ExternalVibration;->getUid()I

    move-result v14

    iget-object v2, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 1401
    invoke-virtual {v2}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    iget-object v2, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    move-object v3, v1

    move-object/from16 v17, v2

    invoke-direct/range {v3 .. v17}, Lcom/android/server/vibrator/Vibration$DebugInfo;-><init>(JJJLandroid/os/CombinedVibration;Landroid/os/CombinedVibration;FLandroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 1397
    return-object v1
.end method
