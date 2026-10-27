.class Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogHandler"
.end annotation


# static fields
.field public static final MESSAGE_LOG_TRACE_ENTRY:I = 0x1

.field public static final MESSAGE_WRITE_FILE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2149
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 2150
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2151
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 28
    .param p1, "message"    # Landroid/os/Message;

    .line 2155
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_178

    goto/16 :goto_176

    .line 2213
    :pswitch_b
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$fgetmLock(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2214
    :try_start_12
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$mwriteTraceToFileInternal(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)V

    .line 2215
    monitor-exit v3

    goto/16 :goto_176

    :catchall_1a
    move-exception v0

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v0

    .line 2157
    :pswitch_1d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 2159
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_22
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    move-object v4, v0

    .line 2160
    .local v4, "os":Landroid/util/proto/ProtoOutputStream;
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 2161
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    move-object v5, v0

    .line 2163
    .local v5, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    const-wide v6, 0x20b00000002L

    invoke-virtual {v4, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2165
    .local v6, "tokenOuter":J
    iget-wide v8, v3, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 2166
    .local v8, "reportedTimeStampNanos":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    .line 2167
    .local v10, "currentElapsedRealtimeNanos":J
    sub-long v12, v10, v8

    .line 2169
    .local v12, "timeDiffNanos":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 2170
    .local v14, "currentTimeMillis":J
    const-wide/32 v16, 0xf4240

    div-long v16, v12, v16

    sub-long v16, v14, v16

    .line 2172
    .local v16, "reportedTimeMillis":J
    new-instance v0, Ljava/text/SimpleDateFormat;

    move-wide/from16 v18, v10

    .end local v10    # "currentElapsedRealtimeNanos":J
    .local v18, "currentElapsedRealtimeNanos":J
    const-string v10, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 2174
    .local v10, "fm":Ljava/text/SimpleDateFormat;
    move-wide/from16 v20, v12

    .end local v12    # "timeDiffNanos":J
    .local v20, "timeDiffNanos":J
    const-wide v11, 0x10600000001L

    invoke-virtual {v4, v11, v12, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2175
    const-wide v11, 0x10900000002L

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2177
    iget-wide v11, v3, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 2178
    .local v11, "loggingTypes":J
    nop

    .line 2179
    invoke-static {v11, v12}, Landroid/accessibilityservice/AccessibilityTrace;->getNamesOfLoggingTypes(J)Ljava/util/List;

    move-result-object v0

    move-object v13, v0

    .line 2181
    .local v13, "loggingTypeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v22
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_8a} :catch_16b

    if-eqz v22, :cond_ac

    :try_start_8c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v23, v22

    .line 2182
    .local v23, "type":Ljava/lang/String;
    move-object/from16 v22, v10

    move-wide/from16 v24, v11

    .end local v10    # "fm":Ljava/text/SimpleDateFormat;
    .end local v11    # "loggingTypes":J
    .local v22, "fm":Ljava/text/SimpleDateFormat;
    .local v24, "loggingTypes":J
    const-wide v10, 0x20900000003L

    move-object/from16 v12, v23

    .end local v23    # "type":Ljava/lang/String;
    .local v12, "type":Ljava/lang/String;
    invoke-virtual {v4, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a2} :catch_a7

    .line 2183
    .end local v12    # "type":Ljava/lang/String;
    move-object/from16 v10, v22

    move-wide/from16 v11, v24

    goto :goto_86

    .line 2207
    .end local v4    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v6    # "tokenOuter":J
    .end local v8    # "reportedTimeStampNanos":J
    .end local v13    # "loggingTypeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "currentTimeMillis":J
    .end local v16    # "reportedTimeMillis":J
    .end local v18    # "currentElapsedRealtimeNanos":J
    .end local v20    # "timeDiffNanos":J
    .end local v22    # "fm":Ljava/text/SimpleDateFormat;
    .end local v24    # "loggingTypes":J
    :catch_a7
    move-exception v0

    move-object/from16 v23, v3

    goto/16 :goto_16e

    .line 2184
    .restart local v4    # "os":Landroid/util/proto/ProtoOutputStream;
    .restart local v5    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v6    # "tokenOuter":J
    .restart local v8    # "reportedTimeStampNanos":J
    .restart local v10    # "fm":Ljava/text/SimpleDateFormat;
    .restart local v11    # "loggingTypes":J
    .restart local v13    # "loggingTypeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "currentTimeMillis":J
    .restart local v16    # "reportedTimeMillis":J
    .restart local v18    # "currentElapsedRealtimeNanos":J
    .restart local v20    # "timeDiffNanos":J
    :cond_ac
    move-object/from16 v22, v10

    move-wide/from16 v24, v11

    .end local v10    # "fm":Ljava/text/SimpleDateFormat;
    .end local v11    # "loggingTypes":J
    .restart local v22    # "fm":Ljava/text/SimpleDateFormat;
    .restart local v24    # "loggingTypes":J
    const-wide v10, 0x10900000006L

    :try_start_b5
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2185
    const-wide v10, 0x10900000004L

    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2186
    const-wide v10, 0x10900000005L

    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2187
    const-wide v10, 0x10900000007L

    iget v0, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2188
    const-wide v10, 0x10900000008L

    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2190
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    iget-object v10, v3, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/StackTraceElement;

    iget-object v11, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v11, Ljava/util/Set;

    invoke-static {v0, v10, v11}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$mtoStackTraceString(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;[Ljava/lang/StackTraceElement;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 2193
    .local v10, "callingStack":Ljava/lang/String;
    const-wide v11, 0x10900000009L

    invoke-virtual {v4, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2194
    const-wide v11, 0x10b0000000aL

    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v4, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 2196
    const-wide v11, 0x10b0000000bL

    invoke-virtual {v4, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 2197
    .local v11, "tokenInner":J
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$fgetmService(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_123} :catch_16b

    :try_start_123
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2198
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$fgetmService(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0
    :try_end_12c
    .catchall {:try_start_123 .. :try_end_12c} :catchall_15f

    move-object/from16 v23, v3

    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    .local v23, "args":Lcom/android/internal/os/SomeArgs;
    const/4 v3, 0x0

    :try_start_12f
    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/WindowManagerService;->dumpDebugLocked(Landroid/util/proto/ProtoOutputStream;I)V

    .line 2199
    monitor-exit v2
    :try_end_133
    .catchall {:try_start_12f .. :try_end_133} :catchall_169

    :try_start_133
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2200
    invoke-virtual {v4, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2201
    const-wide v2, 0x1090000000cL

    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {v0, v8, v9}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$mprintCpuStats(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2203
    invoke-virtual {v4, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2204
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$fgetmLock(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_151} :catch_167

    .line 2205
    :try_start_151
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$fgetmBuffer(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/internal/util/TraceBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 2206
    monitor-exit v2

    .line 2209
    .end local v4    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v6    # "tokenOuter":J
    .end local v8    # "reportedTimeStampNanos":J
    .end local v10    # "callingStack":Ljava/lang/String;
    .end local v11    # "tokenInner":J
    .end local v13    # "loggingTypeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "currentTimeMillis":J
    .end local v16    # "reportedTimeMillis":J
    .end local v18    # "currentElapsedRealtimeNanos":J
    .end local v20    # "timeDiffNanos":J
    .end local v22    # "fm":Ljava/text/SimpleDateFormat;
    .end local v24    # "loggingTypes":J
    goto :goto_176

    .line 2206
    .restart local v4    # "os":Landroid/util/proto/ProtoOutputStream;
    .restart local v5    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v6    # "tokenOuter":J
    .restart local v8    # "reportedTimeStampNanos":J
    .restart local v10    # "callingStack":Ljava/lang/String;
    .restart local v11    # "tokenInner":J
    .restart local v13    # "loggingTypeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "currentTimeMillis":J
    .restart local v16    # "reportedTimeMillis":J
    .restart local v18    # "currentElapsedRealtimeNanos":J
    .restart local v20    # "timeDiffNanos":J
    .restart local v22    # "fm":Ljava/text/SimpleDateFormat;
    .restart local v24    # "loggingTypes":J
    :catchall_15c
    move-exception v0

    monitor-exit v2
    :try_end_15e
    .catchall {:try_start_151 .. :try_end_15e} :catchall_15c

    .end local v23    # "args":Lcom/android/internal/os/SomeArgs;
    .end local p0    # "this":Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;
    .end local p1    # "message":Landroid/os/Message;
    :try_start_15e
    throw v0
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_15f} :catch_167

    .line 2199
    .restart local v3    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local p0    # "this":Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;
    .restart local p1    # "message":Landroid/os/Message;
    :catchall_15f
    move-exception v0

    move-object/from16 v23, v3

    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v23    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_162
    :try_start_162
    monitor-exit v2
    :try_end_163
    .catchall {:try_start_162 .. :try_end_163} :catchall_169

    :try_start_163
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v23    # "args":Lcom/android/internal/os/SomeArgs;
    .end local p0    # "this":Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;
    .end local p1    # "message":Landroid/os/Message;
    throw v0
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_167} :catch_167

    .line 2207
    .end local v4    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v6    # "tokenOuter":J
    .end local v8    # "reportedTimeStampNanos":J
    .end local v10    # "callingStack":Ljava/lang/String;
    .end local v11    # "tokenInner":J
    .end local v13    # "loggingTypeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "currentTimeMillis":J
    .end local v16    # "reportedTimeMillis":J
    .end local v18    # "currentElapsedRealtimeNanos":J
    .end local v20    # "timeDiffNanos":J
    .end local v22    # "fm":Ljava/text/SimpleDateFormat;
    .end local v24    # "loggingTypes":J
    .restart local v23    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local p0    # "this":Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;
    .restart local p1    # "message":Landroid/os/Message;
    :catch_167
    move-exception v0

    goto :goto_16e

    .line 2199
    .restart local v4    # "os":Landroid/util/proto/ProtoOutputStream;
    .restart local v5    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v6    # "tokenOuter":J
    .restart local v8    # "reportedTimeStampNanos":J
    .restart local v10    # "callingStack":Ljava/lang/String;
    .restart local v11    # "tokenInner":J
    .restart local v13    # "loggingTypeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "currentTimeMillis":J
    .restart local v16    # "reportedTimeMillis":J
    .restart local v18    # "currentElapsedRealtimeNanos":J
    .restart local v20    # "timeDiffNanos":J
    .restart local v22    # "fm":Ljava/text/SimpleDateFormat;
    .restart local v24    # "loggingTypes":J
    :catchall_169
    move-exception v0

    goto :goto_162

    .line 2207
    .end local v4    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v6    # "tokenOuter":J
    .end local v8    # "reportedTimeStampNanos":J
    .end local v10    # "callingStack":Ljava/lang/String;
    .end local v11    # "tokenInner":J
    .end local v13    # "loggingTypeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "currentTimeMillis":J
    .end local v16    # "reportedTimeMillis":J
    .end local v18    # "currentElapsedRealtimeNanos":J
    .end local v20    # "timeDiffNanos":J
    .end local v22    # "fm":Ljava/text/SimpleDateFormat;
    .end local v23    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v24    # "loggingTypes":J
    .restart local v3    # "args":Lcom/android/internal/os/SomeArgs;
    :catch_16b
    move-exception v0

    move-object/from16 v23, v3

    .line 2208
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v23    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_16e
    const-string v2, "AccessibilityTracing"

    const-string v3, "Exception while tracing state"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2210
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 2219
    .end local v23    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_176
    return-void

    nop

    :pswitch_data_178
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_b
    .end packed-switch
.end method
