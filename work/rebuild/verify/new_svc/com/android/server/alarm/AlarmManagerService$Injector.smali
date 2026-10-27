.class Lcom/android/server/alarm/AlarmManagerService$Injector;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mNativeData:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 4339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4340
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 4398
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smclose(J)V

    return-void
.end method

.method public getAlarmWakeLock()Landroid/os/PowerManager$WakeLock;
    .registers 3

    .line 4412
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 v0, 0x1

    .line 4413
    const-string v1, "*alarm*"

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    return-object p0
.end method

.method public getAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .registers 1

    .line 4422
    const-string p0, "appops"

    .line 4423
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 4422
    invoke-static {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p0

    return-object p0
.end method

.method public getCallingUid()I
    .registers 1

    .line 4379
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public getClockReceiver(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;
    .registers 2

    .line 4427
    new-instance p0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    return-object p0
.end method

.method public getCurrentTimeMillis()J
    .registers 3

    .line 4408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getElapsedRealtimeMillis()J
    .registers 3

    .line 4403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextAlarm(I)J
    .registers 4

    .line 4383
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smgetNextAlarm(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getSystemUiUid(Landroid/content/pm/PackageManagerInternal;)I
    .registers 5

    .line 4417
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-wide/32 v0, 0x100000

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    return p0
.end method

.method public init()V
    .registers 3

    .line 4344
    const-string v0, "alarm_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4345
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$sminit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    return-void
.end method

.method public initializeTimeIfRequired()V
    .registers 1

    .line 4387
    invoke-static {}, Lcom/android/server/SystemClockTime;->initializeIfRequired()V

    return-void
.end method

.method public isAlarmDriverPresent()Z
    .registers 5

    .line 4353
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public registerDeviceConfigListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .registers 3

    .line 4431
    const-string p0, "alarm_manager"

    .line 4432
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 4431
    invoke-static {p0, v0, p1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public setAlarm(IJ)V
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_9

    move-wide v7, v0

    move-wide v9, v7

    goto :goto_14

    :cond_9
    const-wide/16 v0, 0x3e8

    .line 4364
    div-long v2, p2, v0

    .line 4365
    rem-long/2addr p2, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p2

    move-wide v9, v0

    move-wide v7, v2

    .line 4368
    :goto_14
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    move v6, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smset(JIJJ)I

    move-result p0

    if-eqz p0, :cond_63

    .line 4371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 4372
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to set kernel alarm, now="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " type="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " @ ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "), ret = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4374
    invoke-static {p0}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4372
    const-string p1, "AlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    return-void
.end method

.method public setCurrentTimeMillis(JILjava/lang/String;)V
    .registers 5

    .line 4394
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/SystemClockTime;->setTimeAndConfidence(JILjava/lang/String;)V

    return-void
.end method

.method public waitForAlarm()I
    .registers 3

    .line 4349
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smwaitForAlarm(J)I

    move-result p0

    return p0
.end method
