.class Lcom/android/server/alarm/AlarmManagerService$5;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 2816
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public canScheduleExactAlarms(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2964
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCallingUid()I

    move-result v0

    .line 2965
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2966
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    .line 2967
    .local v2, "packageUid":I
    if-ne v0, v2, :cond_41

    .line 2971
    invoke-static {p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smisExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_24

    .line 2972
    return v4

    .line 2974
    :cond_24
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result v3

    if-nez v3, :cond_3f

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2975
    invoke-virtual {v3, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_3f

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2976
    invoke-virtual {v3, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v4, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    nop

    .line 2974
    :goto_40
    return v4

    .line 2968
    :cond_41
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot query canScheduleExactAlarms for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public currentNetworkTimeMillis()J
    .registers 6

    .line 3043
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    .line 3044
    .local v0, "time":Landroid/util/NtpTrustedTime;
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v1

    .line 3045
    .local v1, "ntpResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-eqz v1, :cond_15

    .line 3046
    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->currentTimeMillis()J

    move-result-wide v2

    return-wide v2

    .line 3048
    :cond_15
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v3, Ljava/time/DateTimeException;

    const-string v4, "Missing NTP fix"

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3075
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 3077
    :cond_f
    array-length v0, p3

    if-lez v0, :cond_23

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "--proto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3078
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_2f

    .line 3080
    :cond_23
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->dumpImpl(Landroid/util/IndentingPrintWriter;)V

    .line 3082
    :goto_2f
    return-void
.end method

.method public getConfigVersion()I
    .registers 4

    .line 3054
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    const-string v2, "getConfigVersion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3056
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->getVersion()I

    move-result v0

    return v0
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 11
    .param p1, "userId"    # I

    .line 3035
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 3036
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3035
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "getNextAlarmClock"

    const/4 v8, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 3038
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNextWakeFromIdleTime()J
    .registers 3

    .line 3030
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getNextWakeFromIdleTimeImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasScheduleExactAlarm(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2981
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCallingUid()I

    move-result v0

    .line 2982
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v1, p2, :cond_1e

    .line 2983
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v3, "hasScheduleExactAlarm"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2986
    :cond_1e
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 2987
    .local v1, "uid":I
    if-eq v0, v1, :cond_56

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_56

    .line 2988
    :cond_33
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot query hasScheduleExactAlarm for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2991
    :cond_56
    :goto_56
    if-lez v1, :cond_5f

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_60

    :cond_5f
    const/4 v2, 0x0

    :goto_60
    return v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3088
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService$ShellCmd-IA;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3089
    return-void
.end method

.method public remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 6
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;

    .line 3019
    if-nez p1, :cond_d

    if-nez p2, :cond_d

    .line 3020
    const-string v0, "AlarmManager"

    const-string/jumbo v1, "remove() with no intent or listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    return-void

    .line 3023
    :cond_d
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3024
    :try_start_12
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 3025
    monitor-exit v0

    .line 3026
    return-void

    .line 3025
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public sendPendingAlarmByAurogon(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 3062
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3063
    :try_start_5
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingAlarmsByAurogon:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3064
    .local v1, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_18

    goto :goto_47

    .line 3067
    :cond_18
    const-string v2, "Aurogon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendPendingAlarm  uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mPendingAlarmsByAurogon:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3069
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v3

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mdeliverPendingBackgroundAlarmsLocked(Lcom/android/server/alarm/AlarmManagerService;Ljava/util/ArrayList;J)V

    .line 3070
    .end local v1    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    monitor-exit v0

    .line 3071
    return-void

    .line 3065
    .restart local v1    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_47
    :goto_47
    monitor-exit v0

    return-void

    .line 3070
    .end local v1    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 43
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "triggerAtTime"    # J
    .param p5, "windowLength"    # J
    .param p7, "interval"    # J
    .param p9, "flags"    # I
    .param p10, "operation"    # Landroid/app/PendingIntent;
    .param p11, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p12, "listenerTag"    # Ljava/lang/String;
    .param p13, "workSource"    # Landroid/os/WorkSource;
    .param p14, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2822
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCallingUid()I

    move-result v14

    .line 2823
    .local v14, "callingUid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 2827
    .local v13, "callingUserId":I
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v15, v2, v3, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-ne v14, v1, :cond_1c0

    .line 2834
    cmp-long v1, p7, v2

    if-eqz v1, :cond_2f

    if-nez p11, :cond_27

    goto :goto_2f

    .line 2835
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Repeating alarms cannot use AlarmReceivers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2838
    :cond_2f
    :goto_2f
    if-eqz p13, :cond_42

    .line 2839
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2841
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2839
    const-string v5, "android.permission.UPDATE_DEVICE_STATS"

    const-string v6, "AlarmManager.set"

    invoke-virtual {v1, v5, v4, v14, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2844
    :cond_42
    and-int/lit8 v1, p9, 0x10

    if-eqz v1, :cond_54

    .line 2847
    const/16 v1, 0x3e8

    if-eq v14, v1, :cond_4f

    .line 2849
    and-int/lit8 v1, p9, -0x11

    move-wide/from16 v4, p5

    .end local p9    # "flags":I
    .local v1, "flags":I
    goto :goto_58

    .line 2852
    .end local v1    # "flags":I
    .restart local p9    # "flags":I
    :cond_4f
    const-wide/16 v4, 0x0

    move/from16 v1, p9

    .end local p5    # "windowLength":J
    .local v4, "windowLength":J
    goto :goto_58

    .line 2844
    .end local v4    # "windowLength":J
    .restart local p5    # "windowLength":J
    :cond_54
    move-wide/from16 v4, p5

    move/from16 v1, p9

    .line 2857
    .end local p5    # "windowLength":J
    .end local p9    # "flags":I
    .restart local v1    # "flags":I
    .restart local v4    # "windowLength":J
    :goto_58
    and-int/lit8 v1, v1, -0x2b

    .line 2862
    if-eqz p14, :cond_63

    .line 2863
    or-int/lit8 v1, v1, 0x2

    .line 2864
    const-wide/16 v4, 0x0

    move-wide/from16 v19, v4

    goto :goto_92

    .line 2870
    :cond_63
    if-nez p13, :cond_90

    invoke-static {v14}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v6

    if-nez v6, :cond_89

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    .line 2871
    invoke-static {v14, v6}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v6

    if-nez v6, :cond_89

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v6}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAppStateTracker(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;

    move-result-object v6

    if-eqz v6, :cond_90

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v6}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAppStateTracker(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;

    move-result-object v6

    .line 2873
    invoke-virtual {v6, v14}, Lcom/android/server/AppStateTrackerImpl;->isUidPowerSaveUserExempt(I)Z

    move-result v6

    if-eqz v6, :cond_90

    .line 2874
    :cond_89
    or-int/lit8 v1, v1, 0x8

    .line 2875
    and-int/lit8 v1, v1, -0x45

    move-wide/from16 v19, v4

    goto :goto_92

    .line 2878
    :cond_90
    move-wide/from16 v19, v4

    .end local v4    # "windowLength":J
    .local v19, "windowLength":J
    :goto_92
    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_9a

    move v4, v6

    goto :goto_9b

    :cond_9a
    move v4, v5

    :goto_9b
    move/from16 v21, v4

    .line 2879
    .local v21, "allowWhileIdle":Z
    cmp-long v2, v19, v2

    if-nez v2, :cond_a3

    move v2, v6

    goto :goto_a4

    :cond_a3
    move v2, v5

    :goto_a4
    move/from16 v22, v2

    .line 2883
    .local v22, "exact":Z
    const/4 v2, -0x1

    .line 2884
    .local v2, "exactAllowReason":I
    const/4 v3, 0x0

    .line 2885
    .local v3, "idleOptions":Landroid/os/Bundle;
    and-int/lit8 v4, v1, 0x40

    if-eqz v4, :cond_c5

    .line 2886
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 2888
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2886
    const-string v6, "android.permission.SCHEDULE_PRIORITIZED_ALARM"

    const-string v7, "AlarmManager.setPrioritized"

    invoke-virtual {v4, v6, v5, v14, v7}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2890
    and-int/lit8 v1, v1, -0x5

    move/from16 v23, v2

    move-object/from16 v24, v3

    goto/16 :goto_190

    .line 2892
    :cond_c5
    if-nez v22, :cond_d0

    if-eqz v21, :cond_ca

    goto :goto_d0

    :cond_ca
    move/from16 v23, v2

    move-object/from16 v24, v3

    goto/16 :goto_190

    .line 2895
    :cond_d0
    :goto_d0
    invoke-static {v15, v13}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smisExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_fc

    .line 2896
    move/from16 v4, v22

    .line 2897
    .local v4, "needsPermission":Z
    if-nez v22, :cond_dc

    move v5, v6

    .line 2898
    .local v5, "lowerQuota":Z
    :cond_dc
    if-eqz v22, :cond_f3

    .line 2899
    if-eqz p14, :cond_e9

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_f1

    .line 2900
    :cond_e9
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    :goto_f1
    move-object v3, v6

    goto :goto_10f

    .line 2902
    :cond_f3
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_10f

    .line 2905
    .end local v4    # "needsPermission":Z
    .end local v5    # "lowerQuota":Z
    :cond_fc
    const/4 v4, 0x0

    .line 2906
    .restart local v4    # "needsPermission":Z
    move/from16 v5, v21

    .line 2907
    .restart local v5    # "lowerQuota":Z
    if-eqz v21, :cond_10a

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_10b

    :cond_10a
    move-object v6, v7

    :goto_10b
    move-object v3, v6

    .line 2908
    if-eqz v22, :cond_10f

    .line 2909
    const/4 v2, 0x2

    .line 2912
    :cond_10f
    :goto_10f
    if-eqz v4, :cond_181

    .line 2913
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v6, v15, v14}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_11b

    .line 2914
    const/4 v2, 0x3

    goto :goto_181

    .line 2915
    :cond_11b
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v6, v15, v14}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_125

    .line 2916
    const/4 v2, 0x0

    goto :goto_181

    .line 2918
    :cond_125
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v6, v14}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result v6

    if-eqz v6, :cond_12f

    .line 2919
    const/4 v2, 0x1

    goto :goto_16d

    .line 2921
    :cond_12f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caller "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " needs to hold "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " or "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "android.permission.USE_EXACT_ALARM"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " to set exact alarms."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2926
    .local v6, "errorMessage":Ljava/lang/String;
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v8, v8, Lcom/android/server/alarm/AlarmManagerService$Constants;->CRASH_NON_CLOCK_APPS:Z

    if-nez v8, :cond_17b

    .line 2929
    const-string v8, "AlarmManager"

    invoke-static {v8, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    .end local v6    # "errorMessage":Ljava/lang/String;
    :goto_16d
    if-eqz v21, :cond_177

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    :cond_177
    move-object v3, v7

    .line 2943
    move/from16 v5, v21

    goto :goto_181

    .line 2927
    .restart local v6    # "errorMessage":Ljava/lang/String;
    :cond_17b
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2946
    .end local v6    # "errorMessage":Ljava/lang/String;
    :cond_181
    :goto_181
    if-eqz v5, :cond_18c

    .line 2947
    and-int/lit8 v1, v1, -0x5

    .line 2948
    or-int/lit8 v1, v1, 0x20

    move/from16 v23, v2

    move-object/from16 v24, v3

    goto :goto_190

    .line 2946
    :cond_18c
    move/from16 v23, v2

    move-object/from16 v24, v3

    .line 2951
    .end local v2    # "exactAllowReason":I
    .end local v3    # "idleOptions":Landroid/os/Bundle;
    .end local v4    # "needsPermission":Z
    .end local v5    # "lowerQuota":Z
    .local v23, "exactAllowReason":I
    .local v24, "idleOptions":Landroid/os/Bundle;
    :goto_190
    if-eqz v22, :cond_197

    .line 2953
    or-int/lit8 v1, v1, 0x1

    move/from16 v25, v1

    goto :goto_199

    .line 2951
    :cond_197
    move/from16 v25, v1

    .line 2957
    .end local v1    # "flags":I
    .local v25, "flags":I
    :goto_199
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, v19

    move-wide/from16 v7, p7

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, v25

    move/from16 v26, v13

    .end local v13    # "callingUserId":I
    .local v26, "callingUserId":I
    move-object/from16 v13, p13

    move/from16 v27, v14

    .end local v14    # "callingUid":I
    .local v27, "callingUid":I
    move-object/from16 v14, p14

    move-object v0, v15

    move/from16 v15, v27

    move-object/from16 v16, p1

    move-object/from16 v17, v24

    move/from16 v18, v23

    invoke-virtual/range {v1 .. v18}, Lcom/android/server/alarm/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 2960
    return-void

    .line 2829
    .end local v19    # "windowLength":J
    .end local v21    # "allowWhileIdle":Z
    .end local v22    # "exact":Z
    .end local v23    # "exactAllowReason":I
    .end local v24    # "idleOptions":Landroid/os/Bundle;
    .end local v25    # "flags":I
    .end local v26    # "callingUserId":I
    .end local v27    # "callingUid":I
    .restart local v13    # "callingUserId":I
    .restart local v14    # "callingUid":I
    .restart local p5    # "windowLength":J
    .restart local p9    # "flags":I
    :cond_1c0
    move/from16 v27, v14

    move-object v0, v15

    .end local v14    # "callingUid":I
    .restart local v27    # "callingUid":I
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not belong to the calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, v27

    .end local v27    # "callingUid":I
    .local v3, "callingUid":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setTime(J)Z
    .registers 6
    .param p1, "millis"    # J

    .line 2996
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_TIME"

    const-string/jumbo v2, "setTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3000
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->setTimeImpl(J)Z

    move-result v0

    return v0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 5
    .param p1, "tz"    # Ljava/lang/String;

    .line 3005
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_TIME_ZONE"

    const-string/jumbo v2, "setTimeZone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3009
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3011
    .local v0, "oldId":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/alarm/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 3013
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3014
    nop

    .line 3015
    return-void

    .line 3013
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3014
    throw v2
.end method
