.class public Landroid/os/perfdebug/BinderMonitorImpl;
.super Landroid/os/perfdebug/BinderMonitor;
.source "BinderMonitorImpl.java"


# static fields
.field private static final blacklist BINDER_PID_INDEX:I = 0x0

.field public static final blacklist DELAY_INFO_NUMS:I = 0xb

.field public static final blacklist DELAY_PROCESS_INFO_NUMS:I = 0x1

.field private static final blacklist PROCESS_NAME_INDEX:I = 0x0

.field public static final blacklist TAG:Ljava/lang/String; = "BinderMonitorImpl"


# instance fields
.field private blacklist mBinderMonitored:Z

.field private blacklist mDispatchTime:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/os/perfdebug/BinderMonitor;-><init>()V

    return-void
.end method

.method private blacklist enableMonitor()Z
    .registers 4

    .line 95
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1c

    .line 96
    sget v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_VERSION:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    sget-boolean v0, Landroid/os/perfdebug/MessageMonitorImpl;->mEnableMonitorMessage:Z

    if-eqz v0, :cond_19

    sget-boolean v0, Landroid/view/ChoreographerInjectorStubImpl;->sHasSurface:Z

    if-eqz v0, :cond_19

    const/4 v2, 0x1

    :cond_19
    iput-boolean v2, p0, Landroid/os/perfdebug/BinderMonitorImpl;->mBinderMonitored:Z

    .line 99
    return v2

    .line 101
    :cond_1c
    return v2
.end method

.method private blacklist invalidMonitor(II)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "flags"    # I

    .line 39
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 40
    .local v0, "oneWay":Z
    :goto_9
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_10

    move v3, v2

    goto :goto_11

    :cond_10
    move v3, v1

    .line 41
    .local v3, "queryingInterfaceDesc":Z
    :goto_11
    if-nez v0, :cond_15

    if-eqz v3, :cond_16

    :cond_15
    move v1, v2

    :cond_16
    return v1
.end method

.method public static native blacklist nGetBinderDelay([J[Ljava/lang/String;)V
.end method


# virtual methods
.method public blacklist monitorBinderBegin(II)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "flags"    # I

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/os/perfdebug/BinderMonitorImpl;->invalidMonitor(II)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Landroid/os/perfdebug/BinderMonitorImpl;->enableMonitor()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_14

    .line 48
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/BinderMonitorImpl;->mDispatchTime:J

    .line 49
    return-void

    .line 46
    :cond_14
    :goto_14
    return-void
.end method

.method public blacklist monitorBinderEnd(Landroid/os/BinderProxy;II)V
    .registers 22
    .param p1, "binderProxy"    # Landroid/os/BinderProxy;
    .param p2, "code"    # I
    .param p3, "flags"    # I

    .line 52
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v1, v2, v3}, Landroid/os/perfdebug/BinderMonitorImpl;->invalidMonitor(II)Z

    move-result v0

    if-nez v0, :cond_b8

    invoke-direct/range {p0 .. p0}, Landroid/os/perfdebug/BinderMonitorImpl;->enableMonitor()Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_b8

    .line 55
    :cond_14
    const-wide/16 v4, 0x0

    .line 56
    .local v4, "duration":J
    iget-wide v6, v1, Landroid/os/perfdebug/BinderMonitorImpl;->mDispatchTime:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_26

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v10, v1, Landroid/os/perfdebug/BinderMonitorImpl;->mDispatchTime:J

    sub-long v4, v6, v10

    .line 59
    :cond_26
    const-wide/16 v6, 0x14

    cmp-long v0, v4, v6

    if-lez v0, :cond_b7

    .line 60
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->get()Landroid/os/perfdebug/PerfDebugMonitor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceBinder()Z

    move-result v0

    const-wide/16 v6, 0x8

    if-eqz v0, :cond_3d

    .line 61
    const-string v0, "binder:monitorBinderEnd"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 63
    :cond_3d
    const/16 v10, 0xb

    new-array v11, v10, [J

    .line 64
    .local v11, "delays":[J
    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/String;

    .line 65
    .local v12, "delayProcessInfo":[Ljava/lang/String;
    invoke-static {v11, v12}, Landroid/os/perfdebug/BinderMonitorImpl;->nGetBinderDelay([J[Ljava/lang/String;)V

    .line 67
    const-string v13, ""

    .line 69
    .local v13, "binderInterface":Ljava/lang/String;
    :try_start_49
    invoke-virtual/range {p1 .. p1}, Landroid/os/BinderProxy;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4d} :catch_4f

    move-object v13, v0

    .line 72
    goto :goto_59

    .line 70
    :catch_4f
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    const-string v14, "BinderMonitorImpl"

    const-string v15, "error get binder interface"

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/16 v14, 0x3f5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-wide v6, v1, Landroid/os/perfdebug/BinderMonitorImpl;->mDispatchTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const/4 v6, 0x0

    aget-wide v16, v11, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    aget-object v6, v12, v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-boolean v6, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_BINDER_DETAIL:Z

    if-eqz v6, :cond_a3

    .line 82
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_95
    if-ge v6, v10, :cond_a3

    .line 83
    aget-wide v16, v11, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v6, v6, 0x1

    goto :goto_95

    .line 86
    .end local v6    # "i":I
    :cond_a3
    invoke-static {v14, v0}, Landroid/os/perfdebug/PerfJsonEventUtils;->writeEvent(ILjava/util/List;)V

    .line 87
    iput-wide v8, v1, Landroid/os/perfdebug/BinderMonitorImpl;->mDispatchTime:J

    .line 88
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->get()Landroid/os/perfdebug/PerfDebugMonitor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceBinder()Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 89
    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 92
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v11    # "delays":[J
    .end local v12    # "delayProcessInfo":[Ljava/lang/String;
    .end local v13    # "binderInterface":Ljava/lang/String;
    :cond_b7
    return-void

    .line 53
    .end local v4    # "duration":J
    :cond_b8
    :goto_b8
    return-void
.end method
