.class public Landroid/os/spc/PressureStateSettings;
.super Ljava/lang/Object;
.source "PressureStateSettings.java"


# static fields
.field public static final blacklist CAMERA_FG_INTERCEPT_PROC_RESTART_TIMEOUT:J = 0x1388L

.field public static final blacklist DEBUG_ALL:Z

.field public static final blacklist MEM_PRESSURE_WINDOW_NS:J

.field public static final blacklist ONLY_KILL_ONE_PKG:Z

.field public static final blacklist PREVIOUS_PROTECT_CRITICAL_COUNT:I

.field public static blacklist PROCESS_CLEANER_ENABLED:Z = false

.field public static final blacklist PROCESS_RESTART_INTERCEPT_ENABLE:Z

.field public static final blacklist PROCESS_TRACKER_ENABLE:Z

.field public static blacklist PROC_CLEAN_MIN_INTERVAL_MS:J = 0x0L

.field public static blacklist PROC_CLEAN_PSS_KB:J = 0x0L

.field public static blacklist PROC_COMMON_USED_PSS_LIMIT_KB:J = 0x0L

.field public static blacklist PROC_COMMON_USED_SWAPPSS_LIMIT_KB:J = 0x0L

.field public static final blacklist PROC_CPU_EXCEPTION_ENABLE:Z

.field public static final blacklist PROC_CPU_EXCEPTION_THRESHOLD:I

.field public static blacklist PROC_MEM_EXCEPTION_PSS_LIMIT_KB:J = 0x0L

.field private static final blacklist PROPERTY_PREFIX:Ljava/lang/String; = "persist.sys.spc."

.field public static final blacklist SCREEN_OFF_PROCESS_ACTIVE_MIX_THRESHOLD:I

.field public static final blacklist SCREEN_OFF_PROCESS_ACTIVE_THRESHOLD:I

.field public static final blacklist TAG:Ljava/lang/String; = "SystemPressureControl"

.field public static final blacklist WHITE_LIST_PKG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 14
    nop

    .line 15
    const-string v0, "debug.sys.spc"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/spc/PressureStateSettings;->DEBUG_ALL:Z

    .line 17
    nop

    .line 18
    const-string v0, "persist.sys.spc.window"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/os/spc/PressureStateSettings;->MEM_PRESSURE_WINDOW_NS:J

    .line 22
    nop

    .line 23
    const-string v0, "persist.sys.spc.enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/spc/PressureStateSettings;->PROCESS_CLEANER_ENABLED:Z

    .line 24
    nop

    .line 25
    const-string v0, "persist.sys.spc.cleanpss"

    const-wide/32 v2, 0xc800

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/os/spc/PressureStateSettings;->PROC_CLEAN_PSS_KB:J

    .line 26
    nop

    .line 27
    const-string v0, "persist.sys.spc.min.interval"

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/os/spc/PressureStateSettings;->PROC_CLEAN_MIN_INTERVAL_MS:J

    .line 29
    const-string v0, "persist.sys.spc.memthreshold.app.common_used"

    const-wide/32 v2, 0x180000

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/os/spc/PressureStateSettings;->PROC_COMMON_USED_PSS_LIMIT_KB:J

    .line 32
    const-string v2, "persist.sys.spc.memthreshold.app.swappss.compact"

    const-wide/16 v3, 0x7800

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/os/spc/PressureStateSettings;->PROC_COMMON_USED_SWAPPSS_LIMIT_KB:J

    .line 35
    const-wide/32 v2, 0x200000

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/os/spc/PressureStateSettings;->PROC_MEM_EXCEPTION_PSS_LIMIT_KB:J

    .line 39
    const-string v0, "persist.sys.spc.cpuexception.enable"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/spc/PressureStateSettings;->PROC_CPU_EXCEPTION_ENABLE:Z

    .line 41
    const-string v0, "persist.sys.spc.cpuexception.threshold"

    const/16 v3, 0x50

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/spc/PressureStateSettings;->PROC_CPU_EXCEPTION_THRESHOLD:I

    .line 45
    nop

    .line 46
    const-string v0, "persist.sys.spc.only_kill_one_pkg"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/spc/PressureStateSettings;->ONLY_KILL_ONE_PKG:Z

    .line 48
    nop

    .line 49
    const-string v0, "persist.sys.spc.whitepkg"

    const-string v3, "com.phonetest.application"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/spc/PressureStateSettings;->WHITE_LIST_PKG:Ljava/lang/String;

    .line 52
    nop

    .line 53
    const-string v0, "persist.sys.spc.proc_restart_enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/spc/PressureStateSettings;->PROCESS_RESTART_INTERCEPT_ENABLE:Z

    .line 55
    nop

    .line 56
    const-string v0, "persist.sys.spc.active_threshold"

    const/4 v3, 0x6

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/spc/PressureStateSettings;->SCREEN_OFF_PROCESS_ACTIVE_THRESHOLD:I

    .line 58
    nop

    .line 59
    const-string v0, "persist.sys.spc.active_mix_threshold"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/spc/PressureStateSettings;->SCREEN_OFF_PROCESS_ACTIVE_MIX_THRESHOLD:I

    .line 62
    nop

    .line 63
    const-string v0, "persist.sys.spc.protect.critical.count"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/spc/PressureStateSettings;->PREVIOUS_PROTECT_CRITICAL_COUNT:I

    .line 65
    nop

    .line 66
    const-string v0, "persist.sys.spc.process.tracker.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/spc/PressureStateSettings;->PROCESS_TRACKER_ENABLE:Z

    .line 65
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
