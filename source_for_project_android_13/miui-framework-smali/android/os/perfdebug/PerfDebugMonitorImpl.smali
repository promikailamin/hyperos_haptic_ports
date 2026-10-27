.class public Landroid/os/perfdebug/PerfDebugMonitorImpl;
.super Landroid/os/perfdebug/PerfDebugMonitor;
.source "PerfDebugMonitorImpl.java"


# static fields
.field public static final blacklist DEBUG:Z

.field public static final blacklist DEBUG_BINDER_DETAIL:Z

.field public static blacklist DEBUG_VERSION:I = 0x0

.field public static final blacklist DEBUG_VERSION_NATIVE:I = 0x3

.field public static final blacklist LAUNCH_TIME_STAMP:J

.field private static final blacklist MONITOR_CATALOG_ALL_FLAG:Ljava/lang/String; = "all"

.field private static final blacklist MONITOR_CATALOG_BINDER_FLAG:Ljava/lang/String; = "binder"

.field private static final blacklist MONITOR_CATALOG_DRAW_FLAG:Ljava/lang/String; = "draw"

.field private static final blacklist MONITOR_CATALOG_INPUT_FLAG:Ljava/lang/String; = "input"

.field private static final blacklist MONITOR_CATALOG_LAYOUT_FLAG:Ljava/lang/String; = "layout"

.field private static final blacklist MONITOR_CATALOG_LOOPER_FLAG:Ljava/lang/String; = "looper"

.field private static final blacklist MONITOR_CATALOG_MEASURE_FLAG:Ljava/lang/String; = "measure"

.field public static final blacklist MONITOR_NAME:Ljava/lang/String; = "PerfMonitor"

.field public static final blacklist NORMAL_LOG_CHAR_LENGTH:I = 0x100

.field public static final blacklist PERF_EVENT_ID:Ljava/lang/String; = "EventID"

.field public static final blacklist PERF_EVENT_ID_ACTIVITY_LATE:I = 0x35c3716a

.field public static final blacklist PERF_EVENT_ID_BROADCAST_SLOW_CREATE:I = 0x35c37296

.field public static final blacklist PERF_EVENT_ID_BUSY_MAIN:I = 0x35c3716b

.field public static final blacklist PERF_EVENT_ID_COMMON_METHOD:I = 0x35c42d4b

.field public static final blacklist PERF_EVENT_ID_DO_FRAME:I = 0x35c3716c

.field public static final blacklist PERF_EVENT_ID_INPUT_SLOW_BEFORE_APP:I = 0x35c37553

.field public static final blacklist PERF_EVENT_ID_INPUT_SLOW_IN_APP:I = 0x35c37552

.field public static final blacklist PERF_EVENT_ID_INPUT_SLOW_SERVER:I = 0x35c37551

.field public static final blacklist PERF_EVENT_ID_LONG_BINDER:I = 0x3f5

.field public static final blacklist PERF_EVENT_ID_LONG_LOCK:I = 0x3f6

.field public static final blacklist PERF_EVENT_ID_LONG_MSG:I = 0x3e9

.field public static final blacklist PERF_EVENT_ID_PROVIDER_SLOW_CREATE:I = 0x35c37297

.field public static final blacklist PERF_EVENT_ID_SERVICE_SLOW_CREATE:I = 0x35c37294

.field public static final blacklist PERF_EVENT_ID_SF_SLOW_METHOD:I = 0x35c3719a

.field public static final blacklist PERF_EVENT_ID_TRAVERSALS:I = 0x35c3716e

.field public static final blacklist PERF_EVENT_KEY_ACTION:Ljava/lang/String; = "Action"

.field public static final blacklist PERF_EVENT_KEY_AUTHORITY:Ljava/lang/String; = "ProviderAuthority"

.field public static final blacklist PERF_EVENT_KEY_BINDER_CODE:Ljava/lang/String; = "BinderCode"

.field public static final blacklist PERF_EVENT_KEY_BINDER_INTERFACE:Ljava/lang/String; = "BinderInterface"

.field public static final blacklist PERF_EVENT_KEY_BINDER_TARGET_BLKIO:Ljava/lang/String; = "BinderTargetBlkio"

.field public static final blacklist PERF_EVENT_KEY_BINDER_TARGET_CPU_STIME:Ljava/lang/String; = "BinderTargetSTime"

.field public static final blacklist PERF_EVENT_KEY_BINDER_TARGET_CPU_UTIME:Ljava/lang/String; = "BinderTargetUTime"

.field public static final blacklist PERF_EVENT_KEY_BINDER_TARGET_FREEPAGES:Ljava/lang/String; = "BinderTargetFreepages"

.field public static final blacklist PERF_EVENT_KEY_BINDER_TARGET_PID:Ljava/lang/String; = "BinderTargetPid"

.field public static final blacklist PERF_EVENT_KEY_BINDER_TARGET_RUNNABLE:Ljava/lang/String; = "BinderTargetRunnable"

.field public static final blacklist PERF_EVENT_KEY_BINDER_TARGET_RUNNING:Ljava/lang/String; = "BinderTargetRunning"

.field public static final blacklist PERF_EVENT_KEY_BINDER_TARGET_SWAPIN:Ljava/lang/String; = "BinderTargetSwapin"

.field public static final blacklist PERF_EVENT_KEY_BINDER_TARGET_THREAD_FULL:Ljava/lang/String; = "BinderTargetThreadFull"

.field public static final blacklist PERF_EVENT_KEY_BINDER_TARGET_TID:Ljava/lang/String; = "BinderTargetTid"

.field public static final blacklist PERF_EVENT_KEY_BROADCAST:Ljava/lang/String; = "Broadcast"

.field public static final blacklist PERF_EVENT_KEY_CALLBACKS:Ljava/lang/String; = "Callback"

.field public static final blacklist PERF_EVENT_KEY_CLASSNAME:Ljava/lang/String; = "ProviderClassName"

.field public static final blacklist PERF_EVENT_KEY_CODE:Ljava/lang/String; = "Code"

.field public static final blacklist PERF_EVENT_KEY_CPU_STIME:Ljava/lang/String; = "CpuSTime"

.field public static final blacklist PERF_EVENT_KEY_CPU_UTIME:Ljava/lang/String; = "CpuUTime"

.field public static final blacklist PERF_EVENT_KEY_DISPATCH_ON_GLOBAL_LAYOUT:Ljava/lang/String; = "DispatchTime"

.field public static final blacklist PERF_EVENT_KEY_DISPATCH_TIME:Ljava/lang/String; = "DispatchTime"

.field public static final blacklist PERF_EVENT_KEY_DISPLAY_NAME:Ljava/lang/String; = "SFDisplayName"

.field public static final blacklist PERF_EVENT_KEY_DRAW_TIME:Ljava/lang/String; = "DrawTime"

.field public static final blacklist PERF_EVENT_KEY_DURATION:Ljava/lang/String; = "Duration"

.field public static final blacklist PERF_EVENT_KEY_EVENT_INFO:Ljava/lang/String; = "EventInfo"

.field public static final blacklist PERF_EVENT_KEY_EVENT_TIME:Ljava/lang/String; = "EventTime"

.field public static final blacklist PERF_EVENT_KEY_FGSERVICETYPE:Ljava/lang/String; = "FGServiceType"

.field public static final blacklist PERF_EVENT_KEY_FLAGS:Ljava/lang/String; = "Flags"

.field public static final blacklist PERF_EVENT_KEY_HISTORY_MSG:Ljava/lang/String; = "HistoryMsg"

.field public static final blacklist PERF_EVENT_KEY_HISTORY_MSG_COUNT:Ljava/lang/String; = "HistoryMsgCount"

.field public static final blacklist PERF_EVENT_KEY_INTENT:Ljava/lang/String; = "BroadcastIntent"

.field public static final blacklist PERF_EVENT_KEY_IO_TIME:Ljava/lang/String; = "IOTime"

.field public static final blacklist PERF_EVENT_KEY_LATENCY:Ljava/lang/String; = "Latency"

.field public static final blacklist PERF_EVENT_KEY_LAYOUT_TIME:Ljava/lang/String; = "LayoutTime"

.field public static final blacklist PERF_EVENT_KEY_MDOE:Ljava/lang/String; = "Mode"

.field public static final blacklist PERF_EVENT_KEY_MESSURE_TIME:Ljava/lang/String; = "MessureTime"

.field public static final blacklist PERF_EVENT_KEY_MONITOR_TIME:Ljava/lang/String; = "MonitorTime"

.field public static final blacklist PERF_EVENT_KEY_MSG_WHAT:Ljava/lang/String; = "MsgWhat"

.field public static final blacklist PERF_EVENT_KEY_MULTIPROCESS:Ljava/lang/String; = "IsMultiprocess"

.field public static final blacklist PERF_EVENT_KEY_ON_DRAW_TIME:Ljava/lang/String; = "OnDrawTime"

.field public static final blacklist PERF_EVENT_KEY_ON_PRE_DRAW_TIME:Ljava/lang/String; = "OnPreDrawTime"

.field public static final blacklist PERF_EVENT_KEY_ORDERED:Ljava/lang/String; = "IsOrder"

.field public static final blacklist PERF_EVENT_KEY_PACKAGE:Ljava/lang/String; = "PackageName"

.field public static final blacklist PERF_EVENT_KEY_PID:Ljava/lang/String; = "PID"

.field public static final blacklist PERF_EVENT_KEY_PLANTIME_CURR:Ljava/lang/String; = "MsgPlanTime"

.field public static final blacklist PERF_EVENT_KEY_PLANTIME_ER:Ljava/lang/String; = "PlanTimeER"

.field public static final blacklist PERF_EVENT_KEY_PLANTIME_UP:Ljava/lang/String; = "PlanTimeUP"

.field public static final blacklist PERF_EVENT_KEY_PROCESSNAME:Ljava/lang/String; = "ProcessName"

.field public static final blacklist PERF_EVENT_KEY_PROCSTATE:Ljava/lang/String; = "ProcState"

.field public static final blacklist PERF_EVENT_KEY_RECLAIM_TIME:Ljava/lang/String; = "ReclaimTime"

.field public static final blacklist PERF_EVENT_KEY_RUNNABLE_TIME:Ljava/lang/String; = "RunnableTime"

.field public static final blacklist PERF_EVENT_KEY_RUNNING_TIME:Ljava/lang/String; = "RunningTime"

.field public static final blacklist PERF_EVENT_KEY_SEQ:Ljava/lang/String; = "MsgSeq"

.field public static final blacklist PERF_EVENT_KEY_SERVICENAME:Ljava/lang/String; = "ServiceName"

.field public static final blacklist PERF_EVENT_KEY_SERVICETYPE:Ljava/lang/String; = "ServiceStartType"

.field public static final blacklist PERF_EVENT_KEY_SWAPIN_TIME:Ljava/lang/String; = "SwapinTime"

.field public static final blacklist PERF_EVENT_KEY_TARGET_NAME:Ljava/lang/String; = "TargetName"

.field public static final blacklist PERF_EVENT_KEY_THREAD_NAME:Ljava/lang/String; = "ThreadName"

.field public static final blacklist PERF_EVENT_KEY_TID:Ljava/lang/String; = "TID"

.field public static final blacklist PERF_EVENT_KEY_TYPE:Ljava/lang/String; = "Type"

.field public static final blacklist PERF_EVENT_KEY_UID:Ljava/lang/String; = "UID"

.field public static final blacklist PERF_EVENT_KEY_VIEW_DRAW_TIME:Ljava/lang/String; = "ViewDrawTime"

.field public static final blacklist PERF_EVENT_KEY_VSYNCFRAME:Ljava/lang/String; = "VsyncFrame"

.field public static final blacklist PERF_EVENT_KEY_WALLTIME:Ljava/lang/String; = "MsgWallTime"

.field public static final blacklist PERF_EVENT_KEY_WHERE:Ljava/lang/String; = "SFDisplayWhere"

.field private static final blacklist PROP_PERFDEBUG_MONITOR_CATALOG_ENABLE:Ljava/lang/String; = "persist.sys.perfdebug.monitor.catalog"

.field private static final blacklist PROP_PERFDEBUG_MONITOR_ENABLE:Ljava/lang/String; = "persist.sys.perfdebug.monitor.enable"

.field public static final blacklist SMALL_LOG_CHAR_LENGTH:I = 0x80

.field public static final blacklist TAG:Ljava/lang/String; = "PerfDebugMonitor"

.field public static final blacklist THREASHOLD_LONG_BINDER_MS:I = 0x14

.field public static final blacklist THREASHOLD_LOOPER_DISPATCH_MS:I

.field public static final blacklist THRESHOLD_BOOST_FRAMEWORK_OPER_MS:I

.field public static final blacklist THRESHOLD_BROADCAST_BG_RECEIVE_MSG:I = 0x9c40

.field public static final blacklist THRESHOLD_BROADCAST_FG_RECEIVE_MSG:I = 0x1388

.field public static final blacklist THRESHOLD_INPUT_DISPATCH_MS:I

.field public static final blacklist THRESHOLD_INPUT_PROCESS_MS:I

.field public static final blacklist THRESHOLD_PROVIDER_CREATE_MS:I = 0x1388

.field public static final blacklist THRESHOLD_SERVICE_BG_CREATE_MS:I

.field public static final blacklist THRESHOLD_SERVICE_FG_CREATE_MS:I

.field public static final blacklist THRESHOLD_SLOW_DOFRAME_MS:I

.field private static final blacklist perfEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist sIsEnableLogMonitor:Z

.field private static blacklist sIsEnableTraceBinder:Z

.field private static blacklist sIsEnableTraceInput:Z

.field private static blacklist sIsEnableTraceLooper:Z

.field private static blacklist sIsEnableTraceViewDraw:Z

.field private static blacklist sIsEnableTraceViewLayout:Z

.field private static blacklist sIsEnableTraceViewMeasure:Z


# instance fields
.field public final blacklist THRESHOLD_FILE_SYNC_MS:I

.field public final blacklist THRESHOLD_QUEUED_WORK_OPER_MS:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 28
    nop

    .line 29
    const-string v0, "persist.sys.perfdebug.logturbo3.threshold"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG:Z

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Landroid/os/perfdebug/PerfDebugMonitorImpl;->LAUNCH_TIME_STAMP:J

    .line 37
    const/16 v2, 0x12c

    const/16 v3, 0x32

    if-eqz v0, :cond_18

    move v4, v3

    goto :goto_19

    :cond_18
    move v4, v2

    :goto_19
    sput v4, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_SLOW_DOFRAME_MS:I

    .line 42
    if-eqz v0, :cond_1e

    move v2, v3

    :cond_1e
    sput v2, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_INPUT_DISPATCH_MS:I

    .line 44
    if-eqz v0, :cond_23

    goto :goto_25

    :cond_23
    const/16 v3, 0xc8

    :goto_25
    sput v3, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_INPUT_PROCESS_MS:I

    .line 46
    if-eqz v0, :cond_2a

    goto :goto_2c

    :cond_2a
    const/16 v1, 0x1f4

    :goto_2c
    sput v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THREASHOLD_LOOPER_DISPATCH_MS:I

    .line 56
    if-eqz v0, :cond_32

    const/4 v1, 0x5

    goto :goto_34

    :cond_32
    const/16 v1, 0x14

    :goto_34
    sput v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_BOOST_FRAMEWORK_OPER_MS:I

    .line 63
    if-eqz v0, :cond_3b

    const/16 v0, 0x1388

    goto :goto_3d

    :cond_3b
    const/16 v0, 0x3a98

    :goto_3d
    sput v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_SERVICE_FG_CREATE_MS:I

    .line 64
    mul-int/lit8 v0, v0, 0xa

    sput v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_SERVICE_BG_CREATE_MS:I

    .line 84
    const/4 v0, 0x1

    .line 85
    const-string v1, "persist.sys.perfdebug.monitor.bindeDetail"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_BINDER_DETAIL:Z

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->perfEventMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 5

    .line 27
    invoke-direct {p0}, Landroid/os/perfdebug/PerfDebugMonitor;-><init>()V

    .line 52
    sget-boolean v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG:Z

    const/16 v1, 0x32

    const/16 v2, 0x64

    if-eqz v0, :cond_d

    move v3, v1

    goto :goto_e

    :cond_d
    move v3, v2

    :goto_e
    iput v3, p0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_FILE_SYNC_MS:I

    .line 61
    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    iput v1, p0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_QUEUED_WORK_OPER_MS:I

    return-void
.end method

.method private blacklist activityLifeCycleMonitorEventInit()V
    .registers 4

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->perfEventMap:Ljava/util/HashMap;

    const v2, 0x35c3716a    # 1.456164E-6f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v1, "EventID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    const-string v1, "PackageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    const-string v1, "UID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    const-string v1, "PID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    const-string v1, "MsgPlanTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    const-string v1, "PlanTimeER"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    const-string v1, "MsgWallTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    const-string v1, "Latency"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    const-string v1, "ProcState"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method private blacklist binderMonitorEventInit()V
    .registers 4

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->perfEventMap:Ljava/util/HashMap;

    const/16 v2, 0x3f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v1, "EventID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v1, "DispatchTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v1, "Duration"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v1, "PID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v1, "PackageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v1, "BinderInterface"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    const-string v1, "BinderCode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v1, "BinderTargetPid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    const-string v1, "BinderTargetTid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v1, "BinderTargetBlkio"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v1, "BinderTargetSwapin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v1, "BinderTargetFreepages"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v1, "BinderTargetRunning"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v1, "BinderTargetRunnable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v1, "BinderTargetUTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v1, "BinderTargetSTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v1, "BinderTargetThreadFull"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method private blacklist broadcastMonitorEventInit()V
    .registers 4

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->perfEventMap:Ljava/util/HashMap;

    const v2, 0x35c37296

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v1, "EventID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    const-string v1, "EventTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    const-string v1, "UID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    const-string v1, "PID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    const-string v1, "MonitorTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    const-string v1, "Type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    const-string v1, "IsOrder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    const-string v1, "Broadcast"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    const-string v1, "BroadcastIntent"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method private blacklist choreographerMonitorEventInit()V
    .registers 4

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->perfEventMap:Ljava/util/HashMap;

    const v2, 0x35c3716c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "EventID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    const-string v1, "EventTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    const-string v1, "PackageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    const-string v1, "UID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    const-string v1, "PID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    const-string v1, "MonitorTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    const-string v1, "VsyncFrame"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    const-string v1, "Callback"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method private blacklist contentProviderMonitorEventInit()V
    .registers 4

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->perfEventMap:Ljava/util/HashMap;

    const v2, 0x35c37297

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "EventID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    const-string v1, "EventTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    const-string v1, "UID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    const-string v1, "PID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    const-string v1, "MonitorTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    const-string v1, "ProviderAuthority"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    const-string v1, "ProviderClassName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    const-string v1, "Flags"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    const-string v1, "IsMultiprocess"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    return-void
.end method

.method public static blacklist formatCurrentTime(J)Ljava/lang/String;
    .registers 4
    .param p0, "curTimeMs"    # J

    .line 530
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 531
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 530
    return-object v0
.end method

.method static blacklist getEventKeyListByID(I)Ljava/util/List;
    .registers 3
    .param p0, "eventID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 419
    sget-object v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->perfEventMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private blacklist inputEventMonitorEventInit()V
    .registers 4

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->perfEventMap:Ljava/util/HashMap;

    const v2, 0x35c37552

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v1, "EventID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    const-string v1, "EventTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    const-string v1, "UID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const-string v1, "PID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    const-string v1, "Action"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    const-string v1, "MonitorTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    const-string v1, "MsgSeq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    const-string v1, "PackageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method private blacklist inputEventSlowMonitorEventInit()V
    .registers 4

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->perfEventMap:Ljava/util/HashMap;

    const v2, 0x35c37553

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v1, "EventID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v1, "EventTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    const-string v1, "PackageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    const-string v1, "UID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    const-string v1, "PID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v1, "DispatchTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    const-string v1, "Latency"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    const-string v1, "EventInfo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    return-void
.end method

.method public static blacklist isEnableLogMonitor()Z
    .registers 1

    .line 472
    sget-boolean v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableLogMonitor:Z

    return v0
.end method

.method public static blacklist isEnableTraceInput()Z
    .registers 1

    .line 497
    sget-boolean v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceInput:Z

    return v0
.end method

.method public static blacklist isEnableTraceLooper()Z
    .registers 1

    .line 493
    sget-boolean v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceLooper:Z

    return v0
.end method

.method public static blacklist isEnableTraceViewDraw()Z
    .registers 1

    .line 484
    sget-boolean v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceViewDraw:Z

    return v0
.end method

.method public static blacklist isEnableTraceViewLayout()Z
    .registers 1

    .line 480
    sget-boolean v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceViewLayout:Z

    return v0
.end method

.method public static blacklist isEnableTraceViewMeasure()Z
    .registers 1

    .line 476
    sget-boolean v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceViewMeasure:Z

    return v0
.end method

.method private blacklist loadProperties()V
    .registers 10

    .line 426
    nop

    .line 427
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    .line 426
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "persist.sys.perfdebug.monitor.enable"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableLogMonitor:Z

    .line 428
    const-string v0, "persist.sys.perfdebug.monitor.catalog"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "catalogProp":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->setAllDebugCatalogEnabled(Z)V

    .line 431
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 432
    const-string v3, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, "catalogStrs":[Ljava/lang/String;
    array-length v4, v3

    move v5, v2

    :goto_27
    if-ge v5, v4, :cond_9a

    aget-object v6, v3, v5

    .line 434
    .local v6, "cata":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 435
    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_9c

    :cond_37
    goto :goto_7d

    :sswitch_38
    const-string v8, "measure"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    move v7, v1

    goto :goto_7d

    :sswitch_42
    const-string v8, "input"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    const/4 v7, 0x5

    goto :goto_7d

    :sswitch_4c
    const-string v8, "draw"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    const/4 v7, 0x3

    goto :goto_7d

    :sswitch_56
    const-string v8, "all"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    move v7, v2

    goto :goto_7d

    :sswitch_60
    const-string v8, "looper"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    const/4 v7, 0x6

    goto :goto_7d

    :sswitch_6a
    const-string v8, "layout"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    const/4 v7, 0x2

    goto :goto_7d

    :sswitch_74
    const-string v8, "binder"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    const/4 v7, 0x4

    :goto_7d
    packed-switch v7, :pswitch_data_ba

    goto :goto_97

    .line 455
    :pswitch_81
    sput-boolean v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceLooper:Z

    goto :goto_97

    .line 452
    :pswitch_84
    sput-boolean v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceInput:Z

    .line 453
    goto :goto_97

    .line 449
    :pswitch_87
    sput-boolean v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceBinder:Z

    .line 450
    goto :goto_97

    .line 446
    :pswitch_8a
    sput-boolean v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceViewDraw:Z

    .line 447
    goto :goto_97

    .line 443
    :pswitch_8d
    sput-boolean v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceViewLayout:Z

    .line 444
    goto :goto_97

    .line 440
    :pswitch_90
    sput-boolean v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceViewMeasure:Z

    .line 441
    goto :goto_97

    .line 437
    :pswitch_93
    invoke-static {v1}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->setAllDebugCatalogEnabled(Z)V

    .line 438
    nop

    .line 433
    .end local v6    # "cata":Ljava/lang/String;
    :goto_97
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 460
    .end local v3    # "catalogStrs":[Ljava/lang/String;
    :cond_9a
    return-void

    nop

    :sswitch_data_9c
    .sparse-switch
        -0x52c9ea56 -> :sswitch_74
        -0x422504d6 -> :sswitch_6a
        -0x416445af -> :sswitch_60
        0x179a1 -> :sswitch_56
        0x2f2d44 -> :sswitch_4c
        0x5fb57ca -> :sswitch_42
        0x37eda55e -> :sswitch_38
    .end sparse-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
    .end packed-switch
.end method

.method private blacklist mainThreadBusyMonitorEventInit()V
    .registers 4

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->perfEventMap:Ljava/util/HashMap;

    const v2, 0x35c3716b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v1, "EventID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    const-string v1, "UID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v1, "PID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    const-string v1, "PackageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    const-string v1, "MsgPlanTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    const-string v1, "PlanTimeER"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    const-string v1, "MsgWallTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    const-string v1, "VsyncFrame"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    const-string v1, "Latency"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    const-string v1, "ProcState"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method private blacklist messageMonitorEventInit()V
    .registers 4

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->perfEventMap:Ljava/util/HashMap;

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v1, "EventID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    const-string v1, "PackageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    const-string v1, "UID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    const-string v1, "PID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    const-string v1, "MsgSeq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    const-string v1, "MsgPlanTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    const-string v1, "PlanTimeER"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    const-string v1, "PlanTimeUP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    const-string v1, "Latency"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    const-string v1, "MsgWallTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    const-string v1, "RunningTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    const-string v1, "RunnableTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    const-string v1, "CpuUTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    const-string v1, "CpuSTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v1, "IOTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v1, "SwapinTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v1, "ReclaimTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    const-string v1, "TargetName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    const-string v1, "Callback"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v1, "MsgWhat"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method

.method private blacklist monitorVersionControl()V
    .registers 7

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "fd":Ljava/io/FileDescriptor;
    const-string v1, "persist.sys.perfdebug.monitor.perfversion"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_VERSION:I

    .line 206
    const/4 v2, 0x3

    :try_start_b
    const-string v3, "/dev/mi_exception_log"

    sget v4, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v3
    :try_end_14
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_14} :catch_33
    .catchall {:try_start_b .. :try_end_14} :catchall_31

    move-object v0, v3

    .line 210
    if-eqz v0, :cond_4e

    .line 211
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-eqz v3, :cond_28

    sget-boolean v3, Lmiui/os/Build;->IS_PRE_VERSION:Z

    if-eqz v3, :cond_28

    .line 212
    nop

    .line 213
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_VERSION:I

    .line 216
    :cond_28
    :try_start_28
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_2b
    .catch Landroid/system/ErrnoException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 219
    :goto_2b
    goto :goto_4e

    .line 217
    :catch_2c
    move-exception v1

    .line 218
    .local v1, "ex":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->printStackTrace()V

    .end local v1    # "ex":Landroid/system/ErrnoException;
    goto :goto_2b

    .line 210
    :catchall_31
    move-exception v3

    goto :goto_4f

    .line 207
    :catch_33
    move-exception v3

    .line 208
    .local v3, "ex":Landroid/system/ErrnoException;
    :try_start_34
    invoke-virtual {v3}, Landroid/system/ErrnoException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_31

    .line 210
    .end local v3    # "ex":Landroid/system/ErrnoException;
    if-eqz v0, :cond_4e

    .line 211
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-eqz v3, :cond_4a

    sget-boolean v3, Lmiui/os/Build;->IS_PRE_VERSION:Z

    if-eqz v3, :cond_4a

    .line 212
    nop

    .line 213
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_VERSION:I

    .line 216
    :cond_4a
    :try_start_4a
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4d
    .catch Landroid/system/ErrnoException; {:try_start_4a .. :try_end_4d} :catch_2c

    goto :goto_2b

    .line 222
    :cond_4e
    :goto_4e
    return-void

    .line 210
    :goto_4f
    if-eqz v0, :cond_6a

    .line 211
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    if-eqz v4, :cond_62

    sget-boolean v4, Lmiui/os/Build;->IS_PRE_VERSION:Z

    if-eqz v4, :cond_62

    .line 212
    nop

    .line 213
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_VERSION:I

    .line 216
    :cond_62
    :try_start_62
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_65
    .catch Landroid/system/ErrnoException; {:try_start_62 .. :try_end_65} :catch_66

    .line 219
    goto :goto_6a

    .line 217
    :catch_66
    move-exception v1

    .line 218
    .restart local v1    # "ex":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->printStackTrace()V

    .line 221
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_6a
    :goto_6a
    throw v3
.end method

.method private blacklist otherMethodMonitorEventInit()V
    .registers 4

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->perfEventMap:Ljava/util/HashMap;

    const v2, 0x35c42d4b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v1, "EventID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    const-string v1, "EventTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    const-string v1, "UID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    const-string v1, "PID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    const-string v1, "PackageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    const-string v1, "Action"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    const-string v1, "MonitorTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    const-string v1, "ProcState"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    return-void
.end method

.method private blacklist serviceMonitorEventInit()V
    .registers 4

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->perfEventMap:Ljava/util/HashMap;

    const v2, 0x35c37294

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v1, "EventID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    const-string v1, "EventTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    const-string v1, "UID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    const-string v1, "PID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v1, "ServiceStartType"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    const-string v1, "DispatchTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    const-string v1, "MonitorTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    const-string v1, "Type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    const-string v1, "ProcessName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    const-string v1, "ServiceName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    const-string v1, "PackageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    const-string v1, "FGServiceType"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    const-string v1, "Flags"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    return-void
.end method

.method private static blacklist setAllDebugCatalogEnabled(Z)V
    .registers 1
    .param p0, "state"    # Z

    .line 463
    sput-boolean p0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceViewMeasure:Z

    .line 464
    sput-boolean p0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceViewLayout:Z

    .line 465
    sput-boolean p0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceViewDraw:Z

    .line 466
    sput-boolean p0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceInput:Z

    .line 467
    sput-boolean p0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceBinder:Z

    .line 468
    sput-boolean p0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceLooper:Z

    .line 469
    return-void
.end method

.method private blacklist viewRootMonitorEventInit()V
    .registers 4

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->perfEventMap:Ljava/util/HashMap;

    const v2, 0x35c3716e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v1, "EventID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v1, "EventTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    const-string v1, "UID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    const-string v1, "PID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    const-string v1, "PackageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    const-string v1, "MonitorTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    const-string v1, "VsyncFrame"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    const-string v1, "MessureTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    const-string v1, "LayoutTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    const-string v1, "DrawTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    const-string v1, "Mode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    const-string v1, "DispatchTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    const-string v1, "OnPreDrawTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    const-string v1, "OnDrawTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    const-string v1, "ViewDrawTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I

    .line 509
    const-string v0, "performance monitor"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    array-length v0, p2

    if-ge p3, v0, :cond_1b

    .line 511
    aget-object v0, p2, p3

    .line 512
    .local v0, "parm":Ljava/lang/String;
    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 513
    const-string v1, "performance properties update"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    invoke-direct {p0}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->loadProperties()V

    .line 516
    .end local v0    # "parm":Ljava/lang/String;
    :cond_1a
    goto :goto_20

    .line 517
    :cond_1b
    const-string v0, "Use dumpsys activity perfdebug update"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    :goto_20
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerfMonitor enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableLogMonitor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "catalog measure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceViewMeasure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceViewLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " draw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceViewDraw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceBinder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " looper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceLooper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method public blacklist isEnableTraceBinder()Z
    .registers 2

    .line 489
    sget-boolean v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->sIsEnableTraceBinder:Z

    return v0
.end method

.method public blacklist prepareMonitor()V
    .registers 1

    .line 186
    invoke-direct {p0}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->loadProperties()V

    .line 187
    invoke-direct {p0}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->monitorVersionControl()V

    .line 188
    invoke-direct {p0}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->binderMonitorEventInit()V

    .line 189
    invoke-direct {p0}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->broadcastMonitorEventInit()V

    .line 190
    invoke-direct {p0}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->choreographerMonitorEventInit()V

    .line 191
    invoke-direct {p0}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->contentProviderMonitorEventInit()V

    .line 192
    invoke-direct {p0}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->inputEventMonitorEventInit()V

    .line 193
    invoke-direct {p0}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->messageMonitorEventInit()V

    .line 194
    invoke-direct {p0}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->mainThreadBusyMonitorEventInit()V

    .line 195
    invoke-direct {p0}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->activityLifeCycleMonitorEventInit()V

    .line 196
    invoke-direct {p0}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->inputEventSlowMonitorEventInit()V

    .line 197
    invoke-direct {p0}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->serviceMonitorEventInit()V

    .line 198
    invoke-direct {p0}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->viewRootMonitorEventInit()V

    .line 199
    invoke-direct {p0}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->otherMethodMonitorEventInit()V

    .line 200
    return-void
.end method
