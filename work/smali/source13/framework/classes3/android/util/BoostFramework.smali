.class public Landroid/util/BoostFramework;
.super Ljava/lang/Object;
.source "BoostFramework.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/BoostFramework$ScrollOptimizer;,
        Landroid/util/BoostFramework$WorkloadType;,
        Landroid/util/BoostFramework$Draw;,
        Landroid/util/BoostFramework$Launch;,
        Landroid/util/BoostFramework$Scroll;
    }
.end annotation


# static fields
.field public static final blacklist MPCTLV3_GPU_IS_APP_BG:I = 0x42824000

.field public static final blacklist MPCTLV3_GPU_IS_APP_FG:I = 0x42820000

.field private static final blacklist PERFORMANCE_CLASS:Ljava/lang/String; = "com.qualcomm.qti.Performance"

.field private static final blacklist PERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/QPerformance.jar"

.field public static final blacklist PERF_HAL_V22:F = 2.2f

.field public static final blacklist PERF_HAL_V23:F = 2.3f

.field private static final blacklist SLOW_OPERATION_THRESHOLD_MS:I = 0x14

.field private static final blacklist TAG:Ljava/lang/String; = "BoostFramework"

.field public static final blacklist UXE_EVENT_BINDAPP:I = 0x2

.field public static final blacklist UXE_EVENT_DISPLAYED_ACT:I = 0x3

.field public static final blacklist UXE_EVENT_GAME:I = 0x5

.field public static final blacklist UXE_EVENT_KILL:I = 0x4

.field public static final blacklist UXE_EVENT_PKG_INSTALL:I = 0x8

.field public static final blacklist UXE_EVENT_PKG_UNINSTALL:I = 0x7

.field public static final blacklist UXE_EVENT_SUB_LAUNCH:I = 0x6

.field public static final blacklist UXE_TRIGGER:I = 0x1

.field private static final blacklist UXPERFORMANCE_CLASS:Ljava/lang/String; = "com.qualcomm.qti.UxPerformance"

.field private static final blacklist UXPERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/UxPerformance.jar"

.field public static final blacklist VENDOR_FEEDBACK_LAUNCH_END_POINT:I = 0x1602

.field public static final blacklist VENDOR_FEEDBACK_PA_FW:I = 0x1604

.field public static final blacklist VENDOR_FEEDBACK_WORKLOAD_TYPE:I = 0x1601

.field public static final blacklist VENDOR_HINT_ACTIVITY_BOOST:I = 0x1084

.field public static final blacklist VENDOR_HINT_ANIM_BOOST:I = 0x1083

.field public static final blacklist VENDOR_HINT_APP_UPDATE:I = 0x1092

.field public static final blacklist VENDOR_HINT_BINDAPP:I = 0x10a0

.field public static final blacklist VENDOR_HINT_BOOST_RENDERTHREAD:I = 0x1096

.field public static final blacklist VENDOR_HINT_DISPLAY_ON:I = 0x1041

.field public static final blacklist VENDOR_HINT_DRAG_BOOST:I = 0x1087

.field public static final blacklist VENDOR_HINT_DRAG_END:I = 0x1052

.field public static final blacklist VENDOR_HINT_DRAG_START:I = 0x1051

.field public static final blacklist VENDOR_HINT_FIRST_DRAW:I = 0x1042

.field public static final blacklist VENDOR_HINT_FIRST_LAUNCH_BOOST:I = 0x1081

.field public static final blacklist VENDOR_HINT_IME_LAUNCH_EVENT:I = 0x109f

.field public static final blacklist VENDOR_HINT_KILL:I = 0x1093

.field public static final blacklist VENDOR_HINT_MTP_BOOST:I = 0x1086

.field public static final blacklist VENDOR_HINT_PACKAGE_INSTALL_BOOST:I = 0x1088

.field public static final blacklist VENDOR_HINT_PERFORMANCE_MODE:I = 0x1091

.field public static final blacklist VENDOR_HINT_PKG_INSTALL:I = 0x10a3

.field public static final blacklist VENDOR_HINT_PKG_UNINSTALL:I = 0x10a4

.field public static final blacklist VENDOR_HINT_ROTATION_ANIM_BOOST:I = 0x1090

.field public static final blacklist VENDOR_HINT_ROTATION_LATENCY_BOOST:I = 0x1089

.field public static final blacklist VENDOR_HINT_SCROLL_BOOST:I = 0x1080

.field public static final blacklist VENDOR_HINT_SUBSEQ_LAUNCH_BOOST:I = 0x1082

.field public static final blacklist VENDOR_HINT_TAP_EVENT:I = 0x1043

.field public static final blacklist VENDOR_HINT_TOUCH_BOOST:I = 0x1085

.field public static final blacklist VENDOR_HINT_WARM_LAUNCH:I = 0x10a1

.field public static final blacklist VENDOR_T_API_LEVEL:I = 0x21

.field private static blacklist sAcqAndReleaseFunc:Ljava/lang/reflect/Method;

.field private static blacklist sAcquireFunc:Ljava/lang/reflect/Method;

.field private static blacklist sFeedbackFunc:Ljava/lang/reflect/Method;

.field private static blacklist sFeedbackFuncExtn:Ljava/lang/reflect/Method;

.field private static blacklist sIOPStart:Ljava/lang/reflect/Method;

.field private static blacklist sIOPStop:Ljava/lang/reflect/Method;

.field private static blacklist sIsLoaded:Z

.field private static blacklist sPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static blacklist sPerfEventFunc:Ljava/lang/reflect/Method;

.field private static blacklist sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;

.field private static blacklist sPerfGetPropFunc:Ljava/lang/reflect/Method;

.field private static blacklist sPerfHintFunc:Ljava/lang/reflect/Method;

.field private static blacklist sPerfSyncRequest:Ljava/lang/reflect/Method;

.field private static blacklist sReleaseFunc:Ljava/lang/reflect/Method;

.field private static blacklist sReleaseHandlerFunc:Ljava/lang/reflect/Method;

.field private static blacklist sUXEngineEvents:Ljava/lang/reflect/Method;

.field private static blacklist sUXEngineTrigger:Ljava/lang/reflect/Method;

.field private static blacklist sUxIOPStart:Ljava/lang/reflect/Method;

.field private static blacklist sUxIsLoaded:Z

.field private static blacklist sUxPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static blacklist sperfHintAcqRelFunc:Ljava/lang/reflect/Method;

.field private static blacklist sperfHintRenewFunc:Ljava/lang/reflect/Method;


# instance fields
.field public final blacklist board_api_lvl:I

.field public final blacklist board_first_api_lvl:I

.field private blacklist mPerf:Ljava/lang/Object;

.field private blacklist mUxPerf:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/BoostFramework;->sIsLoaded:Z

    .line 61
    const/4 v1, 0x0

    sput-object v1, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    .line 62
    sput-object v1, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    .line 63
    sput-object v1, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    .line 64
    sput-object v1, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    .line 65
    sput-object v1, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    .line 66
    sput-object v1, Landroid/util/BoostFramework;->sFeedbackFunc:Ljava/lang/reflect/Method;

    .line 67
    sput-object v1, Landroid/util/BoostFramework;->sFeedbackFuncExtn:Ljava/lang/reflect/Method;

    .line 68
    sput-object v1, Landroid/util/BoostFramework;->sPerfGetPropFunc:Ljava/lang/reflect/Method;

    .line 69
    sput-object v1, Landroid/util/BoostFramework;->sAcqAndReleaseFunc:Ljava/lang/reflect/Method;

    .line 70
    sput-object v1, Landroid/util/BoostFramework;->sperfHintAcqRelFunc:Ljava/lang/reflect/Method;

    .line 71
    sput-object v1, Landroid/util/BoostFramework;->sperfHintRenewFunc:Ljava/lang/reflect/Method;

    .line 72
    sput-object v1, Landroid/util/BoostFramework;->sPerfEventFunc:Ljava/lang/reflect/Method;

    .line 73
    sput-object v1, Landroid/util/BoostFramework;->sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;

    .line 74
    sput-object v1, Landroid/util/BoostFramework;->sPerfSyncRequest:Ljava/lang/reflect/Method;

    .line 76
    sput-object v1, Landroid/util/BoostFramework;->sIOPStart:Ljava/lang/reflect/Method;

    .line 77
    sput-object v1, Landroid/util/BoostFramework;->sIOPStop:Ljava/lang/reflect/Method;

    .line 78
    sput-object v1, Landroid/util/BoostFramework;->sUXEngineEvents:Ljava/lang/reflect/Method;

    .line 79
    sput-object v1, Landroid/util/BoostFramework;->sUXEngineTrigger:Ljava/lang/reflect/Method;

    .line 81
    sput-boolean v0, Landroid/util/BoostFramework;->sUxIsLoaded:Z

    .line 82
    sput-object v1, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    .line 83
    sput-object v1, Landroid/util/BoostFramework;->sUxIOPStart:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string/jumbo v0, "ro.board.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_first_api_lvl:I

    .line 57
    const-string/jumbo v0, "ro.board.api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_api_lvl:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 87
    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    .line 180
    invoke-direct {p0}, Landroid/util/BoostFramework;->initFunctions()V

    .line 183
    :try_start_1e
    sget-object v0, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_28

    .line 184
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 186
    :cond_28
    sget-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_32

    .line 187
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_32} :catch_33

    .line 192
    :cond_32
    goto :goto_4c

    .line 190
    :catch_33
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoostFramework() : Exception_2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoostFramework"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4c
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/BoostFramework;-><init>(Landroid/content/Context;Z)V

    .line 198
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isTrusted"    # Z

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string/jumbo v0, "ro.board.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_first_api_lvl:I

    .line 57
    const-string/jumbo v0, "ro.board.api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_api_lvl:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 87
    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    .line 202
    invoke-direct {p0}, Landroid/util/BoostFramework;->initFunctions()V

    .line 205
    :try_start_1e
    sget-object v0, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const/4 v2, 0x1

    if-eqz v0, :cond_39

    .line 206
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 207
    .local v0, "cons":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_39

    .line 208
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 210
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    :cond_39
    sget-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_5c

    .line 211
    if-eqz p2, :cond_56

    .line 212
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 213
    .restart local v0    # "cons":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_55

    .line 214
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    .line 215
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    :cond_55
    goto :goto_5c

    .line 216
    :cond_56
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_5c} :catch_5d

    .line 222
    :cond_5c
    :goto_5c
    goto :goto_76

    .line 220
    :catch_5d
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoostFramework() : Exception_3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoostFramework"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_76
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 7
    .param p1, "isUntrustedDomain"    # Z

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string/jumbo v0, "ro.board.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_first_api_lvl:I

    .line 57
    const-string/jumbo v0, "ro.board.api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_api_lvl:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 87
    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    .line 227
    invoke-direct {p0}, Landroid/util/BoostFramework;->initFunctions()V

    .line 230
    :try_start_1e
    sget-object v0, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_3d

    .line 231
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 232
    .local v0, "cons":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_3d

    .line 233
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 235
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    :cond_3d
    sget-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_47

    .line 236
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_47} :catch_48

    .line 241
    :cond_47
    goto :goto_61

    .line 239
    :catch_48
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoostFramework() : Exception_5 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoostFramework"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_61
    return-void
.end method

.method private blacklist checkTime(JLjava/lang/String;)V
    .registers 9
    .param p1, "start"    # J
    .param p3, "method"    # Ljava/lang/String;

    .line 574
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 575
    .local v0, "duration":J
    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-lez v2, :cond_23

    .line 576
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Slow Operation: BoostFramework %s took %sms"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_23
    return-void
.end method

.method private blacklist initFunctions()V
    .registers 14

    .line 245
    const-class v0, [I

    const-class v1, Landroid/util/BoostFramework;

    monitor-enter v1

    .line 246
    :try_start_5
    sget-boolean v2, Landroid/util/BoostFramework;->sIsLoaded:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_22a

    if-nez v2, :cond_228

    .line 248
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_d
    const-string v6, "com.qualcomm.qti.Performance"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    .line 250
    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    aput-object v0, v6, v4

    .line 251
    .local v6, "argClasses":[Ljava/lang/Class;
    sget-object v7, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v8, "perfLockAcquire"

    invoke-virtual {v7, v8, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    .line 253
    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    move-object v6, v8

    .line 254
    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfHint"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    .line 256
    new-array v8, v5, [Ljava/lang/Class;

    move-object v6, v8

    .line 257
    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfLockRelease"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    .line 259
    new-array v8, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    move-object v6, v8

    .line 260
    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfLockReleaseHandler"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    .line 262
    new-array v8, v3, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    move-object v6, v8

    .line 263
    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfGetFeedback"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sFeedbackFunc:Ljava/lang/reflect/Method;

    .line 265
    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    aput-object v0, v8, v2

    move-object v6, v8

    .line 266
    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfGetFeedbackExtn"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sFeedbackFuncExtn:Ljava/lang/reflect/Method;

    .line 268
    new-array v8, v2, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v3

    move-object v6, v8

    .line 269
    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfIOPrefetchStart"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sIOPStart:Ljava/lang/reflect/Method;

    .line 271
    new-array v8, v5, [Ljava/lang/Class;

    move-object v6, v8

    .line 272
    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfIOPrefetchStop"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sIOPStop:Ljava/lang/reflect/Method;

    .line 274
    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    move-object v6, v8

    .line 275
    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfGetProp"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sPerfGetPropFunc:Ljava/lang/reflect/Method;

    .line 277
    const/4 v8, 0x5

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v2

    aput-object v0, v9, v7

    move-object v6, v9

    .line 278
    sget-object v9, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v10, "perfLockAcqAndRelease"

    invoke-virtual {v9, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Landroid/util/BoostFramework;->sAcqAndReleaseFunc:Ljava/lang/reflect/Method;

    .line 280
    new-array v9, v7, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v4

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    aput-object v0, v9, v2

    move-object v6, v9

    .line 281
    sget-object v9, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v10, "perfEvent"

    invoke-virtual {v9, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Landroid/util/BoostFramework;->sPerfEventFunc:Ljava/lang/reflect/Method;

    .line 283
    new-array v9, v4, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    move-object v6, v9

    .line 284
    sget-object v9, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v10, "perfSyncRequest"

    invoke-virtual {v9, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Landroid/util/BoostFramework;->sPerfSyncRequest:Ljava/lang/reflect/Method;

    .line 286
    const/4 v9, 0x7

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v4

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v3

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v7

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v8

    const/4 v11, 0x6

    aput-object v0, v10, v11

    move-object v6, v10

    .line 288
    sget-object v10, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v12, "perfHintAcqRel"

    invoke-virtual {v10, v12, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    sput-object v10, Landroid/util/BoostFramework;->sperfHintAcqRelFunc:Ljava/lang/reflect/Method;

    .line 290
    new-array v9, v9, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    aput-object v0, v9, v11

    move-object v0, v9

    .line 292
    .end local v6    # "argClasses":[Ljava/lang/Class;
    .local v0, "argClasses":[Ljava/lang/Class;
    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfHintRenew"

    invoke-virtual {v6, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sperfHintRenewFunc:Ljava/lang/reflect/Method;
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_178} :catch_1d2
    .catchall {:try_start_d .. :try_end_178} :catchall_22a

    .line 295
    :try_start_178
    new-array v6, v5, [Ljava/lang/Class;

    move-object v0, v6

    .line 296
    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfGetHalVer"

    invoke-virtual {v6, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_186} :catch_187
    .catchall {:try_start_178 .. :try_end_186} :catchall_22a

    .line 301
    goto :goto_192

    .line 298
    :catch_187
    move-exception v6

    .line 299
    .local v6, "e":Ljava/lang/Exception;
    :try_start_188
    const-string v9, "BoostFramework"

    const-string v10, "BoostFramework() : Exception_1 = perfGetHalVer not supported"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v9, 0x0

    sput-object v9, Landroid/util/BoostFramework;->sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_192} :catch_1d2
    .catchall {:try_start_188 .. :try_end_192} :catchall_22a

    .line 304
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_192
    :try_start_192
    new-array v6, v8, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v5

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    move-object v0, v6

    .line 305
    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v7, "perfUXEngine_events"

    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sUXEngineEvents:Ljava/lang/reflect/Method;

    .line 308
    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    move-object v0, v6

    .line 309
    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v7, "perfUXEngine_trigger"

    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sUXEngineTrigger:Ljava/lang/reflect/Method;
    :try_end_1c6
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_1c6} :catch_1c7
    .catchall {:try_start_192 .. :try_end_1c6} :catchall_22a

    .line 313
    goto :goto_1cf

    .line 311
    :catch_1c7
    move-exception v6

    .line 312
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_1c8
    const-string v7, "BoostFramework"

    const-string v8, "BoostFramework() : Exception_4 = PreferredApps not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1cf
    sput-boolean v4, Landroid/util/BoostFramework;->sIsLoaded:Z
    :try_end_1d1
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1d1} :catch_1d2
    .catchall {:try_start_1c8 .. :try_end_1d1} :catchall_22a

    .line 319
    .end local v0    # "argClasses":[Ljava/lang/Class;
    goto :goto_1eb

    .line 317
    :catch_1d2
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1d3
    const-string v6, "BoostFramework"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BoostFramework() : Exception_1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1eb
    .catchall {:try_start_1d3 .. :try_end_1eb} :catchall_22a

    .line 323
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1eb
    :try_start_1eb
    const-string v0, "com.qualcomm.qti.UxPerformance"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    .line 325
    new-array v0, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v5

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v4

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v3

    .line 326
    .local v0, "argUxClasses":[Ljava/lang/Class;
    sget-object v2, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    const-string/jumbo v3, "perfIOPrefetchStart"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/util/BoostFramework;->sUxIOPStart:Ljava/lang/reflect/Method;

    .line 328
    sput-boolean v4, Landroid/util/BoostFramework;->sUxIsLoaded:Z
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_20e} :catch_20f
    .catchall {:try_start_1eb .. :try_end_20e} :catchall_22a

    .line 332
    .end local v0    # "argUxClasses":[Ljava/lang/Class;
    goto :goto_228

    .line 330
    :catch_20f
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    :try_start_210
    const-string v2, "BoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BoostFramework() Ux Perf: Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_228
    :goto_228
    monitor-exit v1

    .line 335
    return-void

    .line 334
    :catchall_22a
    move-exception v0

    monitor-exit v1
    :try_end_22c
    .catchall {:try_start_210 .. :try_end_22c} :catchall_22a

    throw v0
.end method


# virtual methods
.method public blacklist getPerfHalVersion()D
    .registers 6

    .line 413
    const-wide v0, 0x40019999a0000000L    # 2.200000047683716

    .line 415
    .local v0, "retVal":D
    :try_start_5
    sget-object v2, Landroid/util/BoostFramework;->sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1a

    .line 416
    iget-object v3, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 417
    .local v2, "ret":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1b

    move-wide v0, v3

    .line 421
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_1a
    goto :goto_34

    .line 419
    :catch_1b
    move-exception v2

    .line 420
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BoostFramework"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_34
    return-wide v0
.end method

.method public blacklist perfEvent(ILjava/lang/String;)V
    .registers 5
    .param p1, "eventId"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;

    .line 582
    const/4 v0, 0x0

    new-array v1, v0, [I

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/BoostFramework;->perfEvent(ILjava/lang/String;I[I)V

    .line 583
    return-void
.end method

.method public varargs blacklist perfEvent(ILjava/lang/String;I[I)V
    .registers 10
    .param p1, "eventId"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;
    .param p3, "numArgs"    # I
    .param p4, "list"    # [I

    .line 588
    :try_start_0
    sget-object v0, Landroid/util/BoostFramework;->sPerfEventFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    .line 589
    iget-object v1, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 593
    :cond_20
    goto :goto_3a

    .line 591
    :catch_21
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoostFramework"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3a
    return-void
.end method

.method public blacklist perfGetFeedback(ILjava/lang/String;)I
    .registers 9
    .param p1, "req"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;

    .line 427
    const/4 v0, -0x1

    .line 429
    .local v0, "ret":I
    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sFeedbackFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_20

    .line 430
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 431
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_21

    move v0, v2

    .line 435
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_20
    goto :goto_3a

    .line 433
    :catch_21
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3a
    return v0
.end method

.method public varargs blacklist perfGetFeedbackExtn(ILjava/lang/String;I[I)I
    .registers 11
    .param p1, "req"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;
    .param p3, "numArgs"    # I
    .param p4, "list"    # [I

    .line 441
    const/4 v0, -0x1

    .line 443
    .local v0, "ret":I
    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sFeedbackFuncExtn:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2a

    .line 444
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 445
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2b

    move v0, v2

    .line 449
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_2a
    goto :goto_44

    .line 447
    :catch_2b
    move-exception v1

    .line 448
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_44
    return v0
.end method

.method public blacklist perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "prop_name"    # Ljava/lang/String;
    .param p2, "def_val"    # Ljava/lang/String;

    .line 545
    const-string v0, ""

    .line 547
    .local v0, "ret":Ljava/lang/String;
    :try_start_2
    sget-object v1, Landroid/util/BoostFramework;->sPerfGetPropFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1a

    .line 548
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 549
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_1c

    move-object v0, v2

    .line 550
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_1b

    .line 551
    :cond_1a
    move-object v0, p2

    .line 555
    :goto_1b
    goto :goto_35

    .line 553
    :catch_1c
    move-exception v1

    .line 554
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_35
    return-object v0
.end method

.method public blacklist perfHint(ILjava/lang/String;)I
    .registers 4
    .param p1, "hint"    # I
    .param p2, "userDataStr"    # Ljava/lang/String;

    .line 387
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist perfHint(ILjava/lang/String;I)I
    .registers 5
    .param p1, "hint"    # I
    .param p2, "userDataStr"    # Ljava/lang/String;
    .param p3, "userData"    # I

    .line 392
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist perfHint(ILjava/lang/String;II)I
    .registers 13
    .param p1, "hint"    # I
    .param p2, "userDataStr"    # Ljava/lang/String;
    .param p3, "userData1"    # I
    .param p4, "userData2"    # I

    .line 397
    const/4 v0, -0x1

    .line 399
    .local v0, "ret":I
    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3a

    .line 400
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 401
    .local v1, "startTime":J
    sget-object v3, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 402
    .local v3, "retVal":Ljava/lang/Object;
    const-string/jumbo v4, "perfHint"

    invoke-direct {p0, v1, v2, v4}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V

    .line 403
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3b

    move v0, v4

    .line 407
    .end local v1    # "startTime":J
    .end local v3    # "retVal":Ljava/lang/Object;
    :cond_3a
    goto :goto_54

    .line 405
    :catch_3b
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_54
    return v0
.end method

.method public blacklist perfHintAcqRel(IILjava/lang/String;)I
    .registers 13
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;

    .line 598
    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public blacklist perfHintAcqRel(IILjava/lang/String;I)I
    .registers 14
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "duration"    # I

    .line 603
    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public blacklist perfHintAcqRel(IILjava/lang/String;II)I
    .registers 15
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "duration"    # I
    .param p5, "hintType"    # I

    .line 608
    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public varargs blacklist perfHintAcqRel(IILjava/lang/String;III[I)I
    .registers 14
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "duration"    # I
    .param p5, "hintType"    # I
    .param p6, "numArgs"    # I
    .param p7, "list"    # [I

    .line 614
    const/4 v0, -0x1

    .line 616
    .local v0, "ret":I
    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sperfHintAcqRelFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3f

    .line 617
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    .line 618
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p7, v3, v4

    .line 617
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 619
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3e} :catch_40

    move v0, v2

    .line 623
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_3f
    goto :goto_59

    .line 621
    :catch_40
    move-exception v1

    .line 622
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_59
    return v0
.end method

.method public blacklist perfHintRenew(IILjava/lang/String;)I
    .registers 13
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;

    .line 629
    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintRenew(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public blacklist perfHintRenew(IILjava/lang/String;I)I
    .registers 14
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "duration"    # I

    .line 634
    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintRenew(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public blacklist perfHintRenew(IILjava/lang/String;II)I
    .registers 15
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "duration"    # I
    .param p5, "hintType"    # I

    .line 639
    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintRenew(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public varargs blacklist perfHintRenew(IILjava/lang/String;III[I)I
    .registers 14
    .param p1, "handle"    # I
    .param p2, "hint"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;
    .param p4, "duration"    # I
    .param p5, "hintType"    # I
    .param p6, "numArgs"    # I
    .param p7, "list"    # [I

    .line 645
    const/4 v0, -0x1

    .line 647
    .local v0, "ret":I
    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sperfHintRenewFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3f

    .line 648
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    .line 649
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p7, v3, v4

    .line 648
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 650
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3e} :catch_40

    move v0, v2

    .line 654
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_3f
    goto :goto_59

    .line 652
    :catch_40
    move-exception v1

    .line 653
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_59
    return v0
.end method

.method public blacklist perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p1, "pid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;

    .line 455
    const-string v0, "BoostFramework"

    const/4 v1, -0x1

    .line 456
    .local v1, "ret":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 458
    .local v2, "startTime":J
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    :try_start_b
    sget-object v8, Landroid/util/BoostFramework;->sIOPStart:Ljava/lang/reflect/Method;

    iget-object v9, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    aput-object p2, v10, v5

    aput-object p3, v10, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 459
    .local v8, "retVal":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_26} :catch_28

    move v1, v9

    .line 462
    .end local v8    # "retVal":Ljava/lang/Object;
    goto :goto_3f

    .line 460
    :catch_28
    move-exception v8

    .line 461
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_3f
    :try_start_3f
    sget-object v8, Landroid/util/BoostFramework;->sUxIOPStart:Ljava/lang/reflect/Method;

    iget-object v9, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v6

    aput-object p2, v7, v5

    aput-object p3, v7, v4

    invoke-virtual {v8, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 465
    .local v4, "retVal":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5a} :catch_5c

    move v1, v0

    .line 468
    .end local v4    # "retVal":Ljava/lang/Object;
    goto :goto_73

    .line 466
    :catch_5c
    move-exception v4

    .line 467
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ux Perf Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_73
    const-string/jumbo v0, "perfIOPrefetchStart"

    invoke-direct {p0, v2, v3, v0}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V

    .line 470
    return v1
.end method

.method public blacklist perfIOPrefetchStop()I
    .registers 7

    .line 475
    const/4 v0, -0x1

    .line 476
    .local v0, "ret":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 478
    .local v1, "startTime":J
    :try_start_5
    sget-object v3, Landroid/util/BoostFramework;->sIOPStop:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 479
    .local v3, "retVal":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_19

    move v0, v4

    .line 482
    .end local v3    # "retVal":Ljava/lang/Object;
    goto :goto_32

    .line 480
    :catch_19
    move-exception v3

    .line 481
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BoostFramework"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_32
    const-string/jumbo v3, "perfIOPrefetchStop"

    invoke-direct {p0, v1, v2, v3}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V

    .line 484
    return v0
.end method

.method public varargs blacklist perfLockAcqAndRelease(IIII[I)I
    .registers 12
    .param p1, "handle"    # I
    .param p2, "duration"    # I
    .param p3, "numArgs"    # I
    .param p4, "reserveNumArgs"    # I
    .param p5, "list"    # [I

    .line 561
    const/4 v0, -0x1

    .line 563
    .local v0, "ret":I
    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sAcqAndReleaseFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_35

    .line 564
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 565
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_36

    move v0, v2

    .line 569
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_35
    goto :goto_4f

    .line 567
    :catch_36
    move-exception v1

    .line 568
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4f
    return v0
.end method

.method public varargs blacklist perfLockAcquire(I[I)I
    .registers 11
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .line 339
    const/4 v0, -0x1

    .line 341
    .local v0, "ret":I
    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2c

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 343
    .local v1, "startTime":J
    sget-object v3, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 344
    .local v3, "retVal":Ljava/lang/Object;
    const-string/jumbo v4, "perfLockAcquire"

    invoke-direct {p0, v1, v2, v4}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V

    .line 345
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2d

    move v0, v4

    .line 349
    .end local v1    # "startTime":J
    .end local v3    # "retVal":Ljava/lang/Object;
    :cond_2c
    goto :goto_46

    .line 347
    :catch_2d
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_46
    return v0
.end method

.method public blacklist perfLockRelease()I
    .registers 7

    .line 355
    const/4 v0, -0x1

    .line 357
    .local v0, "ret":I
    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_22

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 359
    .local v1, "startTime":J
    sget-object v3, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 360
    .local v3, "retVal":Ljava/lang/Object;
    const-string/jumbo v4, "perfLockRelease"

    invoke-direct {p0, v1, v2, v4}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V

    .line 361
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_23

    move v0, v4

    .line 365
    .end local v1    # "startTime":J
    .end local v3    # "retVal":Ljava/lang/Object;
    :cond_22
    goto :goto_3c

    .line 363
    :catch_23
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3c
    return v0
.end method

.method public blacklist perfLockReleaseHandler(I)I
    .registers 10
    .param p1, "handle"    # I

    .line 371
    const/4 v0, -0x1

    .line 373
    .local v0, "ret":I
    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_29

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 375
    .local v1, "startTime":J
    sget-object v3, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 376
    .local v3, "retVal":Ljava/lang/Object;
    const-string/jumbo v4, "perfLockReleaseHandler"

    invoke-direct {p0, v1, v2, v4}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V

    .line 377
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2a

    move v0, v4

    .line 381
    .end local v1    # "startTime":J
    .end local v3    # "retVal":Ljava/lang/Object;
    :cond_29
    goto :goto_43

    .line 379
    :catch_2a
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_43
    return v0
.end method

.method public blacklist perfSyncRequest(I)Ljava/lang/String;
    .registers 8
    .param p1, "opcode"    # I

    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, "ret":Ljava/lang/String;
    :try_start_1
    sget-object v1, Landroid/util/BoostFramework;->sPerfSyncRequest:Ljava/lang/reflect/Method;

    if-nez v1, :cond_6

    .line 533
    return-object v0

    .line 535
    :cond_6
    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 536
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1b

    move-object v0, v2

    .line 539
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_34

    .line 537
    :catch_1b
    move-exception v1

    .line 538
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_34
    return-object v0
.end method

.method public blacklist perfUXEngine_events(IILjava/lang/String;I)I
    .registers 11
    .param p1, "opcode"    # I
    .param p2, "pid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "lat"    # I

    .line 489
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist perfUXEngine_events(IILjava/lang/String;ILjava/lang/String;)I
    .registers 14
    .param p1, "opcode"    # I
    .param p2, "pid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "lat"    # I
    .param p5, "codePath"    # Ljava/lang/String;

    .line 494
    const/4 v0, -0x1

    .line 495
    .local v0, "ret":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 497
    .local v1, "startTime":J
    :try_start_5
    sget-object v3, Landroid/util/BoostFramework;->sUXEngineEvents:Ljava/lang/reflect/Method;

    if-nez v3, :cond_a

    .line 498
    return v0

    .line 501
    :cond_a
    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object p5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 502
    .local v3, "retVal":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_35} :catch_37

    move v0, v4

    .line 505
    .end local v3    # "retVal":Ljava/lang/Object;
    goto :goto_50

    .line 503
    :catch_37
    move-exception v3

    .line 504
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BoostFramework"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_50
    const-string/jumbo v3, "perfUXEngine_events"

    invoke-direct {p0, v1, v2, v3}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V

    .line 507
    return v0
.end method

.method public blacklist perfUXEngine_trigger(I)Ljava/lang/String;
    .registers 10
    .param p1, "opcode"    # I

    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, "ret":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 516
    .local v1, "startTime":J
    :try_start_5
    sget-object v3, Landroid/util/BoostFramework;->sUXEngineTrigger:Ljava/lang/reflect/Method;

    if-nez v3, :cond_a

    .line 517
    return-object v0

    .line 519
    :cond_a
    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 520
    .local v3, "retVal":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_1f

    move-object v0, v4

    .line 523
    .end local v3    # "retVal":Ljava/lang/Object;
    goto :goto_38

    .line 521
    :catch_1f
    move-exception v3

    .line 522
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BoostFramework"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_38
    const-string/jumbo v3, "perfUXEngine_trigger"

    invoke-direct {p0, v1, v2, v3}, Landroid/util/BoostFramework;->checkTime(JLjava/lang/String;)V

    .line 525
    return-object v0
.end method
