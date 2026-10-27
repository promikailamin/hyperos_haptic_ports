.class public final Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;
.super Ljava/lang/Object;
.source "AppFunctionAgentAllowlistStorage.java"


# instance fields
.field public final mAllowlistStorageLock:Ljava/lang/Object;

.field public final mAtomicFile:Landroid/util/AtomicFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;->mAllowlistStorageLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;->mAtomicFile:Landroid/util/AtomicFile;

    return-void
.end method


# virtual methods
.method public readPreviousValidAllowlist()Ljava/util/List;
    .registers 6

    .line 61
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;->mAllowlistStorageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 63
    const-string p0, "AppFunctionAgentAllowlistStorage"

    const-string v1, "Allowlist file does not exist."

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return-object v2

    :catchall_15
    move-exception p0

    goto :goto_39

    .line 68
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v1

    .line 69
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 70
    invoke-static {v3}, Lcom/android/server/appfunctions/SignedPackageParser;->parseList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_28} :catch_2a
    .catchall {:try_start_17 .. :try_end_28} :catchall_15

    :try_start_28
    monitor-exit v0

    return-object p0

    :catch_2a
    move-exception v1

    .line 72
    const-string v3, "AppFunctionAgentAllowlistStorage"

    const-string v4, "Error reading or parsing allowlist file"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    .line 74
    monitor-exit v0

    return-object v2

    .line 76
    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_15

    throw p0
.end method

.method public writeCurrentAllowlist(Ljava/lang/String;)V
    .registers 6

    .line 88
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;->mAllowlistStorageLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 91
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 92
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 93
    iget-object p1, p0, Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_18} :catch_1b
    .catchall {:try_start_4 .. :try_end_18} :catchall_19

    goto :goto_2a

    :catchall_19
    move-exception p0

    goto :goto_2c

    :catch_1b
    move-exception p1

    .line 95
    :try_start_1c
    const-string v2, "AppFunctionAgentAllowlistStorage"

    const-string v3, "Error writing allowlist file"

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_2a

    .line 97
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 100
    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_19

    throw p0
.end method
