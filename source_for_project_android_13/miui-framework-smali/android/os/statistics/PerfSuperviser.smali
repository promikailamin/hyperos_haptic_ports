.class public Landroid/os/statistics/PerfSuperviser;
.super Ljava/lang/Object;
.source "PerfSuperviser.java"


# static fields
.field public static final blacklist DEBUGGING:Z = false

.field public static blacklist MY_PID:I = 0x0

.field public static final blacklist TAG:Ljava/lang/String; = "MiuiPerfSuperviser"

.field public static blacklist packageName:Ljava/lang/String;

.field public static blacklist processName:Ljava/lang/String;

.field private static volatile blacklist sInitialized:Z

.field private static volatile blacklist sStarted:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 12
    const/4 v0, -0x1

    sput v0, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    .line 13
    const-string v0, ""

    sput-object v0, Landroid/os/statistics/PerfSuperviser;->processName:Ljava/lang/String;

    .line 14
    sput-object v0, Landroid/os/statistics/PerfSuperviser;->packageName:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/statistics/PerfSuperviser;->sInitialized:Z

    .line 17
    sput-boolean v0, Landroid/os/statistics/PerfSuperviser;->sStarted:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist init(ZZ)V
    .registers 12
    .param p0, "isPrimaryZygote"    # Z
    .param p1, "hasSecondaryZygote"    # Z

    const-class v0, Landroid/os/statistics/PerfSuperviser;

    monitor-enter v0

    .line 20
    :try_start_3
    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_26

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    .line 22
    monitor-exit v0

    return-void

    .line 24
    :cond_c
    :try_start_c
    sget-boolean v1, Landroid/os/statistics/PerfSuperviser;->sInitialized:Z

    if-nez v1, :cond_24

    .line 25
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->init()V

    .line 26
    sget v5, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    sget v6, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    const/16 v7, 0xa

    const/high16 v8, 0x10000

    sget v9, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    move v3, p0

    move v4, p1

    invoke-static/range {v3 .. v9}, Landroid/os/statistics/PerfSuperviser;->nativeInit(ZZIIIII)V

    .line 32
    sput-boolean v2, Landroid/os/statistics/PerfSuperviser;->sInitialized:Z
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_26

    .line 34
    :cond_24
    monitor-exit v0

    return-void

    .line 19
    .end local p0    # "isPrimaryZygote":Z
    .end local p1    # "hasSecondaryZygote":Z
    :catchall_26
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static native blacklist nativeInit(ZZIIIII)V
.end method

.method private static native blacklist nativeStart(ZZI)V
.end method

.method private static native blacklist nativeUpdateProcessInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native blacklist setThreadPerfSupervisionOn(Z)V
.end method

.method public static declared-synchronized blacklist start(Z)V
    .registers 3
    .param p0, "isSystemServer"    # Z

    const-class v0, Landroid/os/statistics/PerfSuperviser;

    monitor-enter v0

    .line 37
    :try_start_3
    const-string v1, ""

    invoke-static {p0, v1}, Landroid/os/statistics/PerfSuperviser;->start(ZLjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 38
    monitor-exit v0

    return-void

    .line 36
    .end local p0    # "isSystemServer":Z
    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist start(ZLjava/lang/String;)V
    .registers 6
    .param p0, "isSystemServer"    # Z
    .param p1, "niceName"    # Ljava/lang/String;

    const-class v0, Landroid/os/statistics/PerfSuperviser;

    monitor-enter v0

    .line 41
    :try_start_3
    sget-boolean v1, Landroid/os/statistics/PerfSuperviser;->sInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_70

    if-nez v1, :cond_9

    .line 42
    monitor-exit v0

    return-void

    .line 44
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_70

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 46
    monitor-exit v0

    return-void

    .line 48
    :cond_12
    :try_start_12
    sget-boolean v1, Landroid/os/statistics/PerfSuperviser;->sStarted:Z

    if-nez v1, :cond_6e

    .line 49
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sput v1, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    .line 50
    if-eqz p0, :cond_27

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "system_server"

    goto :goto_2d

    :cond_27
    if-nez p1, :cond_2c

    const-string v1, ""

    goto :goto_2d

    :cond_2c
    move-object v1, p1

    :goto_2d
    sput-object v1, Landroid/os/statistics/PerfSuperviser;->processName:Ljava/lang/String;

    .line 51
    if-nez p0, :cond_42

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_42

    :cond_38
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    goto :goto_44

    :cond_42
    :goto_42
    const-string v1, ""

    :goto_44
    sput-object v1, Landroid/os/statistics/PerfSuperviser;->packageName:Ljava/lang/String;

    .line 52
    sget-object v3, Landroid/os/statistics/PerfSuperviser;->processName:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/os/statistics/PerfSuperviser;->nativeUpdateProcessInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Landroid/os/statistics/OsUtils;->isIsolatedProcess()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 54
    const-string v1, "com.miui.daemon"

    sget-object v3, Landroid/os/statistics/PerfSuperviser;->processName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 55
    .local v1, "isMiuiDaemon":Z
    invoke-static {p0, v1}, Landroid/os/statistics/PerfSupervisionSettings;->notifySupervisionReady(ZZ)V

    .line 56
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->getSupervisionLevel()I

    move-result v3

    invoke-static {p0, v1, v3}, Landroid/os/statistics/PerfSuperviser;->nativeStart(ZZI)V

    .line 57
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isPerfEventReportable()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 58
    invoke-static {}, Landroid/os/statistics/PerfEventReporter;->start()V

    .line 65
    .end local v1    # "isMiuiDaemon":Z
    :cond_6c
    sput-boolean v2, Landroid/os/statistics/PerfSuperviser;->sStarted:Z
    :try_end_6e
    .catchall {:try_start_12 .. :try_end_6e} :catchall_70

    .line 67
    :cond_6e
    monitor-exit v0

    return-void

    .line 40
    .end local p0    # "isSystemServer":Z
    .end local p1    # "niceName":Ljava/lang/String;
    :catchall_70
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static blacklist updateProcessInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "_processName"    # Ljava/lang/String;
    .param p1, "_packageName"    # Ljava/lang/String;

    .line 70
    sget-boolean v0, Landroid/os/statistics/PerfSuperviser;->sStarted:Z

    if-eqz v0, :cond_b

    .line 71
    sput-object p0, Landroid/os/statistics/PerfSuperviser;->processName:Ljava/lang/String;

    .line 72
    sput-object p1, Landroid/os/statistics/PerfSuperviser;->packageName:Ljava/lang/String;

    .line 73
    invoke-static {p0, p1}, Landroid/os/statistics/PerfSuperviser;->nativeUpdateProcessInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_b
    return-void
.end method
