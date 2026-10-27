.class public Landroid/os/AnrMonitor;
.super Ljava/lang/Object;
.source "AnrMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/AnrMonitor$FileInfo;,
        Landroid/os/AnrMonitor$TimerThread;,
        Landroid/os/AnrMonitor$UploadInfo;,
        Landroid/os/AnrMonitor$WorkHandler;
    }
.end annotation


# static fields
.field public static final blacklist ANR_DIRECTORY:Ljava/lang/String; = "/data/anr/"

.field public static final blacklist ANR_INFO_HEAD:Ljava/lang/String; = "anr_info_"

.field public static final blacklist ANR_INFO_LIMIT:I = 0x5

.field public static final blacklist ANR_TRACES_LIMIT:I = 0x5

.field public static final blacklist BINDER_CALL_MONITOR_TIMEOUT:J = 0x3e8L

.field private static final blacklist CHECK_PARCEL_SIZE_ENABLE:Z

.field private static final blacklist CHECK_PARCEL_SIZE_KB:I

.field private static final blacklist DATE:Ljava/util/Date;

.field private static final blacklist DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field public static final blacklist DBG:Z

.field private static final blacklist DEFAULT_LOCK_WAIT_THRESHOLD:J = 0x1f4L

.field public static final blacklist DEFAULT_MESSAGE_HISTORY_DUMP_DURATION:I = 0x2710

.field public static final blacklist DUMP_APP_TRACE_TAG:Ljava/lang/String; = "dump-app-trace"

.field public static final blacklist DUMP_MESSAGE_TIMEOUT:J = 0x1f4L

.field private static final blacklist DUMP_TRACE_TAG:Ljava/lang/String; = "DUMP_APP_TRACE"

.field public static final blacklist INPUT_DISPATCHING_TIMEOUT:I = 0x1f40

.field public static final blacklist INPUT_MONITOR_TIMEOUT:J = 0x3e8L

.field private static final blacklist LINE_SEPARATOR:Ljava/lang/String;

.field public static final blacklist LOCK_WAIT_THRESHOLD:J

.field public static final blacklist LT_MESSAGE_CHECK_TIME:J = 0xc8L

.field public static final blacklist MAX_MESSAGE_SUMMARY_HISTORY:I = 0x32

.field public static final blacklist MAX_TIMEOUT:J = 0x186a0L

.field public static final blacklist MESSAGE_EXECUTION_TIMEOUT:J = 0x7d0L

.field public static final blacklist MESSAGE_MONITOR_TIMEOUT:J

.field private static final blacklist MESSAGE_UPLOAD_CHECK_TIME:J = 0xbb8L

.field private static final blacklist MONITOR_MSG_EXECUTION:Z

.field private static final blacklist MONITOR_TAG:Ljava/lang/String; = "MIUI-BLOCK-MONITOR"

.field private static final blacklist NOT_CTS_BUILD:Z

.field public static final blacklist PERF_EVENT_LOGGING_TIMEOUT:J = 0xbb8L

.field private static final blacklist SCREEN_HAND_PROP:Ljava/lang/String; = "persist.sys.screen_hang.time"

.field private static final blacklist SCREEN_HANG_TIMEOUT:I

.field public static final blacklist SEPARATOR:Ljava/lang/String; = ","

.field private static final blacklist TAG:Ljava/lang/String; = "AnrMonitor"

.field public static final blacklist TRACES_FILE_TYPE:Ljava/lang/String; = ".txt"

.field public static final blacklist TRACES_HEAD:Ljava/lang/String; = "traces_"

.field private static final blacklist TRACE_DIR:Ljava/lang/String; = "/data/anr/"

.field private static final blacklist mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

.field private static final blacklist mScreenHangRunnable:Ljava/lang/Runnable;

.field private static blacklist sBinderRecordIndex:I

.field private static blacklist sInputRecordIndex:I

.field private static final blacklist sInstanceSync:Ljava/lang/Object;

.field private static blacklist sIsSystemApp:Ljava/lang/Boolean;

.field private static final blacklist sMonitorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sMsgRecordIndex:I

.field private static blacklist sPkgName:Ljava/lang/String;

.field private static blacklist sProcessName:Ljava/lang/String;

.field private static blacklist sSystemBootCompleted:Z

.field private static final blacklist sUploadBinderRecords:[Landroid/os/AnrMonitor$UploadInfo;

.field private static final blacklist sUploadInputRecords:[Landroid/os/AnrMonitor$UploadInfo;

.field private static final blacklist sUploadMsgRecords:[Landroid/os/AnrMonitor$UploadInfo;

.field private static blacklist sVersionCode:I

.field private static blacklist sVersionName:Ljava/lang/String;

.field private static volatile blacklist sWorkHandler:Landroid/os/AnrMonitor$WorkHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmScreenHangRunnable()Ljava/lang/Runnable;
    .registers 1

    sget-object v0, Landroid/os/AnrMonitor;->mScreenHangRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smisSystemBootCompleted()Z
    .registers 1

    invoke-static {}, Landroid/os/AnrMonitor;->isSystemBootCompleted()Z

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 58
    const-string v0, "anr.monitor.debug.on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/AnrMonitor;->DBG:Z

    .line 59
    const-string v0, "monitor.msg.execution"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/AnrMonitor;->MONITOR_MSG_EXECUTION:Z

    .line 60
    const-string v0, "persist.sys.miui_optimization"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/AnrMonitor;->NOT_CTS_BUILD:Z

    .line 66
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Landroid/os/AnrMonitor;->DATE:Ljava/util/Date;

    .line 67
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd_HH_mm_ss.SSS"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/AnrMonitor;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    .line 68
    const-string v0, "line.separator"

    const-string v3, "\n"

    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/AnrMonitor;->LINE_SEPARATOR:Ljava/lang/String;

    .line 70
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_3b

    const-wide/16 v3, 0x7d0

    goto :goto_3d

    :cond_3b
    const-wide/16 v3, 0xbb8

    :goto_3d
    sput-wide v3, Landroid/os/AnrMonitor;->MESSAGE_MONITOR_TIMEOUT:J

    .line 80
    const-wide/16 v3, 0x1f4

    const-string v0, "persist.vm.lockprof.threshold"

    invoke-static {v0, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Landroid/os/AnrMonitor;->LOCK_WAIT_THRESHOLD:J

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/AnrMonitor;->sInstanceSync:Ljava/lang/Object;

    .line 100
    const/16 v0, 0xc8

    .line 101
    const-string v3, "persist.binder.check.size"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/AnrMonitor;->CHECK_PARCEL_SIZE_KB:I

    .line 102
    if-lez v0, :cond_5d

    goto :goto_5e

    :cond_5d
    move v2, v1

    :goto_5e
    sput-boolean v2, Landroid/os/AnrMonitor;->CHECK_PARCEL_SIZE_ENABLE:Z

    .line 105
    sput v1, Landroid/os/AnrMonitor;->sMsgRecordIndex:I

    .line 107
    const/16 v0, 0xa

    new-array v2, v0, [Landroid/os/AnrMonitor$UploadInfo;

    sput-object v2, Landroid/os/AnrMonitor;->sUploadMsgRecords:[Landroid/os/AnrMonitor$UploadInfo;

    .line 109
    sput v1, Landroid/os/AnrMonitor;->sInputRecordIndex:I

    .line 111
    new-array v2, v0, [Landroid/os/AnrMonitor$UploadInfo;

    sput-object v2, Landroid/os/AnrMonitor;->sUploadInputRecords:[Landroid/os/AnrMonitor$UploadInfo;

    .line 113
    sput v1, Landroid/os/AnrMonitor;->sBinderRecordIndex:I

    .line 115
    new-array v0, v0, [Landroid/os/AnrMonitor$UploadInfo;

    sput-object v0, Landroid/os/AnrMonitor;->sUploadBinderRecords:[Landroid/os/AnrMonitor$UploadInfo;

    .line 117
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Landroid/os/AnrMonitor;->mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/AnrMonitor;->sMonitorList:Ljava/util/ArrayList;

    .line 120
    sget-boolean v1, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v1, :cond_9a

    .line 121
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_9a
    const/16 v0, 0xbb8

    const-string v1, "persist.sys.screen_hang.time"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/AnrMonitor;->SCREEN_HANG_TIMEOUT:I

    .line 1033
    new-instance v0, Landroid/os/AnrMonitor$1;

    invoke-direct {v0}, Landroid/os/AnrMonitor$1;-><init>()V

    sput-object v0, Landroid/os/AnrMonitor;->mScreenHangRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized blacklist addBinderCallTimeToHistory(J)V
    .registers 10
    .param p0, "tookTime"    # J

    const-class v0, Landroid/os/AnrMonitor;

    monitor-enter v0

    .line 620
    :try_start_3
    new-instance v1, Landroid/os/AnrMonitor$UploadInfo;

    invoke-direct {v1}, Landroid/os/AnrMonitor$UploadInfo;-><init>()V

    .line 621
    .local v1, "uploadBinderInfo":Landroid/os/AnrMonitor$UploadInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    .local v2, "b":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The binder call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/AnrMonitor;->binderCallToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    .line 624
    iput-wide p0, v1, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    .line 625
    invoke-static {}, Landroid/os/AnrMonitor;->currentThreadName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    .line 627
    sget-object v3, Landroid/os/AnrMonitor;->sUploadBinderRecords:[Landroid/os/AnrMonitor$UploadInfo;

    sget v4, Landroid/os/AnrMonitor;->sBinderRecordIndex:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Landroid/os/AnrMonitor;->sBinderRecordIndex:I

    aput-object v1, v3, v4

    .line 628
    array-length v4, v3

    if-lt v5, v4, :cond_7b

    .line 629
    invoke-static {v3}, Landroid/os/AnrMonitor$UploadInfo;->-$$Nest$smcreateJsonString([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, "reportContent":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_78

    .line 631
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 632
    .local v4, "message":Landroid/os/Message;
    const/4 v5, 0x2

    iput v5, v4, Landroid/os/Message;->what:I

    .line 633
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 634
    sget-boolean v5, Landroid/os/AnrMonitor;->MONITOR_MSG_EXECUTION:Z

    if-eqz v5, :cond_71

    const-string v5, "AnrMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "binder call report content : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_71
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 637
    .end local v4    # "message":Landroid/os/Message;
    :cond_78
    const/4 v4, 0x0

    sput v4, Landroid/os/AnrMonitor;->sBinderRecordIndex:I
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_7d

    .line 639
    .end local v3    # "reportContent":Ljava/lang/String;
    :cond_7b
    monitor-exit v0

    return-void

    .line 619
    .end local v1    # "uploadBinderInfo":Landroid/os/AnrMonitor$UploadInfo;
    .end local v2    # "b":Ljava/lang/StringBuilder;
    .end local p0    # "tookTime":J
    :catchall_7d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized blacklist addInputToHistory(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;Landroid/view/InputChannel;J)V
    .registers 13
    .param p0, "event"    # Landroid/view/InputEvent;
    .param p1, "receiver"    # Landroid/view/InputEventReceiver;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "tookTime"    # J

    const-class v0, Landroid/os/AnrMonitor;

    monitor-enter v0

    .line 416
    :try_start_3
    new-instance v1, Landroid/os/AnrMonitor$UploadInfo;

    invoke-direct {v1}, Landroid/os/AnrMonitor$UploadInfo;-><init>()V

    .line 417
    .local v1, "uploadInputInfo":Landroid/os/AnrMonitor$UploadInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v2, "b":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The inputEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/os/AnrMonitor;->inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string v3, " target reveicer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v3, " target InputChannel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-static {p2}, Landroid/os/AnrMonitor;->inputChannelToString(Landroid/view/InputChannel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    .line 425
    iput-wide p3, v1, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    .line 426
    sget-object v3, Landroid/os/AnrMonitor;->sUploadInputRecords:[Landroid/os/AnrMonitor$UploadInfo;

    sget v4, Landroid/os/AnrMonitor;->sInputRecordIndex:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Landroid/os/AnrMonitor;->sInputRecordIndex:I

    aput-object v1, v3, v4

    .line 427
    array-length v4, v3

    if-lt v5, v4, :cond_9c

    .line 428
    invoke-static {v3}, Landroid/os/AnrMonitor$UploadInfo;->-$$Nest$smcreateJsonString([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "reportContent":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_99

    .line 430
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 431
    .local v4, "message":Landroid/os/Message;
    const/4 v5, 0x2

    iput v5, v4, Landroid/os/Message;->what:I

    .line 432
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 433
    sget-boolean v5, Landroid/os/AnrMonitor;->MONITOR_MSG_EXECUTION:Z

    if-eqz v5, :cond_92

    const-string v5, "AnrMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "report content : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_92
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 436
    .end local v4    # "message":Landroid/os/Message;
    :cond_99
    const/4 v4, 0x0

    sput v4, Landroid/os/AnrMonitor;->sInputRecordIndex:I
    :try_end_9c
    .catchall {:try_start_3 .. :try_end_9c} :catchall_9e

    .line 438
    .end local v3    # "reportContent":Ljava/lang/String;
    :cond_9c
    monitor-exit v0

    return-void

    .line 415
    .end local v1    # "uploadInputInfo":Landroid/os/AnrMonitor$UploadInfo;
    .end local v2    # "b":Ljava/lang/StringBuilder;
    .end local p0    # "event":Landroid/view/InputEvent;
    .end local p1    # "receiver":Landroid/view/InputEventReceiver;
    .end local p2    # "inputChannel":Landroid/view/InputChannel;
    .end local p3    # "tookTime":J
    :catchall_9e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized blacklist addMessageToHistory(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .registers 10
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "monitorInfo"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    const-class v0, Landroid/os/AnrMonitor;

    monitor-enter v0

    .line 342
    :try_start_3
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v1, :cond_d0

    .line 343
    new-instance v1, Landroid/os/AnrMonitor$UploadInfo;

    invoke-direct {v1}, Landroid/os/AnrMonitor$UploadInfo;-><init>()V

    .line 344
    .local v1, "uploadMsgInfo":Landroid/os/AnrMonitor$UploadInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v2, "b":Ljava/lang/StringBuilder;
    const-string v3, "The message {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-object v3, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v3, :cond_2d

    .line 347
    const-string v3, " callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v3, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 350
    :cond_2d
    const-string v3, " what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    iget v3, p0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    :goto_37
    const-string v3, " target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    iget-object v3, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    .line 357
    invoke-static {}, Landroid/os/AnrMonitor;->currentThreadName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    .line 358
    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getTookTimeAfterDispatch()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    .line 359
    sget-boolean v3, Landroid/os/AnrMonitor;->MONITOR_MSG_EXECUTION:Z

    if-eqz v3, :cond_8c

    .line 360
    const-string v4, "AnrMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The msg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getMonitorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " add to history sMsgRecordIndex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/os/AnrMonitor;->sMsgRecordIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_8c
    sget-object v4, Landroid/os/AnrMonitor;->sUploadMsgRecords:[Landroid/os/AnrMonitor$UploadInfo;

    sget v5, Landroid/os/AnrMonitor;->sMsgRecordIndex:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Landroid/os/AnrMonitor;->sMsgRecordIndex:I

    aput-object v1, v4, v5

    .line 364
    array-length v5, v4

    if-lt v6, v5, :cond_d0

    .line 365
    invoke-static {v4}, Landroid/os/AnrMonitor$UploadInfo;->-$$Nest$smcreateJsonString([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, "reportContent":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_cd

    .line 367
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 368
    .local v5, "message":Landroid/os/Message;
    const/4 v6, 0x2

    iput v6, v5, Landroid/os/Message;->what:I

    .line 369
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 370
    if-eqz v3, :cond_c6

    const-string v3, "AnrMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "report content : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_c6
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 373
    .end local v5    # "message":Landroid/os/Message;
    :cond_cd
    const/4 v3, 0x0

    sput v3, Landroid/os/AnrMonitor;->sMsgRecordIndex:I
    :try_end_d0
    .catchall {:try_start_3 .. :try_end_d0} :catchall_d2

    .line 376
    .end local v1    # "uploadMsgInfo":Landroid/os/AnrMonitor$UploadInfo;
    .end local v2    # "b":Ljava/lang/StringBuilder;
    .end local v4    # "reportContent":Ljava/lang/String;
    :cond_d0
    monitor-exit v0

    return-void

    .line 341
    .end local p0    # "msg":Landroid/os/Message;
    .end local p1    # "monitorInfo":Landroid/os/BaseLooper$MessageMonitorInfo;
    :catchall_d2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static blacklist binderCallToString()Ljava/lang/String;
    .registers 4

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "caller":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_32

    .line 645
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 646
    const-string v3, "{ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    const-string v2, " }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 652
    :cond_32
    const-string v2, ""

    return-object v2
.end method

.method public static blacklist canMonitorAnr()Z
    .registers 1

    .line 133
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v0, :cond_a

    sget-boolean v0, Landroid/os/AnrMonitor;->NOT_CTS_BUILD:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static blacklist canMonitorMessage()Z
    .registers 3

    .line 587
    sget-boolean v0, Landroid/os/AnrMonitor;->MONITOR_MSG_EXECUTION:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 588
    return v1

    .line 590
    :cond_6
    sget-object v0, Landroid/os/AnrMonitor;->sMonitorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 591
    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 590
    :goto_1a
    return v1
.end method

.method public static blacklist checkBinderCallTime(J)V
    .registers 6
    .param p0, "startTime"    # J

    .line 609
    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 610
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    .line 611
    .local v0, "tookTime":J
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_42

    .line 612
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isPerfEventReportable()Z

    move-result v2

    if-nez v2, :cond_3f

    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3f

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The binder call took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 615
    :cond_3f
    invoke-static {v0, v1}, Landroid/os/AnrMonitor;->addBinderCallTimeToHistory(J)V

    .line 617
    :cond_42
    return-void
.end method

.method public static blacklist checkInputTime(JLandroid/view/InputEvent;)V
    .registers 9
    .param p0, "startTime"    # J
    .param p2, "event"    # Landroid/view/InputEvent;

    .line 379
    const-string v0, "ms."

    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 380
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p0

    .line 381
    .local v1, "tookTime":J
    const-wide/16 v3, 0x3e8

    cmp-long v3, v1, v3

    if-lez v3, :cond_55

    .line 383
    :try_start_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The input: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_39} :catch_3a

    .line 386
    goto :goto_55

    .line 384
    :catch_3a
    move-exception v3

    .line 385
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkInputTime failed and took time is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_55
    :goto_55
    return-void
.end method

.method public static blacklist checkInputTime(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;Landroid/view/InputChannel;)V
    .registers 11
    .param p0, "event"    # Landroid/view/InputEvent;
    .param p1, "receiver"    # Landroid/view/InputEventReceiver;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;

    .line 391
    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 392
    :cond_7
    const-wide/16 v0, 0x0

    .line 393
    .local v0, "tookTime":J
    sget-object v2, Landroid/os/AnrMonitor;->mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

    monitor-enter v2

    .line 394
    :try_start_c
    invoke-virtual {p0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v3

    .line 395
    .local v3, "index":I
    if-gez v3, :cond_18

    .line 396
    monitor-exit v2

    return-void

    .line 398
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 399
    invoke-virtual {v2, v3}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 400
    .end local v3    # "index":I
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_63

    .line 401
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_62

    .line 402
    invoke-static {p0, p1, p2, v0, v1}, Landroid/os/AnrMonitor;->addInputToHistory(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;Landroid/view/InputChannel;J)V

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Landroid/os/AnrMonitor;->inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms. Send to InputChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 404
    invoke-virtual {p2}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 403
    invoke-static {v2, v3}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 406
    :cond_62
    return-void

    .line 400
    :catchall_63
    move-exception v3

    :try_start_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v3
.end method

.method public static blacklist checkMsgTime(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .registers 8
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "monitorInfo"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 320
    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 321
    :cond_7
    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getTookTime()J

    move-result-wide v0

    .line 322
    .local v0, "tookTime":J
    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getTookTimeAfterDispatch()J

    move-result-wide v2

    .line 323
    .local v2, "tookTimeAfterDispatch":J
    const-wide/32 v4, 0x186a0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_62

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1d

    goto :goto_62

    .line 328
    :cond_1d
    sget-wide v4, Landroid/os/AnrMonitor;->MESSAGE_MONITOR_TIMEOUT:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_58

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The msg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getMonitorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms and took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms after dispatch."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    :cond_58
    const-wide/16 v4, 0xbb8

    cmp-long v4, v2, v4

    if-lez v4, :cond_61

    .line 336
    invoke-static {p0, p1}, Landroid/os/AnrMonitor;->addMessageToHistory(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V

    .line 338
    :cond_61
    return-void

    .line 325
    :cond_62
    :goto_62
    return-void
.end method

.method public static blacklist createFile(Ljava/lang/String;)Ljava/io/File;
    .registers 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/AnrMonitor;->createFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createFile(Ljava/lang/String;Z)Ljava/io/File;
    .registers 8
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "forceClear"    # Z

    .line 149
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 152
    .local v2, "tracesDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 153
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 154
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 155
    return-object v1

    .line 158
    :cond_1a
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fd

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 160
    if-eqz p1, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 161
    :cond_2f
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1b6

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_3b} :catch_3d

    .line 166
    nop

    .line 167
    .end local v2    # "tracesDir":Ljava/io/File;
    return-object v0

    .line 163
    :catch_3d
    move-exception v2

    .line 164
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AnrMonitor"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    return-object v1
.end method

.method public static declared-synchronized blacklist currentPackageName()Ljava/lang/String;
    .registers 3

    const-class v0, Landroid/os/AnrMonitor;

    monitor-enter v0

    .line 479
    :try_start_3
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 481
    const-string v2, "system_server"

    sput-object v2, Landroid/os/AnrMonitor;->sPkgName:Ljava/lang/String;

    goto :goto_14

    .line 483
    :cond_12
    sput-object v1, Landroid/os/AnrMonitor;->sPkgName:Ljava/lang/String;

    .line 486
    :goto_14
    sget-object v2, Landroid/os/AnrMonitor;->sPkgName:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v2

    .line 478
    .end local v1    # "pkgName":Ljava/lang/String;
    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static blacklist currentProcessName()Ljava/lang/String;
    .registers 2

    .line 514
    sget-object v0, Landroid/os/AnrMonitor;->sProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 515
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "processName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 517
    const-string v1, "system_server"

    sput-object v1, Landroid/os/AnrMonitor;->sProcessName:Ljava/lang/String;

    goto :goto_19

    .line 519
    :cond_17
    sput-object v0, Landroid/os/AnrMonitor;->sProcessName:Ljava/lang/String;

    .line 522
    .end local v0    # "processName":Ljava/lang/String;
    :cond_19
    :goto_19
    sget-object v0, Landroid/os/AnrMonitor;->sProcessName:Ljava/lang/String;

    return-object v0
.end method

.method static blacklist currentThreadName()Ljava/lang/String;
    .registers 1

    .line 526
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist currentVersionCode()I
    .registers 4

    .line 530
    sget v0, Landroid/os/AnrMonitor;->sVersionCode:I

    if-nez v0, :cond_27

    .line 532
    :try_start_4
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 533
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_25

    .line 534
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 535
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 534
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 536
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_25

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v2, :cond_25

    .line 537
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Landroid/os/AnrMonitor;->sVersionCode:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_26

    .line 542
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_25
    goto :goto_27

    .line 540
    :catch_26
    move-exception v0

    .line 544
    :cond_27
    :goto_27
    sget v0, Landroid/os/AnrMonitor;->sVersionCode:I

    return v0
.end method

.method static blacklist currentVersionName()Ljava/lang/String;
    .registers 4

    .line 548
    sget-object v0, Landroid/os/AnrMonitor;->sVersionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 550
    :try_start_8
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 551
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_29

    .line 552
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 553
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 552
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 554
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_29

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_29

    .line 555
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Landroid/os/AnrMonitor;->sVersionName:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_2a

    .line 560
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_29
    goto :goto_2b

    .line 558
    :catch_2a
    move-exception v0

    .line 562
    :cond_2b
    :goto_2b
    sget-object v0, Landroid/os/AnrMonitor;->sVersionName:Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist deleteUnnecessaryFileIfNeeded(Ljava/io/File;Ljava/lang/String;I)V
    .registers 12
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .line 1003
    if-eqz p0, :cond_55

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_55

    .line 1007
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1008
    .local v0, "fileInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/os/AnrMonitor$FileInfo;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1010
    .local v1, "subFiles":[Ljava/io/File;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_33

    aget-object v4, v1, v3

    .line 1011
    .local v4, "subFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1013
    .local v5, "filename":Ljava/lang/String;
    if-eqz v5, :cond_30

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 1014
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 1015
    .local v6, "modifiedTime":J
    new-instance v8, Landroid/os/AnrMonitor$FileInfo;

    invoke-direct {v8, v4, v6, v7}, Landroid/os/AnrMonitor$FileInfo;-><init>(Ljava/io/File;J)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    .end local v4    # "subFile":Ljava/io/File;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "modifiedTime":J
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1020
    :cond_33
    :try_start_33
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_36} :catch_37

    .line 1023
    goto :goto_3b

    .line 1021
    :catch_37
    move-exception v2

    .line 1022
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1025
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3b
    move v2, p2

    .local v2, "i":I
    :goto_3c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_54

    .line 1026
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/AnrMonitor$FileInfo;

    invoke-virtual {v3}, Landroid/os/AnrMonitor$FileInfo;->getFile()Ljava/io/File;

    move-result-object v3

    .line 1027
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_51

    .line 1028
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1025
    .end local v3    # "file":Ljava/io/File;
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 1031
    .end local v2    # "i":I
    :cond_54
    return-void

    .line 1004
    .end local v0    # "fileInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/os/AnrMonitor$FileInfo;>;"
    .end local v1    # "subFiles":[Ljava/io/File;
    :cond_55
    :goto_55
    return-void
.end method

.method public static blacklist dispatchInputEventStart(Landroid/view/InputEvent;)V
    .registers 5
    .param p0, "event"    # Landroid/view/InputEvent;

    .line 409
    sget-object v0, Landroid/os/AnrMonitor;->mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

    monitor-enter v0

    .line 410
    :try_start_3
    invoke-virtual {p0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 411
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static blacklist doDump(Ljava/lang/String;)V
    .registers 10
    .param p0, "cmds"    # Ljava/lang/String;

    .line 711
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 712
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "dump_service"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 713
    .local v1, "service":Ljava/lang/String;
    const-string v2, "args"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 714
    .local v2, "array":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 715
    .local v3, "size":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 716
    .local v4, "args":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1c
    if-ge v5, v3, :cond_2d

    .line 717
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "opt"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 716
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 719
    .end local v5    # "i":I
    :cond_2d
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_31} :catch_40

    .line 721
    .local v5, "binder":Landroid/os/IBinder;
    :try_start_31
    sget-object v6, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-interface {v5, v6, v4}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_36} :catch_37
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_36} :catch_40

    .line 724
    goto :goto_3f

    .line 722
    :catch_37
    move-exception v6

    .line 723
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_38
    const-string v7, "AnrMonitor"

    const-string v8, "dump failed"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_3f} :catch_40

    .line 727
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "service":Ljava/lang/String;
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v3    # "size":I
    .end local v4    # "args":[Ljava/lang/String;
    .end local v5    # "binder":Landroid/os/IBinder;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_3f
    goto :goto_44

    .line 725
    :catch_40
    move-exception v0

    .line 726
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 728
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_44
    return-void
.end method

.method public static blacklist dumpAnrInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Landroid/util/SparseArray;[Ljava/lang/String;ZZ)Ljava/io/File;
    .registers 20
    .param p0, "oriInfo"    # Ljava/lang/StringBuilder;
    .param p1, "extraInfo"    # Ljava/lang/String;
    .param p2, "anrProcessName"    # Ljava/lang/String;
    .param p3, "anrPid"    # I
    .param p6, "nativeProcs"    # [Ljava/lang/String;
    .param p7, "isMonkeyTest"    # Z
    .param p8, "bgAnr"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/io/File;"
        }
    .end annotation

    .line 260
    .local p4, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p5, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .line 262
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_76
    .catchall {:try_start_1 .. :try_end_5} :catchall_6f

    .line 263
    .local v2, "start":J
    move-object v4, p2

    move/from16 v5, p8

    :try_start_8
    invoke-static {v5, p2}, Landroid/os/AnrMonitor;->getAnrPath(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 264
    .local v6, "filePath":Ljava/lang/String;
    invoke-static {v6}, Landroid/os/AnrMonitor;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v7, v0

    .line 265
    .local v7, "file":Ljava/io/File;
    invoke-static {v7}, Landroid/os/AnrMonitor;->isFileAvailable(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 266
    new-instance v0, Ljava/io/FileWriter;

    const/4 v8, 0x1

    invoke-direct {v0, v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    move-object v1, v0

    .line 267
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 268
    if-eqz p7, :cond_2b

    .line 269
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2b} :catch_6c
    .catchall {:try_start_8 .. :try_end_2b} :catchall_69

    .line 271
    :cond_2b
    move-object v8, p1

    :try_start_2c
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/AnrMonitor;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "(dump anr info success and took "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "ms)"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_56} :catch_5e
    .catchall {:try_start_2c .. :try_end_56} :catchall_8b

    .line 274
    nop

    .line 279
    nop

    .line 281
    :try_start_58
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 283
    goto :goto_5d

    .line 282
    :catch_5c
    move-exception v0

    .line 274
    :goto_5d
    return-object v7

    .line 276
    .end local v2    # "start":J
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    :catch_5e
    move-exception v0

    goto :goto_7b

    .line 265
    .restart local v2    # "start":J
    .restart local v6    # "filePath":Ljava/lang/String;
    .restart local v7    # "file":Ljava/io/File;
    :cond_60
    move-object v8, p1

    .line 279
    .end local v2    # "start":J
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    if-eqz v1, :cond_89

    .line 281
    :try_start_63
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    .line 283
    :goto_66
    goto :goto_89

    .line 282
    :catch_67
    move-exception v0

    goto :goto_66

    .line 279
    :catchall_69
    move-exception v0

    move-object v8, p1

    goto :goto_74

    .line 276
    :catch_6c
    move-exception v0

    move-object v8, p1

    goto :goto_7b

    .line 279
    :catchall_6f
    move-exception v0

    move-object v8, p1

    move-object v4, p2

    move/from16 v5, p8

    :goto_74
    move-object v2, v0

    goto :goto_8d

    .line 276
    :catch_76
    move-exception v0

    move-object v8, p1

    move-object v4, p2

    move/from16 v5, p8

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    :goto_7b
    :try_start_7b
    const-string v2, "AnrMonitor"

    const-string v3, "Error happens when dumping anr info"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_8b

    .line 279
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_89

    .line 281
    :try_start_85
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_67

    goto :goto_66

    .line 286
    :cond_89
    :goto_89
    const/4 v0, 0x0

    return-object v0

    .line 279
    :catchall_8b
    move-exception v0

    goto :goto_74

    :goto_8d
    if-eqz v1, :cond_94

    .line 281
    :try_start_8f
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    .line 283
    goto :goto_94

    .line 282
    :catch_93
    move-exception v0

    .line 285
    :cond_94
    :goto_94
    throw v2
.end method

.method public static blacklist dumpBinderInfo(ILjava/io/Writer;)V
    .registers 5
    .param p0, "pid"    # I
    .param p1, "writer"    # Ljava/io/Writer;

    .line 219
    :try_start_0
    const-string v0, "/sys/kernel/debug/binder/failed_transaction_log"

    .line 220
    .local v0, "srcPath":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V

    .line 221
    const-string v1, "/sys/kernel/debug/binder/transaction_log"

    move-object v0, v1

    .line 222
    invoke-static {v0, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V

    .line 223
    const-string v1, "/sys/kernel/debug/binder/transactions"

    move-object v0, v1

    .line 224
    invoke-static {v0, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V

    .line 225
    const-string v1, "/sys/kernel/debug/binder/stats"

    move-object v0, v1

    .line 226
    invoke-static {v0, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/kernel/debug/binder/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 228
    invoke-static {v0, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 231
    .end local v0    # "srcPath":Ljava/lang/String;
    goto :goto_37

    .line 229
    :catch_2f
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AnrMonitor"

    const-string v2, "dumpBinderInfo fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    .end local v0    # "e":Ljava/io/IOException;
    :goto_37
    return-void
.end method

.method public static blacklist dumpCpuInfo(ILjava/io/Writer;)V
    .registers 5
    .param p0, "pid"    # I
    .param p1, "writer"    # Ljava/io/Writer;

    .line 236
    const-string v0, "/proc/"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/schedstat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "srcPath":Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/stat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .end local v1    # "srcPath":Ljava/lang/String;
    .local v0, "srcPath":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_36} :catch_37

    .line 242
    .end local v0    # "srcPath":Ljava/lang/String;
    goto :goto_3f

    .line 240
    :catch_37
    move-exception v0

    .line 241
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AnrMonitor"

    const-string v2, "dumpCpuInfo fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3f
    return-void
.end method

.method static blacklist finishMonitor(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .registers 5
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "monitorInfo"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 580
    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorMessage()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 581
    :cond_7
    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getMonitorDigest()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "digest":Ljava/lang/String;
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 584
    return-void
.end method

.method private static blacklist getAnrPath(ZLjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "bgAnr"    # Z
    .param p1, "anrProcessName"    # Ljava/lang/String;

    .line 246
    const-string v0, ""

    .line 247
    .local v0, "extraInfoFileName":Ljava/lang/String;
    if-eqz p0, :cond_7

    .line 248
    const-string v0, "anr_info.txt"

    goto :goto_32

    .line 250
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anr_info_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/AnrMonitor;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/anr/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getWorkHandler()Landroid/os/Handler;
    .registers 4

    .line 596
    sget-object v0, Landroid/os/AnrMonitor;->sWorkHandler:Landroid/os/AnrMonitor$WorkHandler;

    if-nez v0, :cond_25

    .line 597
    sget-object v0, Landroid/os/AnrMonitor;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_7
    sget-object v1, Landroid/os/AnrMonitor;->sWorkHandler:Landroid/os/AnrMonitor$WorkHandler;

    if-nez v1, :cond_20

    .line 599
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "work-thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 600
    .local v1, "monitorThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 601
    new-instance v2, Landroid/os/AnrMonitor$WorkHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/AnrMonitor$WorkHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Landroid/os/AnrMonitor;->sWorkHandler:Landroid/os/AnrMonitor$WorkHandler;

    .line 603
    .end local v1    # "monitorThread":Landroid/os/HandlerThread;
    :cond_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v1

    .line 605
    :cond_25
    :goto_25
    sget-object v0, Landroid/os/AnrMonitor;->sWorkHandler:Landroid/os/AnrMonitor$WorkHandler;

    return-object v0
.end method

.method private static blacklist inputChannelToString(Landroid/view/InputChannel;)Ljava/lang/String;
    .registers 6
    .param p0, "inputChannel"    # Landroid/view/InputChannel;

    .line 458
    const-string v0, "uninitialized"

    const-string v1, "null"

    if-nez p0, :cond_7

    return-object v1

    .line 459
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "inputChannelName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 461
    return-object v0

    .line 464
    :cond_12
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "splitResult":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_21

    .line 466
    array-length v3, v0

    sub-int/2addr v3, v4

    aget-object v1, v0, v3
    :try_end_20
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_20} :catch_22

    return-object v1

    .line 468
    :cond_21
    return-object v2

    .line 471
    .end local v0    # "splitResult":[Ljava/lang/String;
    .end local v2    # "inputChannelName":Ljava/lang/String;
    :catch_22
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "Error getting inputChannel name "

    invoke-static {v2, v0}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 473
    return-object v1
.end method

.method private static blacklist inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;
    .registers 6
    .param p0, "event"    # Landroid/view/InputEvent;

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v0, "msg":Ljava/lang/StringBuilder;
    instance-of v1, p0, Landroid/view/KeyEvent;

    const-string v2, " }"

    if-eqz v1, :cond_38

    .line 443
    move-object v1, p0

    check-cast v1, Landroid/view/KeyEvent;

    .line 444
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    const-string v3, "KeyEvent { action="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v3, ", keyCode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 449
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_38
    move-object v1, p0

    check-cast v1, Landroid/view/MotionEvent;

    .line 450
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    const-string v3, "MotionEvent { action="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist isAllowedMonitor(Landroid/os/BaseLooper;)Z
    .registers 3
    .param p0, "looper"    # Landroid/os/BaseLooper;

    .line 290
    if-eqz p0, :cond_7

    .line 291
    invoke-virtual {p0}, Landroid/os/BaseLooper;->isMonitorAnr()Z

    move-result v0

    return v0

    .line 293
    :cond_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public static blacklist isAllowedMonitorBinderCall(Landroid/os/BaseLooper;)Z
    .registers 2
    .param p0, "looper"    # Landroid/os/BaseLooper;

    .line 303
    invoke-static {p0}, Landroid/os/AnrMonitor;->isAllowedMonitor(Landroid/os/BaseLooper;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAllowedMonitorBinderCallSize(I)Z
    .registers 2
    .param p0, "dataSize"    # I

    .line 298
    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-boolean v0, Landroid/os/AnrMonitor;->CHECK_PARCEL_SIZE_ENABLE:Z

    if-eqz v0, :cond_12

    sget v0, Landroid/os/AnrMonitor;->CHECK_PARCEL_SIZE_KB:I

    mul-int/lit16 v0, v0, 0x400

    if-lt p0, v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static blacklist isAllowedMonitorInput(Landroid/os/BaseLooper;)Z
    .registers 2
    .param p0, "looper"    # Landroid/os/BaseLooper;

    .line 307
    invoke-static {p0}, Landroid/os/AnrMonitor;->isAllowedMonitor(Landroid/os/BaseLooper;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isFileAvailable(Ljava/io/File;)Z
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 171
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    .line 174
    :cond_9
    const/4 v0, 0x1

    return v0

    .line 172
    :cond_b
    :goto_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isLongTimeMsg(Landroid/os/BaseLooper$MessageMonitorInfo;)Z
    .registers 5
    .param p0, "monitorInfo"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 311
    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getTookTime()J

    move-result-wide v0

    .line 312
    .local v0, "tookTime":J
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-lez v2, :cond_13

    const-wide/32 v2, 0x186a0

    cmp-long v2, v0, v2

    if-gez v2, :cond_13

    .line 313
    const/4 v2, 0x1

    return v2

    .line 315
    :cond_13
    const/4 v2, 0x0

    return v2
.end method

.method static declared-synchronized blacklist isSystemApp()Z
    .registers 8

    const-class v0, Landroid/os/AnrMonitor;

    monitor-enter v0

    .line 494
    :try_start_3
    sget-object v1, Landroid/os/AnrMonitor;->sIsSystemApp:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_55

    const/4 v2, 0x0

    if-nez v1, :cond_49

    .line 496
    :try_start_8
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 497
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_47

    .line 498
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 499
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 498
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 500
    .local v3, "info":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_47

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_47

    .line 501
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_2e

    move v4, v5

    goto :goto_2f

    :cond_2e
    move v4, v2

    .line 502
    .local v4, "isSystemApp":Z
    :goto_2f
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_39

    move v6, v5

    goto :goto_3a

    :cond_39
    move v6, v2

    .line 503
    .local v6, "isSystemUpdateApp":Z
    :goto_3a
    new-instance v7, Ljava/lang/Boolean;

    if-nez v4, :cond_42

    if-eqz v6, :cond_41

    goto :goto_42

    :cond_41
    move v5, v2

    :cond_42
    :goto_42
    invoke-direct {v7, v5}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v7, Landroid/os/AnrMonitor;->sIsSystemApp:Ljava/lang/Boolean;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_47} :catch_48
    .catchall {:try_start_8 .. :try_end_47} :catchall_55

    .line 508
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "isSystemApp":Z
    .end local v6    # "isSystemUpdateApp":Z
    :cond_47
    goto :goto_49

    .line 506
    :catch_48
    move-exception v1

    .line 510
    :cond_49
    :goto_49
    :try_start_49
    sget-object v1, Landroid/os/AnrMonitor;->sIsSystemApp:Ljava/lang/Boolean;

    if-nez v1, :cond_4e

    :goto_4d
    goto :goto_53

    :cond_4e
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_55

    goto :goto_4d

    :goto_53
    monitor-exit v0

    return v2

    .line 493
    :catchall_55
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static blacklist isSystemBootCompleted()Z
    .registers 2

    .line 731
    sget-boolean v0, Landroid/os/AnrMonitor;->sSystemBootCompleted:Z

    if-nez v0, :cond_12

    .line 732
    const-string v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/AnrMonitor;->sSystemBootCompleted:Z

    .line 734
    :cond_12
    sget-boolean v0, Landroid/os/AnrMonitor;->sSystemBootCompleted:Z

    return v0
.end method

.method static declared-synchronized blacklist isSystemServer()Z
    .registers 3

    const-class v0, Landroid/os/AnrMonitor;

    monitor-enter v0

    .line 490
    :try_start_3
    const-string v1, "system_server"

    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return v1

    .line 490
    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static blacklist logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 738
    const-string v0, "MIUI-BLOCK-MONITOR"

    if-eqz p1, :cond_8

    .line 739
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 741
    :cond_8
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :goto_b
    return-void
.end method

.method public static blacklist logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 753
    const-string v0, "DUMP_APP_TRACE"

    if-eqz p1, :cond_8

    .line 754
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 756
    :cond_8
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :goto_b
    return-void
.end method

.method public static blacklist logPerfEvent(Ljava/lang/String;Landroid/os/statistics/PerfEvent;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "event"    # Landroid/os/statistics/PerfEvent;

    .line 746
    const-string v0, "MIUI-BLOCK-MONITOR"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    if-eqz p1, :cond_12

    .line 748
    invoke-virtual {p1}, Landroid/os/statistics/PerfEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_12
    return-void
.end method

.method public static blacklist readFile(Ljava/io/File;)Ljava/lang/String;
    .registers 7
    .param p0, "file"    # Ljava/io/File;

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "fileReader":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 190
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 191
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v2, "strBuffer":Ljava/lang/StringBuilder;
    :goto_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_31

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Landroid/os/AnrMonitor;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 199
    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_45
    .catchall {:try_start_2 .. :try_end_35} :catchall_43

    .line 205
    nop

    .line 206
    :try_start_36
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 208
    nop

    .line 209
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3d} :catch_3e

    .line 213
    goto :goto_42

    .line 211
    :catch_3e
    move-exception v5

    .line 212
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_42
    return-object v3

    .line 204
    .end local v2    # "strBuffer":Ljava/lang/StringBuilder;
    .end local v4    # "line":Ljava/lang/String;
    :catchall_43
    move-exception v2

    goto :goto_5e

    .line 200
    :catch_45
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/Exception;
    :try_start_46
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_43

    .line 202
    const/4 v3, 0x0

    .line 205
    if-eqz v1, :cond_52

    .line 206
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_52

    .line 211
    :catch_50
    move-exception v4

    goto :goto_58

    .line 208
    :cond_52
    :goto_52
    if-eqz v0, :cond_5c

    .line 209
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_57} :catch_50

    goto :goto_5c

    .line 212
    .local v4, "e":Ljava/lang/Exception;
    :goto_58
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5d

    .line 213
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5c
    :goto_5c
    nop

    .line 202
    :goto_5d
    return-object v3

    .line 205
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5e
    if-eqz v1, :cond_66

    .line 206
    :try_start_60
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_66

    .line 211
    :catch_64
    move-exception v3

    goto :goto_6c

    .line 208
    :cond_66
    :goto_66
    if-eqz v0, :cond_70

    .line 209
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6b} :catch_64

    goto :goto_70

    .line 212
    .local v3, "e":Ljava/lang/Exception;
    :goto_6c
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_71

    .line 213
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_70
    :goto_70
    nop

    .line 214
    :goto_71
    throw v2
.end method

.method public static blacklist readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V
    .registers 6
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/os/AnrMonitor;->isFileAvailable(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3a

    if-eqz p1, :cond_3a

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/AnrMonitor;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "------ cat "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ------"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 182
    invoke-static {v0}, Landroid/os/AnrMonitor;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 184
    :cond_3a
    return-void
.end method

.method public static blacklist renameTraces(Ljava/lang/String;)V
    .registers 9
    .param p0, "processName"    # Ljava/lang/String;

    .line 984
    const-string v0, "dalvik.vm.stack-trace-file"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 986
    .local v0, "tracesPath":Ljava/lang/String;
    if-eqz v0, :cond_84

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_84

    .line 987
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 988
    .local v1, "traceRenameFile":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/anr/traces_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 989
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/AnrMonitor;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 991
    .local v2, "newTracesPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 994
    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 995
    .local v3, "tracesDirStr":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 997
    .local v4, "tracesDir":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "traces_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Landroid/os/AnrMonitor;->deleteUnnecessaryFileIfNeeded(Ljava/io/File;Ljava/lang/String;I)V

    .line 998
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "anr_info_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/os/AnrMonitor;->deleteUnnecessaryFileIfNeeded(Ljava/io/File;Ljava/lang/String;I)V

    .line 1000
    .end local v1    # "traceRenameFile":Ljava/io/File;
    .end local v2    # "newTracesPath":Ljava/lang/String;
    .end local v3    # "tracesDirStr":Ljava/lang/String;
    .end local v4    # "tracesDir":Ljava/io/File;
    :cond_84
    return-void
.end method

.method public static blacklist screenHangMonitor(IZJ)V
    .registers 8
    .param p0, "keyCode"    # I
    .param p1, "down"    # Z
    .param p2, "pressTime"    # J

    .line 1042
    packed-switch p0, :pswitch_data_20

    goto :goto_1e

    .line 1045
    :pswitch_4
    if-eqz p1, :cond_14

    .line 1046
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/os/AnrMonitor;->mScreenHangRunnable:Ljava/lang/Runnable;

    sget v2, Landroid/os/AnrMonitor;->SCREEN_HANG_TIMEOUT:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1e

    .line 1048
    :cond_14
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/os/AnrMonitor;->mScreenHangRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1050
    nop

    .line 1054
    :goto_1e
    return-void

    nop

    :pswitch_data_20
    .packed-switch 0x1a
        :pswitch_4
    .end packed-switch
.end method

.method static blacklist startMonitor(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .registers 8
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "monitorInfo"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 566
    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorMessage()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 567
    :cond_7
    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getMonitorMessage()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "info":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 569
    :cond_12
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 570
    .local v1, "monitorMsg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 571
    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->createMonitorDigest()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 572
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 573
    .local v2, "b":Landroid/os/Bundle;
    const-string v3, "monitor_msg"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 576
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 577
    return-void
.end method

.method public static declared-synchronized blacklist toCalendarTime(J)Ljava/lang/String;
    .registers 5
    .param p0, "time"    # J

    const-class v0, Landroid/os/AnrMonitor;

    monitor-enter v0

    .line 140
    :try_start_3
    sget-object v1, Landroid/os/AnrMonitor;->DATE:Ljava/util/Date;

    invoke-virtual {v1, p0, p1}, Ljava/util/Date;->setTime(J)V

    .line 141
    sget-object v2, Landroid/os/AnrMonitor;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v0

    return-object v1

    .line 139
    .end local p0    # "time":J
    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method
