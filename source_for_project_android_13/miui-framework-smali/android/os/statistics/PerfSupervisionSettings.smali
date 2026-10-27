.class public Landroid/os/statistics/PerfSupervisionSettings;
.super Ljava/lang/Object;
.source "PerfSupervisionSettings.java"


# static fields
.field private static final blacklist DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

.field private static final blacklist DEFAULT_DIVISION_RATIO:I

.field private static final blacklist DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

.field private static final blacklist DEFAULT_LEVEL:I

.field private static final blacklist DEFAULT_SOFT_THRESHOLD_MS:I

.field public static final blacklist MAX_EVENT_THRESHOLD_MS:I = 0x10000

.field public static final blacklist MIN_HARD_THRESHOLD_MS:I = 0x1f4

.field public static final blacklist MIN_PEER_WAIT_TIME_RATIO_POWER:I = 0x5

.field public static final blacklist MIN_SOFT_THRESHOLD_MS:I = 0xa

.field public static final blacklist PERF_SUPERVISION_OFF:I = 0x0

.field public static final blacklist PERF_SUPERVISION_ON_HEAVY:I = 0x2

.field public static final blacklist PERF_SUPERVISION_ON_NORMAL:I = 0x1

.field public static final blacklist PERF_SUPERVISION_ON_TEST:I = 0x9

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist sGlobalPerfEventQueueLength:I

.field public static final blacklist sIsAutoAnalysisOn:Z

.field private static blacklist sIsMiuiDaemon:Z

.field private static blacklist sIsSystemServer:Z

.field public static final blacklist sMinOverlappedDurationMillis:I

.field public static final blacklist sMinPerfEventDurationMillis:I

.field public static final blacklist sPerfSupervisionDivisionRatio:I

.field public static final blacklist sPerfSupervisionHardThreshold:I

.field private static final blacklist sPerfSupervisionLevel:I

.field public static final blacklist sPerfSupervisionSoftThreshold:I

.field private static blacklist sReadySupervision:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 15

    .line 17
    const-class v0, Landroid/os/statistics/PerfSupervisionSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/statistics/PerfSupervisionSettings;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    .line 42
    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sIsSystemServer:Z

    .line 43
    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sIsMiuiDaemon:Z

    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, "hasMiSysInfoFreader":Z
    :try_start_10
    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/misysinfofreader"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_1d

    move v1, v2

    .line 50
    goto :goto_1e

    .line 49
    :catch_1d
    move-exception v2

    .line 51
    :goto_1e
    sget-boolean v2, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    const/4 v3, 0x1

    if-nez v2, :cond_28

    if-nez v1, :cond_26

    goto :goto_28

    .line 52
    :cond_26
    move v2, v3

    goto :goto_29

    :cond_28
    :goto_28
    move v2, v0

    :goto_29
    sput v2, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    .line 53
    invoke-static {}, Lmiui/util/CpuInfo;->getCpuCount()I

    move-result v4

    .line 54
    .local v4, "cpuCount":I
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    div-long/2addr v5, v7

    .line 55
    .local v5, "memorySizeInMB":J
    const/16 v9, 0x7d0

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-gt v4, v11, :cond_4c

    cmp-long v7, v5, v7

    if-gtz v7, :cond_4c

    .line 56
    const/16 v7, 0x190

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    .line 57
    sput v10, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    .line 58
    sput v9, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

    .line 59
    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

    goto :goto_73

    .line 61
    :cond_4c
    if-gt v4, v10, :cond_55

    .line 62
    const/16 v7, 0xc8

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    .line 63
    sput v11, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    goto :goto_5b

    .line 65
    :cond_55
    const/16 v7, 0x64

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    .line 66
    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    .line 68
    :goto_5b
    const-wide/16 v7, 0x1388

    mul-long/2addr v7, v5

    const-wide/16 v12, 0x708

    div-long/2addr v7, v12

    long-to-int v7, v7

    const/16 v8, 0x2710

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

    .line 69
    sget-boolean v7, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    xor-int/2addr v7, v3

    sput-boolean v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

    .line 72
    :goto_73
    const-string v7, "persist.sys.perf_mistats_opt"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "optionStr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/16 v12, 0x3e8

    const/16 v13, 0xa

    if-eqz v9, :cond_9c

    .line 74
    sput v2, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    .line 75
    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    .line 76
    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    sput v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    .line 77
    div-int/2addr v3, v8

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    .line 78
    shl-int/lit8 v3, v3, 0x5

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    goto/16 :goto_136

    .line 80
    :cond_9c
    const-string v9, " "

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v8, "options":[Ljava/lang/String;
    array-length v9, v8

    if-lt v9, v3, :cond_bc

    aget-object v9, v8, v0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_bc

    .line 83
    aget-object v9, v8, v0

    invoke-static {v9, v2}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v9

    sput v9, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    goto :goto_be

    .line 85
    :cond_bc
    sput v2, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    .line 88
    :goto_be
    array-length v9, v8

    if-lt v9, v11, :cond_d8

    aget-object v9, v8, v3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d8

    .line 89
    aget-object v9, v8, v3

    sget v14, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    .line 90
    invoke-static {v9, v14}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    sput v9, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    goto :goto_dc

    .line 92
    :cond_d8
    sget v9, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    sput v9, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    .line 95
    :goto_dc
    array-length v9, v8

    const/4 v14, 0x3

    if-lt v9, v14, :cond_fe

    aget-object v9, v8, v11

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_fe

    .line 96
    aget-object v9, v8, v11

    sget v11, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    .line 97
    invoke-static {v9, v11}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget v9, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    div-int/2addr v9, v13

    .line 96
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    goto :goto_109

    .line 100
    :cond_fe
    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    sget v9, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    div-int/2addr v9, v13

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    .line 103
    :goto_109
    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    sget v9, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    div-int/2addr v3, v9

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    .line 105
    shl-int/lit8 v3, v3, 0x5

    .line 106
    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 105
    const/16 v9, 0x1f4

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 107
    .local v3, "defaultHardThresholdMs":I
    array-length v11, v8

    if-lt v11, v10, :cond_134

    aget-object v11, v8, v14

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_134

    .line 108
    aget-object v11, v8, v14

    .line 109
    invoke-static {v11, v3}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    sput v9, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    goto :goto_136

    .line 111
    :cond_134
    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    .line 114
    .end local v3    # "defaultHardThresholdMs":I
    .end local v8    # "options":[Ljava/lang/String;
    :goto_136
    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    mul-int/2addr v3, v10

    div-int/lit8 v3, v3, 0x5

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinOverlappedDurationMillis:I

    .line 115
    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sGlobalPerfEventQueueLength:I

    .line 116
    if-nez v2, :cond_148

    goto :goto_14a

    :cond_148
    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

    :goto_14a
    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sIsAutoAnalysisOn:Z

    .line 117
    .end local v1    # "hasMiSysInfoFreader":Z
    .end local v4    # "cpuCount":I
    .end local v5    # "memorySizeInMB":J
    .end local v7    # "optionStr":Ljava/lang/String;
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getSupervisionLevel()I
    .registers 1

    .line 137
    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    if-eqz v0, :cond_7

    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static blacklist init()V
    .registers 4

    .line 128
    sget-object v0, Landroid/os/statistics/PerfSupervisionSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    .line 129
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    .line 130
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    .line 131
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sGlobalPerfEventQueueLength:I

    .line 132
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/os/statistics/PerfSupervisionSettings;->sIsAutoAnalysisOn:Z

    .line 133
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public static blacklist isAboveHardThreshold(J)Z
    .registers 4
    .param p0, "timeMillis"    # J

    .line 161
    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static blacklist isInHeavyMode()Z
    .registers 2

    .line 153
    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    if-eqz v0, :cond_b

    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static blacklist isInTestMode()Z
    .registers 2

    .line 157
    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    if-eqz v0, :cond_c

    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static blacklist isPerfEventReportable()Z
    .registers 1

    .line 149
    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sIsMiuiDaemon:Z

    if-nez v0, :cond_c

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static blacklist isSupervisionOn()Z
    .registers 2

    .line 141
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->getSupervisionLevel()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static blacklist isSystemServer()Z
    .registers 1

    .line 145
    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sIsSystemServer:Z

    return v0
.end method

.method public static blacklist notifySupervisionReady(ZZ)V
    .registers 3
    .param p0, "isSystemServer"    # Z
    .param p1, "isMiuiDaemon"    # Z

    .line 165
    sput-boolean p0, Landroid/os/statistics/PerfSupervisionSettings;->sIsSystemServer:Z

    .line 166
    sput-boolean p1, Landroid/os/statistics/PerfSupervisionSettings;->sIsMiuiDaemon:Z

    .line 167
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    .line 168
    return-void
.end method

.method static blacklist parseIntWithDefault(Ljava/lang/String;I)I
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "defVal"    # I

    .line 119
    move v0, p1

    .line 121
    .local v0, "value":I
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_7

    move v0, v1

    .line 123
    goto :goto_8

    .line 122
    :catch_7
    move-exception v1

    .line 124
    :goto_8
    return v0
.end method
