.class public final Landroid/os/Looper;
.super Ljava/lang/Object;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Looper$Observer;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Looper"

.field private static greylist sMainLooper:Landroid/os/Looper;

.field private static blacklist sObserver:Landroid/os/Looper$Observer;

.field static final greylist sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mInLoop:Z

.field private greylist mLogging:Landroid/util/Printer;

.field private final blacklist mMonitor:Landroid/os/perfdebug/MessageMonitor;

.field final greylist mQueue:Landroid/os/MessageQueue;

.field private blacklist mSlowDeliveryDetected:Z

.field private greylist-max-o mSlowDeliveryThresholdMs:J

.field private greylist-max-o mSlowDispatchThresholdMs:J

.field final greylist-max-o mThread:Ljava/lang/Thread;

.field private greylist-max-o mTraceTag:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor greylist-max-o <init>(Z)V
    .registers 5
    .param p1, "quitAllowed"    # Z

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Landroid/os/MessageQueue;

    invoke-direct {v0, p1}, Landroid/os/MessageQueue;-><init>(Z)V

    iput-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 338
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    .line 340
    invoke-static {}, Landroid/os/perfdebug/MessageMonitor;->newMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/os/Looper;->mMonitor:Landroid/os/perfdebug/MessageMonitor;

    .line 341
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/perfdebug/MessageMonitor;->setThreadNameAndTid(Ljava/lang/String;I)V

    .line 343
    return-void
.end method

.method public static whitelist getMainLooper()Landroid/os/Looper;
    .registers 2

    .line 149
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    .line 150
    :try_start_3
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    monitor-exit v0

    return-object v1

    .line 151
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static whitelist loop()V
    .registers 5

    .line 273
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 274
    .local v0, "me":Landroid/os/Looper;
    if-eqz v0, :cond_59

    .line 277
    iget-boolean v1, v0, Landroid/os/Looper;->mInLoop:Z

    if-eqz v1, :cond_11

    .line 278
    const-string v1, "Looper"

    const-string v2, "Loop again would have the queued messages be executed before this one completed."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/Looper;->mInLoop:Z

    .line 286
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 287
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 291
    .local v1, "ident":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "log.looper."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 293
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 294
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".slow"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 297
    .local v3, "thresholdOverride":I
    iput-boolean v4, v0, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    .line 300
    :cond_52
    invoke-static {v0, v1, v2, v3}, Landroid/os/Looper;->loopOnce(Landroid/os/Looper;JI)Z

    move-result v4

    if-nez v4, :cond_52

    .line 301
    return-void

    .line 275
    .end local v1    # "ident":J
    .end local v3    # "thresholdOverride":I
    :cond_59
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No Looper; Looper.prepare() wasn\'t called on this thread."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist loopOnce(Landroid/os/Looper;JI)Z
    .registers 39
    .param p0, "me"    # Landroid/os/Looper;
    .param p1, "ident"    # J
    .param p3, "thresholdOverride"    # I

    .line 169
    move-object/from16 v1, p0

    move/from16 v2, p3

    iget-object v0, v1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0}, Landroid/os/MessageQueue;->next()Landroid/os/Message;

    move-result-object v13

    .line 170
    .local v13, "msg":Landroid/os/Message;
    const/4 v0, 0x0

    if-nez v13, :cond_e

    .line 172
    return v0

    .line 176
    :cond_e
    iget-object v14, v1, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 177
    .local v14, "logging":Landroid/util/Printer;
    const-string v11, " "

    if-eqz v14, :cond_42

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> Dispatching to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 182
    :cond_42
    sget-object v12, Landroid/os/Looper;->sObserver:Landroid/os/Looper$Observer;

    .line 185
    .local v12, "observer":Landroid/os/Looper$Observer;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v3

    iget-object v4, v13, Landroid/os/Message;->monitorInfo:Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    invoke-virtual {v3, v13, v4}, Landroid/os/perfdebug/MessageMonitor;->markDispatch(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;)V

    .line 186
    iget-wide v9, v1, Landroid/os/Looper;->mTraceTag:J

    .line 187
    .local v9, "traceTag":J
    iget-wide v3, v1, Landroid/os/Looper;->mSlowDispatchThresholdMs:J

    .line 188
    .local v3, "slowDispatchThresholdMs":J
    iget-wide v5, v1, Landroid/os/Looper;->mSlowDeliveryThresholdMs:J

    .line 189
    .local v5, "slowDeliveryThresholdMs":J
    if-lez v2, :cond_5c

    .line 190
    int-to-long v3, v2

    .line 191
    int-to-long v5, v2

    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    goto :goto_60

    .line 189
    :cond_5c
    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    .line 193
    .end local v3    # "slowDispatchThresholdMs":J
    .end local v5    # "slowDeliveryThresholdMs":J
    .local v19, "slowDispatchThresholdMs":J
    .local v21, "slowDeliveryThresholdMs":J
    :goto_60
    const-wide/16 v3, 0x0

    cmp-long v5, v21, v3

    const/4 v7, 0x1

    if-lez v5, :cond_6f

    iget-wide v5, v13, Landroid/os/Message;->when:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_6f

    move v5, v7

    goto :goto_70

    :cond_6f
    move v5, v0

    :goto_70
    move/from16 v23, v5

    .line 194
    .local v23, "logSlowDelivery":Z
    cmp-long v5, v19, v3

    if-lez v5, :cond_78

    move v5, v7

    goto :goto_79

    :cond_78
    move v5, v0

    :goto_79
    move/from16 v24, v5

    .line 196
    .local v24, "logSlowDispatch":Z
    if-nez v23, :cond_82

    if-eqz v24, :cond_80

    goto :goto_82

    :cond_80
    move v5, v0

    goto :goto_83

    :cond_82
    :goto_82
    move v5, v7

    :goto_83
    move/from16 v25, v5

    .line 197
    .local v25, "needStartTime":Z
    move/from16 v26, v24

    .line 199
    .local v26, "needEndTime":Z
    cmp-long v5, v9, v3

    if-eqz v5, :cond_9a

    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 200
    iget-object v5, v13, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v5, v13}, Landroid/os/Handler;->getTraceName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v10, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 203
    :cond_9a
    if-eqz v25, :cond_a1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    goto :goto_a2

    :cond_a1
    move-wide v5, v3

    :goto_a2
    move-wide/from16 v27, v5

    .line 205
    .local v27, "dispatchStart":J
    const/4 v5, 0x0

    .line 206
    .local v5, "token":Ljava/lang/Object;
    if-eqz v12, :cond_ad

    .line 207
    invoke-interface {v12}, Landroid/os/Looper$Observer;->messageDispatchStarting()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    goto :goto_ae

    .line 206
    :cond_ad
    move-object v8, v5

    .line 209
    .end local v5    # "token":Ljava/lang/Object;
    .local v8, "token":Ljava/lang/Object;
    :goto_ae
    iget v5, v13, Landroid/os/Message;->workSourceUid:I

    invoke-static {v5}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v29

    .line 211
    .local v29, "origWorkSource":J
    :try_start_b4
    iget-object v5, v13, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v5, v13}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b9} :catch_1df
    .catchall {:try_start_b4 .. :try_end_b9} :catchall_1d7

    .line 212
    if-eqz v12, :cond_d2

    .line 213
    :try_start_bb
    invoke-interface {v12, v8, v13}, Landroid/os/Looper$Observer;->messageDispatched(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_d2

    .line 222
    :catchall_bf
    move-exception v0

    move-object v2, v8

    move-wide/from16 v33, v9

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    goto/16 :goto_1f4

    .line 216
    :catch_c8
    move-exception v0

    move-object/from16 v31, v8

    move-wide/from16 v33, v9

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    goto/16 :goto_1e7

    .line 215
    :cond_d2
    :goto_d2
    if-eqz v26, :cond_da

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_d8} :catch_c8
    .catchall {:try_start_bb .. :try_end_d8} :catchall_bf

    move-wide v15, v5

    goto :goto_db

    :cond_da
    move-wide v15, v3

    .line 222
    .local v15, "dispatchEnd":J
    :goto_db
    invoke-static/range {v29 .. v30}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 223
    cmp-long v3, v9, v3

    if-eqz v3, :cond_e5

    .line 224
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 228
    :cond_e5
    invoke-virtual/range {p0 .. p0}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v3

    iget-object v4, v13, Landroid/os/Message;->monitorInfo:Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    invoke-virtual {v3, v13, v4}, Landroid/os/perfdebug/MessageMonitor;->markFinish(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;)V

    .line 229
    const-string v5, "Looper"

    if-eqz v23, :cond_136

    .line 230
    iget-boolean v3, v1, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    if-eqz v3, :cond_117

    .line 231
    iget-wide v3, v13, Landroid/os/Message;->when:J

    sub-long v3, v27, v3

    const-wide/16 v17, 0xa

    cmp-long v3, v3, v17

    if-gtz v3, :cond_10f

    .line 232
    const-string v3, "Drained"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iput-boolean v0, v1, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    move-object/from16 v32, v5

    move v2, v7

    move-object/from16 v31, v8

    move-wide/from16 v33, v9

    goto :goto_13d

    .line 231
    :cond_10f
    move-object/from16 v32, v5

    move v2, v7

    move-object/from16 v31, v8

    move-wide/from16 v33, v9

    goto :goto_13d

    .line 236
    :cond_117
    iget-wide v3, v13, Landroid/os/Message;->when:J

    const-string v0, "delivery"

    move-wide/from16 v17, v3

    move-wide/from16 v3, v21

    move-object v2, v5

    move-wide/from16 v5, v17

    move-object/from16 v32, v2

    move v2, v7

    move-object/from16 v31, v8

    .end local v8    # "token":Ljava/lang/Object;
    .local v31, "token":Ljava/lang/Object;
    move-wide/from16 v7, v27

    move-wide/from16 v33, v9

    .end local v9    # "traceTag":J
    .local v33, "traceTag":J
    move-object v9, v0

    move-object v10, v13

    invoke-static/range {v3 .. v10}, Landroid/os/Looper;->showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 239
    iput-boolean v2, v1, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    goto :goto_13d

    .line 229
    .end local v31    # "token":Ljava/lang/Object;
    .end local v33    # "traceTag":J
    .restart local v8    # "token":Ljava/lang/Object;
    .restart local v9    # "traceTag":J
    :cond_136
    move-object/from16 v32, v5

    move v2, v7

    move-object/from16 v31, v8

    move-wide/from16 v33, v9

    .line 243
    .end local v8    # "token":Ljava/lang/Object;
    .end local v9    # "traceTag":J
    .restart local v31    # "token":Ljava/lang/Object;
    .restart local v33    # "traceTag":J
    :cond_13d
    :goto_13d
    if-eqz v24, :cond_14f

    .line 244
    const-string v17, "dispatch"

    move-object v0, v11

    move-object v5, v12

    .end local v12    # "observer":Landroid/os/Looper$Observer;
    .local v5, "observer":Landroid/os/Looper$Observer;
    move-wide/from16 v11, v19

    move-object v6, v13

    move-object v7, v14

    .end local v13    # "msg":Landroid/os/Message;
    .end local v14    # "logging":Landroid/util/Printer;
    .local v6, "msg":Landroid/os/Message;
    .local v7, "logging":Landroid/util/Printer;
    move-wide/from16 v13, v27

    move-object/from16 v18, v6

    invoke-static/range {v11 .. v18}, Landroid/os/Looper;->showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z

    goto :goto_153

    .line 243
    .end local v5    # "observer":Landroid/os/Looper$Observer;
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "logging":Landroid/util/Printer;
    .restart local v12    # "observer":Landroid/os/Looper$Observer;
    .restart local v13    # "msg":Landroid/os/Message;
    .restart local v14    # "logging":Landroid/util/Printer;
    :cond_14f
    move-object v0, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    .line 247
    .end local v12    # "observer":Landroid/os/Looper$Observer;
    .end local v13    # "msg":Landroid/os/Message;
    .end local v14    # "logging":Landroid/util/Printer;
    .restart local v5    # "observer":Landroid/os/Looper$Observer;
    .restart local v6    # "msg":Landroid/os/Message;
    .restart local v7    # "logging":Landroid/util/Printer;
    :goto_153
    if-eqz v7, :cond_177

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<<<< Finished to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 253
    :cond_177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 254
    .local v3, "newIdent":J
    cmp-long v8, p1, v3

    if-eqz v8, :cond_1d3

    .line 255
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Thread identity changed from 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 256
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 257
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " while dispatching to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 258
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v6, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " what="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v6, Landroid/os/Message;->what:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    move-object/from16 v8, v32

    invoke-static {v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1d3
    invoke-virtual {v6}, Landroid/os/Message;->recycleUnchecked()V

    .line 264
    return v2

    .line 222
    .end local v3    # "newIdent":J
    .end local v5    # "observer":Landroid/os/Looper$Observer;
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "logging":Landroid/util/Printer;
    .end local v15    # "dispatchEnd":J
    .end local v31    # "token":Ljava/lang/Object;
    .end local v33    # "traceTag":J
    .restart local v8    # "token":Ljava/lang/Object;
    .restart local v9    # "traceTag":J
    .restart local v12    # "observer":Landroid/os/Looper$Observer;
    .restart local v13    # "msg":Landroid/os/Message;
    .restart local v14    # "logging":Landroid/util/Printer;
    :catchall_1d7
    move-exception v0

    move-wide/from16 v33, v9

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v2, v8

    .end local v8    # "token":Ljava/lang/Object;
    .end local v9    # "traceTag":J
    .end local v12    # "observer":Landroid/os/Looper$Observer;
    .end local v13    # "msg":Landroid/os/Message;
    .end local v14    # "logging":Landroid/util/Printer;
    .restart local v5    # "observer":Landroid/os/Looper$Observer;
    .restart local v6    # "msg":Landroid/os/Message;
    .restart local v7    # "logging":Landroid/util/Printer;
    .restart local v31    # "token":Ljava/lang/Object;
    .restart local v33    # "traceTag":J
    goto :goto_1f4

    .line 216
    .end local v5    # "observer":Landroid/os/Looper$Observer;
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "logging":Landroid/util/Printer;
    .end local v31    # "token":Ljava/lang/Object;
    .end local v33    # "traceTag":J
    .restart local v8    # "token":Ljava/lang/Object;
    .restart local v9    # "traceTag":J
    .restart local v12    # "observer":Landroid/os/Looper$Observer;
    .restart local v13    # "msg":Landroid/os/Message;
    .restart local v14    # "logging":Landroid/util/Printer;
    :catch_1df
    move-exception v0

    move-object/from16 v31, v8

    move-wide/from16 v33, v9

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    .line 217
    .end local v8    # "token":Ljava/lang/Object;
    .end local v9    # "traceTag":J
    .end local v12    # "observer":Landroid/os/Looper$Observer;
    .end local v13    # "msg":Landroid/os/Message;
    .end local v14    # "logging":Landroid/util/Printer;
    .local v0, "exception":Ljava/lang/Exception;
    .restart local v5    # "observer":Landroid/os/Looper$Observer;
    .restart local v6    # "msg":Landroid/os/Message;
    .restart local v7    # "logging":Landroid/util/Printer;
    .restart local v31    # "token":Ljava/lang/Object;
    .restart local v33    # "traceTag":J
    :goto_1e7
    if-eqz v5, :cond_1ef

    .line 218
    move-object/from16 v2, v31

    .end local v31    # "token":Ljava/lang/Object;
    .local v2, "token":Ljava/lang/Object;
    :try_start_1eb
    invoke-interface {v5, v2, v6, v0}, Landroid/os/Looper$Observer;->dispatchingThrewException(Ljava/lang/Object;Landroid/os/Message;Ljava/lang/Exception;)V

    goto :goto_1f1

    .line 217
    .end local v2    # "token":Ljava/lang/Object;
    .restart local v31    # "token":Ljava/lang/Object;
    :cond_1ef
    move-object/from16 v2, v31

    .line 220
    .end local v31    # "token":Ljava/lang/Object;
    .restart local v2    # "token":Ljava/lang/Object;
    :goto_1f1
    nop

    .end local v2    # "token":Ljava/lang/Object;
    .end local v5    # "observer":Landroid/os/Looper$Observer;
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "logging":Landroid/util/Printer;
    .end local v19    # "slowDispatchThresholdMs":J
    .end local v21    # "slowDeliveryThresholdMs":J
    .end local v23    # "logSlowDelivery":Z
    .end local v24    # "logSlowDispatch":Z
    .end local v25    # "needStartTime":Z
    .end local v26    # "needEndTime":Z
    .end local v27    # "dispatchStart":J
    .end local v29    # "origWorkSource":J
    .end local v33    # "traceTag":J
    .end local p0    # "me":Landroid/os/Looper;
    .end local p1    # "ident":J
    .end local p3    # "thresholdOverride":I
    throw v0
    :try_end_1f3
    .catchall {:try_start_1eb .. :try_end_1f3} :catchall_1f3

    .line 222
    .end local v0    # "exception":Ljava/lang/Exception;
    .restart local v2    # "token":Ljava/lang/Object;
    .restart local v5    # "observer":Landroid/os/Looper$Observer;
    .restart local v6    # "msg":Landroid/os/Message;
    .restart local v7    # "logging":Landroid/util/Printer;
    .restart local v19    # "slowDispatchThresholdMs":J
    .restart local v21    # "slowDeliveryThresholdMs":J
    .restart local v23    # "logSlowDelivery":Z
    .restart local v24    # "logSlowDispatch":Z
    .restart local v25    # "needStartTime":Z
    .restart local v26    # "needEndTime":Z
    .restart local v27    # "dispatchStart":J
    .restart local v29    # "origWorkSource":J
    .restart local v33    # "traceTag":J
    .restart local p0    # "me":Landroid/os/Looper;
    .restart local p1    # "ident":J
    .restart local p3    # "thresholdOverride":I
    :catchall_1f3
    move-exception v0

    :goto_1f4
    invoke-static/range {v29 .. v30}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 223
    cmp-long v3, v33, v3

    if-eqz v3, :cond_1fe

    .line 224
    invoke-static/range {v33 .. v34}, Landroid/os/Trace;->traceEnd(J)V

    .line 226
    :cond_1fe
    throw v0
.end method

.method public static whitelist myLooper()Landroid/os/Looper;
    .registers 1

    .line 324
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method

.method public static whitelist myQueue()Landroid/os/MessageQueue;
    .registers 1

    .line 333
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public static whitelist prepare()V
    .registers 1

    .line 114
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    .line 115
    return-void
.end method

.method private static greylist-max-o prepare(Z)V
    .registers 3
    .param p0, "quitAllowed"    # Z

    .line 118
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    .line 121
    new-instance v1, Landroid/os/Looper;

    invoke-direct {v1, p0}, Landroid/os/Looper;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 122
    return-void

    .line 119
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only one Looper may be created per thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist prepareMainLooper()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    .line 134
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    .line 135
    :try_start_7
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    if-nez v1, :cond_24

    .line 138
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    .line 140
    invoke-virtual {v1}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/perfdebug/MessageMonitor;->enableMonitorMessage(Z)V

    .line 141
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/perfdebug/MessageMonitor;->enableMonitorEvent(Z)V

    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 136
    :cond_24
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The main Looper has already been prepared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public static blacklist setObserver(Landroid/os/Looper$Observer;)V
    .registers 1
    .param p0, "observer"    # Landroid/os/Looper$Observer;

    .line 160
    sput-object p0, Landroid/os/Looper;->sObserver:Landroid/os/Looper$Observer;

    .line 161
    return-void
.end method

.method private static greylist-max-o showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z
    .registers 12
    .param p0, "threshold"    # J
    .param p2, "measureStart"    # J
    .param p4, "measureEnd"    # J
    .param p6, "what"    # Ljava/lang/String;
    .param p7, "msg"    # Landroid/os/Message;

    .line 308
    sub-long v0, p4, p2

    .line 309
    .local v0, "actualTime":J
    cmp-long v2, v0, p0

    if-gez v2, :cond_8

    .line 310
    const/4 v2, 0x0

    return v2

    .line 313
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 314
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p7, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 315
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p7, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p7, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    const-string v3, "Looper"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v3}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    .line 451
    iget-object v0, p0, Landroid/os/Looper;->mMonitor:Landroid/os/perfdebug/MessageMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/perfdebug/MessageMonitor;->dumpAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 7
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    .line 465
    return-void
.end method

.method public blacklist dumpAllLoopers(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 469
    iget-object v0, p0, Landroid/os/Looper;->mMonitor:Landroid/os/perfdebug/MessageMonitor;

    invoke-virtual {v0, p1, p2}, Landroid/os/perfdebug/MessageMonitor;->dumpAllLoopers(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 479
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 480
    .local v0, "looperToken":J
    iget-object v2, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 481
    iget-object v2, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 482
    iget-object v2, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    if-eqz v2, :cond_2c

    .line 483
    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/MessageQueue;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 485
    :cond_2c
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 486
    return-void
.end method

.method public blacklist getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;
    .registers 2

    .line 348
    iget-object v0, p0, Landroid/os/Looper;->mMonitor:Landroid/os/perfdebug/MessageMonitor;

    return-object v0
.end method

.method public whitelist getQueue()Landroid/os/MessageQueue;
    .registers 2

    .line 438
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public whitelist getThread()Ljava/lang/Thread;
    .registers 2

    .line 429
    iget-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public whitelist isCurrentThread()Z
    .registers 3

    .line 356
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist printLoopInfo(I)V
    .registers 3
    .param p1, "count"    # I

    .line 474
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->printMessageInfo(I)V

    .line 475
    return-void
.end method

.method public whitelist quit()V
    .registers 3

    .line 404
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    .line 405
    return-void
.end method

.method public whitelist quitSafely()V
    .registers 3

    .line 420
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    .line 421
    return-void
.end method

.method public whitelist setMessageLogging(Landroid/util/Printer;)V
    .registers 2
    .param p1, "printer"    # Landroid/util/Printer;

    .line 369
    iput-object p1, p0, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 370
    return-void
.end method

.method public greylist-max-o setSlowLogThresholdMs(JJ)V
    .registers 5
    .param p1, "slowDispatchThresholdMs"    # J
    .param p3, "slowDeliveryThresholdMs"    # J

    .line 383
    iput-wide p1, p0, Landroid/os/Looper;->mSlowDispatchThresholdMs:J

    .line 384
    iput-wide p3, p0, Landroid/os/Looper;->mSlowDeliveryThresholdMs:J

    .line 385
    return-void
.end method

.method public greylist setTraceTag(J)V
    .registers 3
    .param p1, "traceTag"    # J

    .line 375
    iput-wide p1, p0, Landroid/os/Looper;->mTraceTag:J

    .line 376
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looper ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 491
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    return-object v0
.end method
