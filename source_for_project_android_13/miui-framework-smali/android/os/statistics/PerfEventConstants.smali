.class public Landroid/os/statistics/PerfEventConstants;
.super Ljava/lang/Object;
.source "PerfEventConstants.java"


# static fields
.field private static final blacklist EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EVENT_TYPE_MAPPING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FIELD_BEGIN_TIME:Ljava/lang/String; = "beginTime"

.field public static final blacklist FIELD_END_REAL_TIME:Ljava/lang/String; = "endRealTime"

.field public static final blacklist FIELD_END_TIME:Ljava/lang/String; = "endTime"

.field public static final blacklist FIELD_EVENT_FLAGS:Ljava/lang/String; = "eventFlags"

.field public static final blacklist FIELD_EVENT_SEQ:Ljava/lang/String; = "seq"

.field public static final blacklist FIELD_EVENT_TYPE:Ljava/lang/String; = "eventType"

.field public static final blacklist FIELD_EVENT_TYPE_NAME:Ljava/lang/String; = "eventTypeName"

.field public static final blacklist FIELD_OCCUR_TIME:Ljava/lang/String; = "occurTime"

.field public static final blacklist FIELD_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final blacklist FIELD_PID:Ljava/lang/String; = "pid"

.field public static final blacklist FIELD_PROCESS_NAME:Ljava/lang/String; = "processName"

.field public static final blacklist FIELD_RUNNABLE_TIME:Ljava/lang/String; = "runnableTime"

.field public static final blacklist FIELD_RUNNING_TIME:Ljava/lang/String; = "runningTime"

.field public static final blacklist FIELD_SCHED_POLICY:Ljava/lang/String; = "policy"

.field public static final blacklist FIELD_SCHED_PRIORITY:Ljava/lang/String; = "priority"

.field public static final blacklist FIELD_SLEEPING_TIME:Ljava/lang/String; = "sleepingTime"

.field public static final blacklist FIELD_THREAD_ID:Ljava/lang/String; = "threadId"

.field public static final blacklist FIELD_THREAD_NAME:Ljava/lang/String; = "threadName"

.field public static final blacklist FLAG_BLOCKED:I = 0x100

.field public static final blacklist FLAG_BLOCKED_BY_CROSS_PROCESS:I = 0x400

.field public static final blacklist FLAG_BLOCKED_BY_MULTIBPLE_BLOCKER:I = 0x4000

.field public static final blacklist FLAG_BLOCKED_BY_ONE_COINCIDED_BLOCKER:I = 0x1000

.field public static final blacklist FLAG_BLOCKED_BY_ONE_INCLUSIVE_BLOCKER:I = 0x800

.field public static final blacklist FLAG_BLOCKED_BY_ONE_OVERLAPPED_BLOCKER:I = 0x2000

.field public static final blacklist FLAG_BLOCKED_BY_SAME_PROCESS:I = 0x200

.field public static final blacklist FLAG_BLOCKER:I = 0x10000

.field public static final blacklist FLAG_BLOCKER_TO_CROSS_PROCESS:I = 0x40000

.field public static final blacklist FLAG_BLOCKER_TO_SAME_PROCESS:I = 0x20000

.field public static final blacklist FLAG_DETAILS_SOURCE_MASK:I = 0xf000000

.field public static final blacklist FLAG_HAS_KERNEL_LAZYINFO:I = 0x40

.field public static final blacklist FLAG_HAS_PROC_LAZYINFO:I = 0x10

.field public static final blacklist FLAG_INITIATOR_POSITION_MASK:I = 0x6

.field public static final blacklist FLAG_INITIATOR_POSITION_MASTER:I = 0x4

.field public static final blacklist FLAG_INITIATOR_POSITION_SLAVE:I = 0x2

.field public static final blacklist FLAG_INITIATOR_POSITION_UNKNOWN:I = 0x0

.field public static final blacklist FLAG_KERNEL_LAZYINFO_RESOLVED:I = 0x80

.field public static final blacklist FLAG_NO_CHECK:I = 0x10000000

.field public static final blacklist FLAG_PROC_LAZYINFO_RESOLVED:I = 0x20

.field public static final blacklist FLAG_ROOT_EVENT:I = 0x1

.field public static final blacklist FLAG_USER_PERCEPTIBLE:I = 0x100000

.field public static final blacklist MACRO_EVENT_TYPE_COUNT:I = 0x7

.field public static final blacklist MACRO_EVENT_TYPE_START:I = 0x10000

.field public static final blacklist MAX_PERF_EVENT_PARCEL_SIZE:I = 0x1000

.field public static final blacklist MICRO_EVENT_TYPE_COUNT:I = 0x10

.field public static final blacklist MICRO_EVENT_TYPE_START:I = 0x0

.field public static final blacklist TYPE_BINDER_STARVATION:I = 0x10004

.field public static final blacklist TYPE_E2ESCENARIO_ONCE:I = 0x10005

.field public static final blacklist TYPE_LOOPER_CHECKPOINT:I = 0xc

.field public static final blacklist TYPE_LOOPER_ONCE:I = 0xb

.field public static final blacklist TYPE_MEMORY_SLOWPATH:I = 0x10006

.field public static final blacklist TYPE_MM_SLOWPATH:I = 0xf

.field public static final blacklist TYPE_PLACE_HOLDER_1:I = 0x10001

.field public static final blacklist TYPE_PLACE_HOLDER_2:I = 0x10003

.field public static final blacklist TYPE_SCHED_WAIT:I = 0xd

.field public static final blacklist TYPE_SCHED_WAKE:I = 0xe

.field public static final blacklist TYPE_SINGLE_BINDER_CALL:I = 0x4

.field public static final blacklist TYPE_SINGLE_BINDER_EXECUTION:I = 0x5

.field public static final blacklist TYPE_SINGLE_CONDITION_AWAKEN:I = 0x2

.field public static final blacklist TYPE_SINGLE_CONDITION_WAIT:I = 0x3

.field public static final blacklist TYPE_SINGLE_EVENT_LOG_ITEM:I = 0x10000

.field public static final blacklist TYPE_SINGLE_INPUT_EVENT:I = 0x9

.field public static final blacklist TYPE_SINGLE_JANK_RECORD:I = 0x10002

.field public static final blacklist TYPE_SINGLE_JNI_METHOD:I = 0xa

.field public static final blacklist TYPE_SINGLE_LOCK_HOLD:I = 0x0

.field public static final blacklist TYPE_SINGLE_LOCK_WAIT:I = 0x1

.field public static final blacklist TYPE_SINGLE_LOOPER_MESSAGE:I = 0x8

.field public static final blacklist TYPE_SINGLE_SYSTEM_TRACE_EVENT:I = 0x7

.field public static final blacklist TYPE_SINGLE_TRACE_POINT:I = 0x6


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    .line 98
    const/4 v2, 0x0

    const-string v3, "LockHold"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    const/4 v4, 0x1

    const-string v5, "LockWait"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    const/4 v6, 0x2

    const-string v7, "ConditionAwaken"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    const/4 v8, 0x3

    const-string v9, "ConditionWait"

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    const/4 v10, 0x4

    const-string v11, "BinderCall"

    invoke-virtual {v0, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    const/4 v12, 0x5

    const-string v13, "BinderExecution"

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    const/4 v14, 0x6

    const-string v15, "TracePoint"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    const/4 v14, 0x7

    const-string v12, "SystemTraceEvent"

    invoke-virtual {v0, v14, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    const/16 v14, 0x8

    const-string v10, "LooperMessage"

    invoke-virtual {v0, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    const/16 v14, 0x9

    const-string v8, "InputEvent"

    invoke-virtual {v0, v14, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    const/16 v14, 0xa

    const-string v6, "JniMethod"

    invoke-virtual {v0, v14, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    const/16 v14, 0xb

    const-string v4, "LooperOnce"

    invoke-virtual {v0, v14, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    const/16 v4, 0xc

    const-string v14, "LooperCheckPoint"

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    const/16 v4, 0xd

    const-string v14, "SchedWait"

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    const/16 v4, 0xe

    const-string v14, "SchedWake"

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    const/16 v4, 0xf

    const-string v14, "MMSlowpath"

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    const/high16 v4, 0x10000

    const-string v14, "EventLog"

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    const v4, 0x10002

    const-string v14, "JankRecord"

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    const v4, 0x10004

    const-string v14, "BinderStarvation"

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    const v4, 0x10005

    const-string v14, "E2EScenarioOnce"

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    const v4, 0x10006

    const-string v14, "MemorySlowpath"

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "LooperOnce"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "LooperCheckPoint"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "SchedWait"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "SchedWake"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "MMSlowpath"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "EventLog"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const v0, 0x10002

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "JankRecord"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const v0, 0x10004

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "BinderStarvation"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const v0, 0x10005

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "E2EScenarioOnce"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const v0, 0x10006

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "MemorySlowpath"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getTypeCode(Ljava/lang/String;)I
    .registers 3
    .param p0, "typeName"    # Ljava/lang/String;

    .line 149
    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 150
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 152
    :cond_13
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getTypeName(I)Ljava/lang/String;
    .registers 3
    .param p0, "eventType"    # I

    .line 145
    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string v1, "UnKnown"

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist isBlockedBy(II)Z
    .registers 5
    .param p0, "blockedEventType"    # I
    .param p1, "blockerEventType"    # I

    .line 156
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_1e

    .line 166
    return v1

    .line 164
    :sswitch_6
    const/16 v2, 0xe

    if-ne p1, v2, :cond_b

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    return v0

    .line 162
    :sswitch_d
    const/4 v2, 0x5

    if-ne p1, v2, :cond_11

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    return v0

    .line 160
    :sswitch_13
    const/4 v2, 0x2

    if-ne p1, v2, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    return v0

    .line 158
    :sswitch_19
    if-nez p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_19
        0x3 -> :sswitch_13
        0x4 -> :sswitch_d
        0xd -> :sswitch_6
    .end sparse-switch
.end method
