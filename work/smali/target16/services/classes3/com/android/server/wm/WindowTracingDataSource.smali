.class public final Lcom/android/server/wm/WindowTracingDataSource;
.super Landroid/tracing/perfetto/DataSource;
.source "WindowTracingDataSource.java"


# static fields
.field public static final CONFIG_DEFAULT:Lcom/android/server/wm/WindowTracingDataSource$Config;


# instance fields
.field public final mWindowTracing:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 110
    new-instance v0, Lcom/android/server/wm/WindowTracingDataSource$Config;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/wm/WindowTracingDataSource$Config;-><init>(IILcom/android/server/wm/WindowTracingDataSource-IA;)V

    sput-object v0, Lcom/android/server/wm/WindowTracingDataSource;->CONFIG_DEFAULT:Lcom/android/server/wm/WindowTracingDataSource$Config;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowTracingPerfetto;Ljava/lang/String;)V
    .registers 3

    .line 119
    invoke-direct {p0, p2}, Landroid/tracing/perfetto/DataSource;-><init>(Ljava/lang/String;)V

    .line 120
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/server/wm/WindowTracingDataSource;->mWindowTracing:Ljava/lang/ref/WeakReference;

    .line 122
    sget-object p1, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    invoke-static {p1}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 123
    new-instance p1, Landroid/tracing/perfetto/DataSourceParams$Builder;

    invoke-direct {p1}, Landroid/tracing/perfetto/DataSourceParams$Builder;-><init>()V

    const/4 p2, 0x2

    .line 125
    invoke-virtual {p1, p2}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setBufferExhaustedPolicy(I)Landroid/tracing/perfetto/DataSourceParams$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 127
    invoke-virtual {p1, p2}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setPostponeStop(Z)Landroid/tracing/perfetto/DataSourceParams$Builder;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/tracing/perfetto/DataSourceParams$Builder;->build()Landroid/tracing/perfetto/DataSourceParams;

    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Landroid/tracing/perfetto/DataSource;->register(Landroid/tracing/perfetto/DataSourceParams;)V

    .line 130
    const-string p0, "WindowTracingDataSource"

    const-string p1, "Registered with perfetto service"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic createInstance(Landroid/util/proto/ProtoInputStream;I)Landroid/tracing/perfetto/DataSourceInstance;
    .registers 3

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowTracingDataSource;->createInstance(Landroid/util/proto/ProtoInputStream;I)Lcom/android/server/wm/WindowTracingDataSource$Instance;

    move-result-object p0

    return-object p0
.end method

.method public createInstance(Landroid/util/proto/ProtoInputStream;I)Lcom/android/server/wm/WindowTracingDataSource$Instance;
    .registers 5

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracingDataSource;->parseDataSourceConfig(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/wm/WindowTracingDataSource$Config;

    move-result-object p1

    .line 137
    new-instance v0, Lcom/android/server/wm/WindowTracingDataSource$Instance;

    if-eqz p1, :cond_9

    goto :goto_b

    .line 139
    :cond_9
    sget-object p1, Lcom/android/server/wm/WindowTracingDataSource;->CONFIG_DEFAULT:Lcom/android/server/wm/WindowTracingDataSource$Config;

    :goto_b
    iget-object v1, p0, Lcom/android/server/wm/WindowTracingDataSource;->mWindowTracing:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/server/wm/WindowTracingDataSource$Instance;-><init>(Landroid/tracing/perfetto/DataSource;ILcom/android/server/wm/WindowTracingDataSource$Config;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Lcom/android/server/wm/WindowTracingDataSource$TlsState;
    .registers 6

    .line 145
    invoke-virtual {p1}, Landroid/tracing/perfetto/CreateTlsStateArgs;->getDataSourceInstanceLocked()Landroid/tracing/perfetto/DataSourceInstance;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowTracingDataSource$Instance;

    const/4 p1, 0x0

    if-nez p0, :cond_1e

    .line 148
    :try_start_9
    new-instance v0, Lcom/android/server/wm/WindowTracingDataSource$TlsState;

    sget-object v1, Lcom/android/server/wm/WindowTracingDataSource;->CONFIG_DEFAULT:Lcom/android/server/wm/WindowTracingDataSource$Config;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/wm/WindowTracingDataSource$TlsState;-><init>(Lcom/android/server/wm/WindowTracingDataSource$Config;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/wm/WindowTracingDataSource-IA;)V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_1c

    if-eqz p0, :cond_1b

    .line 151
    invoke-virtual {p0}, Landroid/tracing/perfetto/DataSourceInstance;->close()V

    :cond_1b
    return-object v0

    :catchall_1c
    move-exception p1

    goto :goto_2b

    .line 150
    :cond_1e
    :try_start_1e
    new-instance v0, Lcom/android/server/wm/WindowTracingDataSource$TlsState;

    iget-object v1, p0, Lcom/android/server/wm/WindowTracingDataSource$Instance;->mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracingDataSource$Instance;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/wm/WindowTracingDataSource$TlsState;-><init>(Lcom/android/server/wm/WindowTracingDataSource$Config;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/wm/WindowTracingDataSource-IA;)V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_1c

    .line 151
    invoke-virtual {p0}, Landroid/tracing/perfetto/DataSourceInstance;->close()V

    return-object v0

    :goto_2b
    if-eqz p0, :cond_35

    .line 145
    :try_start_2d
    invoke-virtual {p0}, Landroid/tracing/perfetto/DataSourceInstance;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    throw p1
.end method

.method public bridge synthetic createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Ljava/lang/Object;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracingDataSource;->createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Lcom/android/server/wm/WindowTracingDataSource$TlsState;

    move-result-object p0

    return-object p0
.end method

.method public final parseDataSourceConfig(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/wm/WindowTracingDataSource$Config;
    .registers 4

    .line 156
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 157
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    const/16 v1, 0x82

    if-eq v0, v1, :cond_10

    goto :goto_0

    .line 160
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracingDataSource;->parseWindowManagerConfig(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/wm/WindowTracingDataSource$Config;

    move-result-object p0

    return-object p0

    .line 162
    :cond_15
    const-string p0, "WindowTracingDataSource"

    const-string p1, "Received start request without config parameters. Will use defaults."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1e

    const/4 p0, 0x0

    return-object p0

    :catch_1e
    move-exception p0

    .line 164
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to parse DataSourceConfig"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final parseWindowManagerConfig(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/wm/WindowTracingDataSource$Config;
    .registers 11

    const-wide v0, 0x10b00000082L

    .line 174
    :try_start_5
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    const/4 p0, 0x0

    move v2, p0

    move v3, v2

    .line 175
    :goto_c
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_87

    const/4 v5, -0x1

    const-string v6, "WindowTracingDataSource"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v4, v5, :cond_4c

    .line 176
    :try_start_17
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    if-eq v4, v8, :cond_42

    if-eq v4, v7, :cond_38

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized WindowManagerConfig field number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_38
    const-wide v4, 0x10e00000002L

    .line 178
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    goto :goto_c

    :cond_42
    const-wide v3, 0x10e00000001L

    .line 181
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    goto :goto_c

    .line 188
    :cond_4c
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_4f} :catch_87

    const/4 p1, 0x3

    if-eqz v2, :cond_63

    if-eq v2, v8, :cond_61

    if-eq v2, v7, :cond_5d

    if-eq v2, p1, :cond_5f

    .line 209
    const-string v0, "Unrecognized log level. Defaulting to TRIM"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    :goto_5d
    move v0, v8

    goto :goto_69

    :cond_5f
    move v0, v7

    goto :goto_69

    :cond_61
    move v0, p0

    goto :goto_69

    .line 196
    :cond_63
    const-string v0, "Unspecified log level. Defaulting to TRIM"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    :goto_69
    if-eqz v3, :cond_7b

    if-eq v3, v8, :cond_80

    if-eq v3, v7, :cond_79

    if-eq v3, p1, :cond_77

    .line 230
    const-string p1, "Unrecognized log frequency. Defaulting to \'frame\'"

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    :cond_77
    move p0, v7

    goto :goto_80

    :cond_79
    move p0, v8

    goto :goto_80

    .line 217
    :cond_7b
    const-string p1, "Unspecified log frequency. Defaulting to \'frame\'"

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_80
    :goto_80
    new-instance p1, Lcom/android/server/wm/WindowTracingDataSource$Config;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/android/server/wm/WindowTracingDataSource$Config;-><init>(IILcom/android/server/wm/WindowTracingDataSource-IA;)V

    return-object p1

    :catch_87
    move-exception p0

    .line 190
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to parse WindowManagerConfig"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
