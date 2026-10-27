.class public Lcom/android/server/tracing/TracingServiceProxy;
.super Lcom/android/server/SystemService;
.source "TracingServiceProxy.java"


# static fields
.field private static final INTENT_ACTION_NOTIFY_SESSION_STOLEN:Ljava/lang/String; = "com.android.traceur.NOTIFY_SESSION_STOLEN"

.field private static final INTENT_ACTION_NOTIFY_SESSION_STOPPED:Ljava/lang/String; = "com.android.traceur.NOTIFY_SESSION_STOPPED"

.field private static final MAX_CACHED_REPORTER_SERVICES:I = 0x8

.field private static final MAX_FILE_SIZE_BYTES_TO_PIPE:I = 0x400

.field private static final REPORT_BEGIN:I = 0x1

.field private static final REPORT_BIND_PERM_INCORRECT:I = 0x3

.field private static final REPORT_SVC_COMM_ERROR:I = 0x5

.field private static final REPORT_SVC_HANDOFF:I = 0x2

.field private static final REPORT_SVC_PERM_MISSING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TracingServiceProxy"

.field private static final TRACING_APP_ACTIVITY:Ljava/lang/String; = "com.android.traceur.StopTraceService"

.field private static final TRACING_APP_PACKAGE_NAME:Ljava/lang/String; = "com.android.traceur"

.field public static final TRACING_SERVICE_PROXY_BINDER_NAME:Ljava/lang/String; = "tracing.proxy"


# instance fields
.field private final mCachedReporterServices:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/os/IMessenger;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTracingServiceProxy:Landroid/tracing/ITracingServiceProxy$Stub;


# direct methods
.method static bridge synthetic -$$Nest$mnotifyTraceur(Lcom/android/server/tracing/TracingServiceProxy;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tracing/TracingServiceProxy;->notifyTraceur(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportTrace(Lcom/android/server/tracing/TracingServiceProxy;Landroid/tracing/TraceReportParams;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tracing/TracingServiceProxy;->reportTrace(Landroid/tracing/TraceReportParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Lcom/android/server/tracing/TracingServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/tracing/TracingServiceProxy$1;-><init>(Lcom/android/server/tracing/TracingServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mTracingServiceProxy:Landroid/tracing/ITracingServiceProxy$Stub;

    .line 116
    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 118
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mCachedReporterServices:Landroid/util/LruCache;

    .line 119
    return-void
.end method

.method private getOrCreateReporterService(Landroid/content/ComponentName;)Lcom/android/internal/infra/ServiceConnector;
    .registers 12
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/os/IMessenger;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mCachedReporterServices:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector;

    .line 226
    .local v0, "connector":Lcom/android/internal/infra/ServiceConnector;, "Lcom/android/internal/infra/ServiceConnector<Landroid/os/IMessenger;>;"
    if-nez v0, :cond_35

    .line 227
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 229
    new-instance v9, Lcom/android/server/tracing/TracingServiceProxy$2;

    iget-object v4, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    const/16 v6, 0x21

    .line 232
    invoke-virtual {v4}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    new-instance v8, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda2;-><init>()V

    move-object v2, v9

    move-object v3, p0

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/tracing/TracingServiceProxy$2;-><init>(Lcom/android/server/tracing/TracingServiceProxy;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    move-object v0, v9

    .line 246
    iget-object v2, p0, Lcom/android/server/tracing/TracingServiceProxy;->mCachedReporterServices:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_35
    return-object v0
.end method

.method private hasBindServicePermission(Landroid/content/ComponentName;)Z
    .registers 8
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 266
    const-string v0, "Trace reporting service "

    const-string v1, "TracingServiceProxy"

    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_b} :catch_47

    .line 271
    .local v3, "info":Landroid/content/pm/ServiceInfo;
    nop

    .line 272
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v5, "android.permission.BIND_TRACE_REPORT_SERVICE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 274
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " does not request "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " permission; instead requests "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v2

    .line 279
    :cond_45
    const/4 v0, 0x1

    return v0

    .line 267
    .end local v3    # "info":Landroid/content/pm/ServiceInfo;
    :catch_47
    move-exception v3

    .line 268
    .local v3, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " does not exist"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return v2
.end method

.method private hasPermission(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3a

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trace reporting service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v1, "TracingServiceProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x0

    return v0

    .line 260
    :cond_3a
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$reportTrace$0(Landroid/tracing/TraceReportParams;Landroid/os/IMessenger;)V
    .registers 10
    .param p0, "params"    # Landroid/tracing/TraceReportParams;
    .param p1, "messenger"    # Landroid/os/IMessenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    iget-boolean v0, p0, Landroid/tracing/TraceReportParams;->usePipeForTesting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4b

    .line 189
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 190
    .local v0, "pipe":[Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v3, p0, Landroid/tracing/TraceReportParams;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 191
    .local v2, "i":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :try_start_10
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_41

    .line 192
    .local v3, "o":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    const/16 v4, 0x400

    :try_start_19
    invoke-virtual {v2, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->readNBytes(I)[B

    move-result-object v5

    .line 193
    .local v5, "array":[B
    array-length v6, v5

    if-eq v6, v4, :cond_2f

    .line 197
    invoke-virtual {v3, v5}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_37

    .line 198
    .end local v5    # "array":[B
    :try_start_23
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_41

    .line 199
    .end local v3    # "o":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    .line 200
    .end local v2    # "i":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Landroid/tracing/TraceReportParams;->fd:Landroid/os/ParcelFileDescriptor;

    goto :goto_4b

    .line 194
    .restart local v2    # "i":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .restart local v3    # "o":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .restart local v5    # "array":[B
    :cond_2f
    :try_start_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trace file too large when |usePipeForTesting| is set."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v2    # "i":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .end local v3    # "o":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .end local p0    # "params":Landroid/tracing/TraceReportParams;
    .end local p1    # "messenger":Landroid/os/IMessenger;
    throw v1
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    .line 191
    .end local v5    # "array":[B
    .restart local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "i":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .restart local v3    # "o":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .restart local p0    # "params":Landroid/tracing/TraceReportParams;
    .restart local p1    # "messenger":Landroid/os/IMessenger;
    :catchall_37
    move-exception v1

    :try_start_38
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v4

    :try_start_3d
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v2    # "i":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .end local p0    # "params":Landroid/tracing/TraceReportParams;
    .end local p1    # "messenger":Landroid/os/IMessenger;
    :goto_40
    throw v1
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_41

    .line 190
    .end local v3    # "o":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .restart local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "i":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .restart local p0    # "params":Landroid/tracing/TraceReportParams;
    .restart local p1    # "messenger":Landroid/os/IMessenger;
    :catchall_41
    move-exception v1

    :try_start_42
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4a
    throw v1

    .line 203
    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v2    # "i":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :cond_4b
    :goto_4b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 204
    .local v0, "message":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 205
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 206
    invoke-interface {p1, v0}, Landroid/os/IMessenger;->send(Landroid/os/Message;)V

    .line 208
    const/16 v2, 0x1a8

    const/4 v3, 0x2

    iget-wide v4, p0, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v6, p0, Landroid/tracing/TraceReportParams;->uuidMsb:J

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 210
    return-void
.end method

.method static synthetic lambda$reportTrace$1(Landroid/tracing/TraceReportParams;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 9
    .param p0, "params"    # Landroid/tracing/TraceReportParams;
    .param p1, "res"    # Ljava/lang/Void;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 211
    if-eqz p2, :cond_13

    .line 212
    const/16 v0, 0x1a8

    const/4 v1, 0x5

    iget-wide v2, p0, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v4, p0, Landroid/tracing/TraceReportParams;->uuidMsb:J

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 214
    const-string v0, "TracingServiceProxy"

    const-string v1, "Failed to report trace"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    :cond_13
    :try_start_13
    iget-object v0, p0, Landroid/tracing/TraceReportParams;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_19

    .line 219
    goto :goto_1a

    .line 218
    :catch_19
    move-exception v0

    .line 220
    :goto_1a
    return-void
.end method

.method private notifyTraceur(Z)V
    .registers 9
    .param p1, "sessionStolen"    # Z

    .line 127
    const-string v0, "TracingServiceProxy"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v1, "intent":Landroid/content/Intent;
    :try_start_7
    iget-object v2, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "com.android.traceur"

    const/high16 v4, 0x100000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 134
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.traceur.StopTraceService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    if-eqz p1, :cond_20

    .line 136
    const-string v3, "com.android.traceur.NOTIFY_SESSION_STOLEN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_25

    .line 138
    :cond_20
    const-string v3, "com.android.traceur.NOTIFY_SESSION_STOPPED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :goto_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_29} :catch_43

    .line 143
    .local v3, "identity":J
    :try_start_29
    iget-object v5, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_30} :catch_36
    .catchall {:try_start_29 .. :try_end_30} :catchall_34

    .line 147
    :goto_30
    :try_start_30
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_33} :catch_43

    .line 148
    goto :goto_3d

    .line 147
    :catchall_34
    move-exception v5

    goto :goto_3e

    .line 144
    :catch_36
    move-exception v5

    .line 145
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_37
    const-string v6, "Failed to notifyTraceSessionEnded"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_34

    goto :goto_30

    .line 152
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "identity":J
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :goto_3d
    goto :goto_49

    .line 147
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "identity":J
    :goto_3e
    :try_start_3e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    nop

    .end local v1    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/tracing/TracingServiceProxy;
    .end local p1    # "sessionStolen":Z
    throw v5
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_43} :catch_43

    .line 150
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "identity":J
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local p0    # "this":Lcom/android/server/tracing/TracingServiceProxy;
    .restart local p1    # "sessionStolen":Z
    :catch_43
    move-exception v2

    .line 151
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Failed to locate Traceur"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_49
    return-void
.end method

.method private reportTrace(Landroid/tracing/TraceReportParams;)V
    .registers 14
    .param p1, "params"    # Landroid/tracing/TraceReportParams;

    .line 156
    iget-wide v2, p1, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v4, p1, Landroid/tracing/TraceReportParams;->uuidMsb:J

    const/16 v0, 0x1a8

    const/4 v1, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 161
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/tracing/TraceReportParams;->reporterPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/tracing/TraceReportParams;->reporterClassName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .local v0, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/server/tracing/TracingServiceProxy;->hasBindServicePermission(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 164
    const/16 v2, 0x1a8

    const/4 v3, 0x3

    iget-wide v4, p1, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v6, p1, Landroid/tracing/TraceReportParams;->uuidMsb:J

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 166
    return-void

    .line 168
    :cond_24
    const-string v1, "android.permission.DUMP"

    invoke-direct {p0, v0, v1}, Lcom/android/server/tracing/TracingServiceProxy;->hasPermission(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    .line 169
    .local v1, "hasDumpPermission":Z
    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-direct {p0, v0, v2}, Lcom/android/server/tracing/TracingServiceProxy;->hasPermission(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2

    .line 171
    .local v2, "hasUsageStatsPermission":Z
    if-eqz v1, :cond_4a

    if-nez v2, :cond_35

    goto :goto_4a

    .line 176
    :cond_35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 178
    .local v3, "ident":J
    :try_start_39
    invoke-direct {p0, v0}, Lcom/android/server/tracing/TracingServiceProxy;->getOrCreateReporterService(Landroid/content/ComponentName;)Lcom/android/internal/infra/ServiceConnector;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/android/server/tracing/TracingServiceProxy;->reportTrace(Lcom/android/internal/infra/ServiceConnector;Landroid/tracing/TraceReportParams;)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_45

    .line 180
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    nop

    .line 182
    return-void

    .line 180
    :catchall_45
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    throw v5

    .line 172
    .end local v3    # "ident":J
    :cond_4a
    :goto_4a
    const/16 v6, 0x1a8

    const/4 v7, 0x4

    iget-wide v8, p1, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v10, p1, Landroid/tracing/TraceReportParams;->uuidMsb:J

    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 174
    return-void
.end method

.method private reportTrace(Lcom/android/internal/infra/ServiceConnector;Landroid/tracing/TraceReportParams;)V
    .registers 5
    .param p2, "params"    # Landroid/tracing/TraceReportParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/os/IMessenger;",
            ">;",
            "Landroid/tracing/TraceReportParams;",
            ")V"
        }
    .end annotation

    .line 187
    .local p1, "reporterService":Lcom/android/internal/infra/ServiceConnector;, "Lcom/android/internal/infra/ServiceConnector<Landroid/os/IMessenger;>;"
    new-instance v0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda0;-><init>(Landroid/tracing/TraceReportParams;)V

    invoke-interface {p1, v0}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;-><init>(Landroid/tracing/TraceReportParams;)V

    .line 210
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 221
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mTracingServiceProxy:Landroid/tracing/ITracingServiceProxy$Stub;

    const-string/jumbo v1, "tracing.proxy"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tracing/TracingServiceProxy;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 124
    return-void
.end method
