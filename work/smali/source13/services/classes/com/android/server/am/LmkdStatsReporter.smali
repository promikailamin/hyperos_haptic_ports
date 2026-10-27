.class public final Lcom/android/server/am/LmkdStatsReporter;
.super Ljava/lang/Object;
.source "LmkdStatsReporter.java"


# static fields
.field private static final DIRECT_RECL_AND_THRASHING:I = 0x5

.field public static final KILL_OCCURRED_MSG_SIZE:I = 0x50

.field private static final LOW_FILECACHE_AFTER_THRASHING:I = 0x7

.field private static final LOW_MEM_AND_SWAP:I = 0x3

.field private static final LOW_MEM_AND_SWAP_UTIL:I = 0x6

.field private static final LOW_MEM_AND_THRASHING:I = 0x4

.field private static final LOW_SWAP_AND_THRASHING:I = 0x2

.field private static final NOT_RESPONDING:I = 0x1

.field private static final PRESSURE_AFTER_KILL:I = 0x0

.field public static final STATE_CHANGED_MSG_SIZE:I = 0x8

.field static final TAG:Ljava/lang/String; = "ActivityManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logKillOccurred(Ljava/io/DataInputStream;)V
    .registers 36
    .param p0, "inputData"    # Ljava/io/DataInputStream;

    .line 55
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    .line 56
    .local v5, "pgFault":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    .line 57
    .local v7, "pgMajFault":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    .line 58
    .local v9, "rssInBytes":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    .line 59
    .local v11, "cacheInBytes":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v13

    .line 60
    .local v13, "swapInBytes":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v15

    .line 61
    .local v15, "processStartTimeNS":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 62
    .local v2, "uid":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 63
    .local v0, "oomScore":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    .line 64
    .local v17, "minOomScore":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 65
    .local v18, "freeMemKb":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    .line 66
    .local v19, "freeSwapKb":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v28

    .line 67
    .local v28, "killReason":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    .line 68
    .local v21, "thrashing":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    .line 69
    .local v22, "maxThrashing":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "procName":Ljava/lang/String;
    const/16 v1, 0x33

    .line 73
    invoke-static/range {v28 .. v28}, Lcom/android/server/am/LmkdStatsReporter;->mapKillReason(I)I

    move-result v20

    .line 71
    move v4, v0

    invoke-static/range {v1 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJJJJJJIIIIII)V

    .line 76
    invoke-static {}, Lcom/android/server/am/AppProfilerStub;->getInstance()Lcom/android/server/am/AppProfilerStub;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/am/AppProfilerStub;->reportScoutLowMemory(I)V

    .line 77
    invoke-static {}, Lcom/android/server/am/ProcessListStub;->get()Lcom/android/server/am/ProcessListStub;

    move-result-object v23

    move/from16 v24, v2

    move/from16 v25, v0

    move/from16 v26, v18

    move/from16 v27, v19

    move/from16 v29, v21

    move-object/from16 v30, v3

    invoke-interface/range {v23 .. v30}, Lcom/android/server/am/ProcessListStub;->notifyLmkProcessKill(IIIIIILjava/lang/String;)V

    .line 79
    const/16 v1, 0x2bd

    if-ge v0, v1, :cond_75

    .line 80
    invoke-static {}, Lcom/android/server/am/ProcessListStub;->get()Lcom/android/server/am/ProcessListStub;

    move-result-object v29

    move/from16 v30, v2

    move-object/from16 v31, v3

    move/from16 v32, v17

    move/from16 v33, v0

    move/from16 v34, v28

    invoke-interface/range {v29 .. v34}, Lcom/android/server/am/ProcessListStub;->writePerfEvent(ILjava/lang/String;III)V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_75} :catch_77

    .line 87
    .end local v0    # "oomScore":I
    .end local v2    # "uid":I
    .end local v3    # "procName":Ljava/lang/String;
    .end local v5    # "pgFault":J
    .end local v7    # "pgMajFault":J
    .end local v9    # "rssInBytes":J
    .end local v11    # "cacheInBytes":J
    .end local v13    # "swapInBytes":J
    .end local v15    # "processStartTimeNS":J
    .end local v17    # "minOomScore":I
    .end local v18    # "freeMemKb":I
    .end local v19    # "freeSwapKb":I
    .end local v21    # "thrashing":I
    .end local v22    # "maxThrashing":I
    .end local v28    # "killReason":I
    :cond_75
    nop

    .line 88
    return-void

    .line 84
    :catch_77
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ActivityManager"

    const-string v2, "Invalid buffer data. Failed to log LMK_KILL_OCCURRED"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public static logStateChanged(I)V
    .registers 2
    .param p0, "state"    # I

    .line 97
    const/16 v0, 0x36

    invoke-static {v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 100
    invoke-static {}, Lcom/android/server/am/AppProfilerStub;->getInstance()Lcom/android/server/am/AppProfilerStub;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/am/AppProfilerStub;->reportScoutLowMemoryState(I)V

    .line 102
    return-void
.end method

.method private static mapKillReason(I)I
    .registers 2
    .param p0, "reason"    # I

    .line 105
    packed-switch p0, :pswitch_data_16

    .line 123
    const/4 v0, 0x0

    return v0

    .line 121
    :pswitch_5
    const/16 v0, 0x8

    return v0

    .line 119
    :pswitch_8
    const/4 v0, 0x7

    return v0

    .line 117
    :pswitch_a
    const/4 v0, 0x6

    return v0

    .line 115
    :pswitch_c
    const/4 v0, 0x5

    return v0

    .line 113
    :pswitch_e
    const/4 v0, 0x4

    return v0

    .line 111
    :pswitch_10
    const/4 v0, 0x3

    return v0

    .line 109
    :pswitch_12
    const/4 v0, 0x2

    return v0

    .line 107
    :pswitch_14
    const/4 v0, 0x1

    return v0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method
