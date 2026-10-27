.class public Lcom/android/server/content/SyncLogger;
.super Ljava/lang/Object;
.source "SyncLogger.java"


# static fields
.field public static sInstance:Lcom/android/server/content/SyncLogger;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/content/SyncLogger;
    .registers 2

    const-class v0, Lcom/android/server/content/SyncLogger;

    monitor-enter v0

    .line 75
    :try_start_3
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    if-nez v1, :cond_11

    .line 89
    new-instance v1, Lcom/android/server/content/SyncLogger;

    invoke-direct {v1}, Lcom/android/server/content/SyncLogger;-><init>()V

    sput-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 91
    :cond_11
    :goto_11
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method

.method public static logSafe(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    .line 321
    const-string p0, "[null]"

    return-object p0

    :cond_5
    invoke-virtual {p0}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logSafe(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    .line 333
    const-string p0, "[null]"

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toSafeString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    .line 329
    const-string p0, "[null]"

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->toSafeString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logSafe(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    .line 325
    const-string p0, "[null]"

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->toSafeString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    return-void
.end method

.method public enabled()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .registers 2

    .line 109
    const-string p0, ""

    return-object p0
.end method

.method public varargs log([Ljava/lang/Object;)V
    .registers 2

    .line 0
    return-void
.end method

.method public purgeOldLogs()V
    .registers 1

    .line 0
    return-void
.end method
