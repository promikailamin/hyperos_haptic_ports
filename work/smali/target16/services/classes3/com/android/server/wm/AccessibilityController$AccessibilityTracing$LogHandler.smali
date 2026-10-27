.class public Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;Landroid/os/Looper;)V
    .registers 3

    .line 1702
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 1703
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    .line 1708
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    return-void

    .line 1766
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$fgetmLock(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1767
    :try_start_10
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$mwriteTraceToFileInternal(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)V

    .line 1768
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p0

    .line 1710
    :cond_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1712
    :try_start_1e
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 1713
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 1714
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const-wide v3, 0x20b00000002L

    .line 1716
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1718
    iget-wide v5, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 1719
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 1722
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/32 v11, 0xf4240

    .line 1723
    div-long/2addr v7, v11

    sub-long/2addr v9, v7

    .line 1725
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide v11, 0x10600000001L

    .line 1727
    invoke-virtual {v1, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1728
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide v8, 0x10900000002L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1730
    iget-wide v7, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 1732
    invoke-static {v7, v8}, Landroid/accessibilityservice/AccessibilityTrace;->getNamesOfLoggingTypes(J)Ljava/util/List;

    move-result-object v7

    .line 1734
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_76
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-wide v9, 0x20900000003L

    .line 1735
    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_76

    .line 1737
    :cond_8b
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    const-wide v8, 0x10900000006L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1738
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    const-wide v8, 0x10900000004L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1739
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    const-wide v8, 0x10900000005L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1740
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    const-wide v7, 0x10900000007L

    invoke-virtual {v1, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1741
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-wide v7, 0x10900000008L

    invoke-virtual {v1, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1743
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/StackTraceElement;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v7, Ljava/util/Set;

    invoke-static {p1, v2, v7}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$mtoStackTraceString(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;[Ljava/lang/StackTraceElement;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    const-wide v7, 0x10900000009L

    .line 1746
    invoke-virtual {v1, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1747
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    check-cast p1, [B

    const-wide v7, 0x10b0000000aL

    invoke-virtual {v1, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    const-wide v7, 0x10b0000000bL

    .line 1749
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 1750
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$fgetmService(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_100} :catch_13d

    .line 1751
    :try_start_100
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$fgetmService(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->dumpDebugLocked(Landroid/util/proto/ProtoOutputStream;I)V

    .line 1752
    monitor-exit p1
    :try_end_10b
    .catchall {:try_start_100 .. :try_end_10b} :catchall_137

    :try_start_10b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1753
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1754
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {p1, v5, v6}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$mprintCpuStats(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;J)Ljava/lang/String;

    move-result-object p1

    const-wide v5, 0x1090000000cL

    invoke-virtual {v1, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1756
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1757
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$fgetmLock(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_129} :catch_13d

    .line 1758
    :try_start_129
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$fgetmBuffer(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/internal/util/TraceBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 1759
    monitor-exit p1

    return-void

    :catchall_134
    move-exception p0

    monitor-exit p1
    :try_end_136
    .catchall {:try_start_129 .. :try_end_136} :catchall_134

    :try_start_136
    throw p0
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_137} :catch_13d

    :catchall_137
    move-exception p0

    .line 1752
    :try_start_138
    monitor-exit p1
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_137

    :try_start_139
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_13d} :catch_13d

    :catch_13d
    move-exception p0

    .line 1761
    const-string p1, "AccessibilityTracing"

    const-string v0, "Exception while tracing state"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
