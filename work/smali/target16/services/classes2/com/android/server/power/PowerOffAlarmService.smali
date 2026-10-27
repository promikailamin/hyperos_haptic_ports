.class public Lcom/android/server/power/PowerOffAlarmService;
.super Lcom/android/server/SystemService;
.source "PowerOffAlarmService.java"


# instance fields
.field public final mAlarmChangedReceiver:Landroid/content/BroadcastReceiver;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public mIsAvailable:Z

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public mSystemReady:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAlarmManager(Lcom/android/server/power/PowerOffAlarmService;)Landroid/app/AlarmManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerOffAlarmService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemReady(Lcom/android/server/power/PowerOffAlarmService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/PowerOffAlarmService;->mSystemReady:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateAlarms(Lcom/android/server/power/PowerOffAlarmService;Landroid/app/AlarmManager;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerOffAlarmService;->updateAlarms(Landroid/app/AlarmManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/android/server/power/PowerOffAlarmService;->mIsAvailable:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/server/power/PowerOffAlarmService;->mSystemReady:Z

    .line 97
    new-instance v0, Lcom/android/server/power/PowerOffAlarmService$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerOffAlarmService$1;-><init>(Lcom/android/server/power/PowerOffAlarmService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerOffAlarmService;->mAlarmChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/server/power/PowerOffAlarmService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getIntent(Ljava/lang/String;J)Landroid/content/Intent;
    .registers 4

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x10000000

    .line 152
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    const-string p0, "com.qualcomm.qti.poweroffalarm"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string/jumbo p0, "time"

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized cancelPowerOffAlarm()V
    .registers 7

    monitor-enter p0

    .line 127
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerOffAlarmService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_12

    .line 129
    const-string v0, "PowerOffAlarmService"

    const-string v1, "cancelPowerOffAlarm: SharedPreferences is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 130
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    goto :goto_4d

    .line 132
    :cond_12
    :try_start_12
    const-string v1, "PowerOffAlarmServicenext_alarm_millis"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 133
    const-string v3, "PowerOffAlarmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancel power off alarm, Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v3, p0, Lcom/android/server/power/PowerOffAlarmService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-static {v4, v1, v2}, Lcom/android/server/power/PowerOffAlarmService;->getIntent(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PowerOffAlarmServicenext_alarm_millis"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4b
    .catchall {:try_start_12 .. :try_end_4b} :catchall_10

    .line 136
    monitor-exit p0

    return-void

    :goto_4d
    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_10

    throw v0
.end method

.method public final declared-synchronized getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 6

    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerOffAlarmService;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_28

    .line 110
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    .line 111
    invoke-static {v2}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "shared_prefs"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "PowerOffAlarmService_preferences.xml"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/android/server/power/PowerOffAlarmService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    .line 114
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerOffAlarmService;->mSharedPreferences:Landroid/content/SharedPreferences;

    goto :goto_28

    :catchall_26
    move-exception v0

    goto :goto_2c

    .line 116
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/android/server/power/PowerOffAlarmService;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_26

    monitor-exit p0

    return-object v0

    :goto_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_26

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_23

    .line 89
    iget-boolean p1, p0, Lcom/android/server/power/PowerOffAlarmService;->mIsAvailable:Z

    if-nez p1, :cond_9

    goto :goto_23

    .line 91
    :cond_9
    const-string p1, "PowerOffAlarmService"

    const-string/jumbo v0, "onBootPhase PHASE_BOOT_COMPLETED"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lcom/android/server/power/PowerOffAlarmService;->mContext:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/power/PowerOffAlarmService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/android/server/power/PowerOffAlarmService;->mSystemReady:Z

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerOffAlarmService;->updateAlarms(Landroid/app/AlarmManager;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public onStart()V
    .registers 6

    .line 65
    const-string v0, "Starting PowerOffAlarmService"

    const-string v1, "PowerOffAlarmService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-class v0, Lcom/android/server/power/PowerOffAlarmService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/android/server/power/PowerOffAlarmService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 69
    :try_start_12
    const-string v2, "com.qualcomm.qti.poweroffalarm"

    const-wide/16 v3, 0x0

    .line 70
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v3

    .line 69
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 71
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_28

    .line 72
    const-string p0, "Package com.qualcomm.qti.poweroffalarm is disabled - stopping"

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_27} :catch_44

    return-void

    :cond_28
    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/android/server/power/PowerOffAlarmService;->mIsAvailable:Z

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v2, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/android/server/power/PowerOffAlarmService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/power/PowerOffAlarmService;->mAlarmChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    const-string p0, "Registered alarm receiver"

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :catch_44
    const-string p0, "Could not find com.qualcomm.qti.poweroffalarm - stopping"

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final declared-synchronized setPowerOffAlarm(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 7

    monitor-enter p0

    .line 139
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerOffAlarmService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_13

    .line 141
    const-string p1, "PowerOffAlarmService"

    const-string/jumbo v0, "setPowerOffAlarm: SharedPreferences is null!"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 142
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    goto :goto_4a

    .line 144
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v1

    .line 145
    const-string p1, "PowerOffAlarmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set next power off alarm. Time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p1, p0, Lcom/android/server/power/PowerOffAlarmService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "org.codeaurora.poweroffalarm.action.SET_ALARM"

    invoke-static {v3, v1, v2}, Lcom/android/server/power/PowerOffAlarmService;->getIntent(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PowerOffAlarmServicenext_alarm_millis"

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_48
    .catchall {:try_start_13 .. :try_end_48} :catchall_11

    .line 148
    monitor-exit p0

    return-void

    :goto_4a
    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_11

    throw p1
.end method

.method public final declared-synchronized updateAlarms(Landroid/app/AlarmManager;)V
    .registers 2

    monitor-enter p0

    .line 120
    :try_start_1
    invoke-virtual {p1}, Landroid/app/AlarmManager;->getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object p1

    .line 121
    invoke-virtual {p0}, Lcom/android/server/power/PowerOffAlarmService;->cancelPowerOffAlarm()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_11

    if-nez p1, :cond_c

    .line 122
    monitor-exit p0

    return-void

    .line 123
    :cond_c
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerOffAlarmService;->setPowerOffAlarm(Landroid/app/AlarmManager$AlarmClockInfo;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_11

    .line 124
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method
