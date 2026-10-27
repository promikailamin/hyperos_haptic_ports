.class Lcom/android/server/alarm/AlarmManagerService$Injector;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNativeData:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 4573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4574
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    .line 4575
    return-void
.end method


# virtual methods
.method close()V
    .registers 3

    .line 4631
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smclose(J)V

    .line 4632
    return-void
.end method

.method getAlarmWakeLock()Landroid/os/PowerManager$WakeLock;
    .registers 4

    .line 4643
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4644
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "*alarm*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    return-object v1
.end method

.method getAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .registers 2

    .line 4653
    nop

    .line 4654
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4653
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    return-object v0
.end method

.method getCallingUid()I
    .registers 2

    .line 4613
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method getClockReceiver(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;
    .registers 3
    .param p1, "service"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 4658
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    return-object v0
.end method

.method getCurrentTimeMillis()J
    .registers 3

    .line 4639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method getElapsedRealtime()J
    .registers 3

    .line 4635
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method getNextAlarm(I)J
    .registers 4
    .param p1, "type"    # I

    .line 4617
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smgetNextAlarm(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method getSystemUiUid(Landroid/content/pm/PackageManagerInternal;)I
    .registers 6
    .param p1, "pm"    # Landroid/content/pm/PackageManagerInternal;

    .line 4648
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    return v0
.end method

.method init()V
    .registers 3

    .line 4578
    const-string v0, "alarm_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4579
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$sminit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    .line 4580
    return-void
.end method

.method isAlarmDriverPresent()Z
    .registers 5

    .line 4587
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method registerContentObserver(Landroid/database/ContentObserver;Landroid/net/Uri;)V
    .registers 5
    .param p1, "contentObserver"    # Landroid/database/ContentObserver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 4662
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4663
    return-void
.end method

.method registerDeviceConfigListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 4666
    nop

    .line 4667
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 4666
    const-string v1, "alarm_manager"

    invoke-static {v1, v0, p1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 4668
    return-void
.end method

.method setAlarm(IJ)V
    .registers 18
    .param p1, "type"    # I
    .param p2, "millis"    # J

    .line 4594
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_b

    .line 4595
    const-wide/16 v0, 0x0

    .line 4596
    .local v0, "alarmSeconds":J
    const-wide/16 v2, 0x0

    .local v2, "alarmNanoseconds":J
    goto :goto_16

    .line 4598
    .end local v0    # "alarmSeconds":J
    .end local v2    # "alarmNanoseconds":J
    :cond_b
    const-wide/16 v0, 0x3e8

    div-long v2, p2, v0

    .line 4599
    .local v2, "alarmSeconds":J
    rem-long v4, p2, v0

    mul-long/2addr v4, v0

    mul-long/2addr v0, v4

    move-wide v12, v0

    move-wide v0, v2

    move-wide v2, v12

    .line 4602
    .restart local v0    # "alarmSeconds":J
    .local v2, "alarmNanoseconds":J
    :goto_16
    move-object v11, p0

    iget-wide v4, v11, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    move v6, p1

    move-wide v7, v0

    move-wide v9, v2

    invoke-static/range {v4 .. v10}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smset(JIJJ)I

    move-result v4

    .line 4604
    .local v4, "result":I
    if-eqz v4, :cond_76

    .line 4605
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 4606
    .local v5, "nowElapsed":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to set kernel alarm, now="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " @ ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "), ret = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4608
    invoke-static {v4}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4606
    const-string v9, "AlarmManager"

    invoke-static {v9, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 4604
    .end local v5    # "nowElapsed":J
    :cond_76
    move v8, p1

    .line 4610
    :goto_77
    return-void
.end method

.method setKernelTime(J)V
    .registers 7
    .param p1, "millis"    # J

    .line 4625
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 4626
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smsetKernelTime(JJ)I

    .line 4628
    :cond_b
    return-void
.end method

.method setKernelTimezone(I)V
    .registers 4
    .param p1, "minutesWest"    # I

    .line 4621
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smsetKernelTimezone(JI)I

    .line 4622
    return-void
.end method

.method waitForAlarm()I
    .registers 3

    .line 4583
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smwaitForAlarm(J)I

    move-result v0

    return v0
.end method
