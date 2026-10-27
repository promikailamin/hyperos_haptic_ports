.class public Landroid/os/statistics/PerfEventFactory;
.super Ljava/lang/Object;
.source "PerfEventFactory.java"


# static fields
.field private static final blacklist MACRO_EVENT_TYPE_INDEX_OFFSET:I = -0xfff0


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createPerfEvent(I)Landroid/os/statistics/PerfEvent;
    .registers 4
    .param p0, "eventType"    # I

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "perfEvent":Landroid/os/statistics/PerfEvent;
    const/high16 v1, 0x10000

    if-ge p0, v1, :cond_7

    .line 48
    move v1, p0

    goto :goto_b

    :cond_7
    const v1, -0xfff0

    add-int/2addr v1, p0

    .line 49
    .local v1, "eventTypeIndex":I
    :goto_b
    packed-switch v1, :pswitch_data_98

    :pswitch_e
    goto/16 :goto_96

    .line 112
    :pswitch_10
    const/4 v0, 0x0

    .line 113
    goto/16 :goto_96

    .line 109
    :pswitch_13
    new-instance v2, Landroid/os/statistics/E2EScenarioOnce;

    invoke-direct {v2}, Landroid/os/statistics/E2EScenarioOnce;-><init>()V

    move-object v0, v2

    .line 110
    goto/16 :goto_96

    .line 106
    :pswitch_1b
    new-instance v2, Landroid/os/statistics/BinderSuperviser$BinderStarvation;

    invoke-direct {v2}, Landroid/os/statistics/BinderSuperviser$BinderStarvation;-><init>()V

    move-object v0, v2

    .line 107
    goto/16 :goto_96

    .line 103
    :pswitch_23
    new-instance v2, Landroid/os/statistics/SingleJankRecord;

    invoke-direct {v2}, Landroid/os/statistics/SingleJankRecord;-><init>()V

    move-object v0, v2

    .line 104
    goto/16 :goto_96

    .line 100
    :pswitch_2b
    new-instance v2, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;

    invoke-direct {v2}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;-><init>()V

    move-object v0, v2

    .line 101
    goto/16 :goto_96

    .line 96
    :pswitch_33
    new-instance v2, Landroid/os/statistics/MemorySuperviser$Slowpath;

    invoke-direct {v2}, Landroid/os/statistics/MemorySuperviser$Slowpath;-><init>()V

    move-object v0, v2

    .line 97
    goto/16 :goto_96

    .line 93
    :pswitch_3b
    new-instance v2, Landroid/os/statistics/SchedSuperviser$SchedWake;

    invoke-direct {v2}, Landroid/os/statistics/SchedSuperviser$SchedWake;-><init>()V

    move-object v0, v2

    .line 94
    goto/16 :goto_96

    .line 90
    :pswitch_43
    new-instance v2, Landroid/os/statistics/SchedSuperviser$SchedWait;

    invoke-direct {v2}, Landroid/os/statistics/SchedSuperviser$SchedWait;-><init>()V

    move-object v0, v2

    .line 91
    goto :goto_96

    .line 87
    :pswitch_4a
    new-instance v2, Landroid/os/statistics/LooperCheckPoint;

    invoke-direct {v2}, Landroid/os/statistics/LooperCheckPoint;-><init>()V

    move-object v0, v2

    .line 88
    goto :goto_96

    .line 84
    :pswitch_51
    new-instance v2, Landroid/os/statistics/LooperOnce;

    invoke-direct {v2}, Landroid/os/statistics/LooperOnce;-><init>()V

    move-object v0, v2

    .line 85
    goto :goto_96

    .line 81
    :pswitch_58
    new-instance v2, Landroid/os/statistics/SingleJniMethod;

    invoke-direct {v2}, Landroid/os/statistics/SingleJniMethod;-><init>()V

    move-object v0, v2

    .line 82
    goto :goto_96

    .line 78
    :pswitch_5f
    const/4 v0, 0x0

    .line 79
    goto :goto_96

    .line 75
    :pswitch_61
    new-instance v2, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;

    invoke-direct {v2}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;-><init>()V

    move-object v0, v2

    .line 76
    goto :goto_96

    .line 72
    :pswitch_68
    const/4 v0, 0x0

    .line 73
    goto :goto_96

    .line 69
    :pswitch_6a
    const/4 v0, 0x0

    .line 70
    goto :goto_96

    .line 66
    :pswitch_6c
    new-instance v2, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;

    invoke-direct {v2}, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;-><init>()V

    move-object v0, v2

    .line 67
    goto :goto_96

    .line 63
    :pswitch_73
    new-instance v2, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;

    invoke-direct {v2}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;-><init>()V

    move-object v0, v2

    .line 64
    goto :goto_96

    .line 60
    :pswitch_7a
    new-instance v2, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    invoke-direct {v2}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;-><init>()V

    move-object v0, v2

    .line 61
    goto :goto_96

    .line 57
    :pswitch_81
    new-instance v2, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;

    invoke-direct {v2}, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;-><init>()V

    move-object v0, v2

    .line 58
    goto :goto_96

    .line 54
    :pswitch_88
    new-instance v2, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;

    invoke-direct {v2}, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;-><init>()V

    move-object v0, v2

    .line 55
    goto :goto_96

    .line 51
    :pswitch_8f
    new-instance v2, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    invoke-direct {v2}, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;-><init>()V

    move-object v0, v2

    .line 52
    nop

    .line 117
    :goto_96
    return-object v0

    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_8f
        :pswitch_88
        :pswitch_81
        :pswitch_7a
        :pswitch_73
        :pswitch_6c
        :pswitch_6a
        :pswitch_68
        :pswitch_61
        :pswitch_5f
        :pswitch_58
        :pswitch_51
        :pswitch_4a
        :pswitch_43
        :pswitch_3b
        :pswitch_33
        :pswitch_2b
        :pswitch_e
        :pswitch_23
        :pswitch_e
        :pswitch_1b
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public static blacklist createPerfEvent(IIJJJJJ)Landroid/os/statistics/PerfEvent;
    .registers 13
    .param p0, "eventType"    # I
    .param p1, "eventFlags"    # I
    .param p2, "beginUptimeMillis"    # J
    .param p4, "endUptimeMillis"    # J
    .param p6, "inclusionId"    # J
    .param p8, "synchronizationId"    # J
    .param p10, "eventSeq"    # J

    .line 33
    invoke-static {p0}, Landroid/os/statistics/PerfEventFactory;->createPerfEvent(I)Landroid/os/statistics/PerfEvent;

    move-result-object v0

    .line 34
    .local v0, "perfEvent":Landroid/os/statistics/PerfEvent;
    if-eqz v0, :cond_12

    .line 35
    iput p1, v0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    .line 36
    iput-wide p2, v0, Landroid/os/statistics/PerfEvent;->beginUptimeMillis:J

    .line 37
    iput-wide p4, v0, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    .line 38
    iput-wide p6, v0, Landroid/os/statistics/PerfEvent;->inclusionId:J

    .line 39
    iput-wide p8, v0, Landroid/os/statistics/PerfEvent;->synchronizationId:J

    .line 40
    iput-wide p10, v0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    .line 42
    :cond_12
    return-object v0
.end method

.method public static blacklist createPerfEvent(IIJJJJJLandroid/os/statistics/JniParcel;[Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)Landroid/os/statistics/PerfEvent;
    .registers 33
    .param p0, "eventType"    # I
    .param p1, "eventFlags"    # I
    .param p2, "beginUptimeMillis"    # J
    .param p4, "endUptimeMillis"    # J
    .param p6, "inclusionId"    # J
    .param p8, "synchronizationId"    # J
    .param p10, "eventSeq"    # J
    .param p12, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p13, "javaStackTraceClasses"    # [Ljava/lang/Class;
    .param p14, "javaStackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p15, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .line 23
    invoke-static/range {p0 .. p0}, Landroid/os/statistics/PerfEventFactory;->createPerfEvent(I)Landroid/os/statistics/PerfEvent;

    move-result-object v16

    .line 24
    .local v16, "perfEvent":Landroid/os/statistics/PerfEvent;
    if-eqz v16, :cond_1f

    .line 25
    move-object/from16 v0, v16

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    invoke-virtual/range {v0 .. v15}, Landroid/os/statistics/PerfEvent;->fillIn(IJJJJJLandroid/os/statistics/JniParcel;[Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V

    .line 28
    :cond_1f
    return-object v16
.end method
