.class public final Lcom/android/server/power/WakelockTracer;
.super Landroid/tracing/perfetto/DataSource;
.source "WakelockTracer.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$PSi6d9bxQArkO2T9FQ7_pZ3lpj4(Lcom/android/server/power/WakelockTracer$Instance;Landroid/tracing/perfetto/TracingContext;)V
    .registers 5

    .line 134
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->getDataSourceInstanceLocked()Landroid/tracing/perfetto/DataSourceInstance;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/WakelockTracer$Instance;

    if-eq v0, p0, :cond_e

    if-eqz v0, :cond_d

    .line 138
    invoke-virtual {v0}, Landroid/tracing/perfetto/DataSourceInstance;->close()V

    :cond_d
    return-void

    .line 136
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p0

    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/WakelockTracer$IncrementalState;

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 136
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/android/server/power/WakelockTracer$Instance;->write(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/power/WakelockTracer$IncrementalState;J)V
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_23

    .line 138
    invoke-virtual {v0}, Landroid/tracing/perfetto/DataSourceInstance;->close()V

    return-void

    :catchall_23
    move-exception p0

    if-eqz v0, :cond_2e

    .line 134
    :try_start_26
    invoke-virtual {v0}, Landroid/tracing/perfetto/DataSourceInstance;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2e
    :goto_2e
    throw p0
.end method

.method public static synthetic $r8$lambda$xCB5Z5GO_6FtUDCYWxvUpuwGJJs(ZLjava/lang/String;IIILandroid/os/WorkSource;Landroid/tracing/perfetto/TracingContext;)V
    .registers 17

    .line 123
    invoke-virtual/range {p6 .. p6}, Landroid/tracing/perfetto/TracingContext;->getDataSourceInstanceLocked()Landroid/tracing/perfetto/DataSourceInstance;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/power/WakelockTracer$Instance;

    if-nez v1, :cond_f

    if-eqz v1, :cond_e

    .line 127
    invoke-virtual {v1}, Landroid/tracing/perfetto/DataSourceInstance;->close()V

    :cond_e
    return-void

    .line 126
    :cond_f
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    move v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 125
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/WakelockTracer$Instance;->onWakelockEvent(ZLjava/lang/String;IIILandroid/os/WorkSource;J)V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_20

    .line 127
    invoke-virtual {v1}, Landroid/tracing/perfetto/DataSourceInstance;->close()V

    return-void

    :catchall_20
    move-exception v0

    move-object p0, v0

    .line 123
    :try_start_22
    invoke-virtual {v1}, Landroid/tracing/perfetto/DataSourceInstance;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2b

    :catchall_26
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2b
    throw p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/power/WakelockTracer;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/WakelockTracer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mwriteInstance(Lcom/android/server/power/WakelockTracer;Lcom/android/server/power/WakelockTracer$Instance;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/WakelockTracer;->writeInstance(Lcom/android/server/power/WakelockTracer$Instance;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    .line 64
    sget-object v0, Landroid/tracing/perfetto/DataSourceParams;->DEFAULTS:Landroid/tracing/perfetto/DataSourceParams;

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/WakelockTracer;-><init>(Landroid/os/Looper;Landroid/tracing/perfetto/DataSourceParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/tracing/perfetto/DataSourceParams;)V
    .registers 4

    .line 68
    const-string v0, "android.app_wakelocks"

    invoke-direct {p0, v0}, Landroid/tracing/perfetto/DataSource;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/WakelockTracer;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_11

    .line 71
    invoke-virtual {p0, p2}, Landroid/tracing/perfetto/DataSource;->register(Landroid/tracing/perfetto/DataSourceParams;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public createIncrementalState(Landroid/tracing/perfetto/CreateIncrementalStateArgs;)Lcom/android/server/power/WakelockTracer$IncrementalState;
    .registers 2

    .line 94
    new-instance p0, Lcom/android/server/power/WakelockTracer$IncrementalState;

    invoke-direct {p0}, Lcom/android/server/power/WakelockTracer$IncrementalState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createIncrementalState(Landroid/tracing/perfetto/CreateIncrementalStateArgs;)Ljava/lang/Object;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/power/WakelockTracer;->createIncrementalState(Landroid/tracing/perfetto/CreateIncrementalStateArgs;)Lcom/android/server/power/WakelockTracer$IncrementalState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createInstance(Landroid/util/proto/ProtoInputStream;I)Landroid/tracing/perfetto/DataSourceInstance;
    .registers 3

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/WakelockTracer;->createInstance(Landroid/util/proto/ProtoInputStream;I)Lcom/android/server/power/WakelockTracer$Instance;

    move-result-object p0

    return-object p0
.end method

.method public createInstance(Landroid/util/proto/ProtoInputStream;I)Lcom/android/server/power/WakelockTracer$Instance;
    .registers 4

    .line 84
    new-instance v0, Lcom/android/server/power/WakelockTracer$Instance;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/power/WakelockTracer$Instance;-><init>(Lcom/android/server/power/WakelockTracer;ILandroid/util/proto/ProtoInputStream;)V

    return-object v0
.end method

.method public onWakelockEvent(ZLjava/lang/String;IIILandroid/os/WorkSource;)V
    .registers 14

    .line 122
    new-instance v0, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda0;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda0;-><init>(ZLjava/lang/String;IIILandroid/os/WorkSource;)V

    invoke-virtual {p0, v0}, Landroid/tracing/perfetto/DataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    return-void
.end method

.method public final writeInstance(Lcom/android/server/power/WakelockTracer$Instance;)V
    .registers 3

    .line 133
    new-instance v0, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/power/WakelockTracer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/WakelockTracer$Instance;)V

    invoke-virtual {p0, v0}, Landroid/tracing/perfetto/DataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    return-void
.end method
