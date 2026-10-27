.class public final Lcom/android/server/graphics/fonts/FontManagerService;
.super Lcom/android/internal/graphics/fonts/IFontManager$Stub;
.source "FontManagerService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDebugCertFilePath:Ljava/lang/String;

.field public final mIsSafeMode:Z

.field public mSerializedFontMap:Landroid/os/SharedMemory;

.field public final mSerializedFontMapLock:Ljava/lang/Object;

.field public mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

.field public final mUpdatableFontDirLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$6ntzwgOp0lINWCpV58rCsi7uat4(Lcom/android/server/graphics/fonts/FontManagerService;Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerService;->lambda$new$0(Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/util/concurrent/CompletableFuture;)V
    .registers 8

    .line 241
    invoke-direct {p0}, Lcom/android/internal/graphics/fonts/IFontManager$Stub;-><init>()V

    .line 224
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mDebugCertFilePath:Ljava/lang/String;

    .line 234
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    .line 236
    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    .line 242
    const-string v0, "FontManagerService"

    if-eqz p2, :cond_30

    .line 243
    const-string v1, "Entering safe mode. Deleting all font updates."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/fonts/files"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/fonts/config/config.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->deleteAllFiles(Ljava/io/File;Ljava/io/File;)V

    .line 246
    :cond_30
    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    .line 247
    iput-boolean p2, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mIsSafeMode:Z

    .line 250
    const-string p1, "Using optimized boot-time font loading."

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3}, Lcom/android/server/graphics/fonts/FontManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/graphics/fonts/FontManagerService;Ljava/util/concurrent/CompletableFuture;)V

    const-string p0, "FontManagerService_create"

    invoke-static {p1, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZLjava/util/concurrent/CompletableFuture;Lcom/android/server/graphics/fonts/FontManagerService-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/graphics/fonts/FontManagerService;-><init>(Landroid/content/Context;ZLjava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public static closeFileDescriptors(Ljava/util/List;)V
    .registers 4

    if-nez p0, :cond_3

    goto :goto_2a

    .line 108
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/FontUpdateRequest;

    if-nez v0, :cond_16

    goto :goto_7

    .line 110
    :cond_16
    invoke-virtual {v0}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_1d

    goto :goto_7

    .line 113
    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_7

    :catch_21
    move-exception v0

    .line 115
    const-string v1, "FontManagerService"

    const-string v2, "Failed to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_2a
    :goto_2a
    return-void
.end method

.method public static serializeFontMap(Landroid/text/FontConfig;)Landroid/os/SharedMemory;
    .registers 4

    .line 431
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 434
    :try_start_5
    invoke-static {p0, v0}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;Landroid/util/ArrayMap;)Ljava/util/Map;

    move-result-object v1

    .line 436
    invoke-static {p0, v1}, Landroid/graphics/fonts/SystemFonts;->buildSystemTypefaces(Landroid/text/FontConfig;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 437
    invoke-static {p0}, Landroid/graphics/Typeface;->serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;

    move-result-object p0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_30
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_11} :catch_30
    .catchall {:try_start_5 .. :try_end_11} :catchall_2e

    .line 445
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 446
    instance-of v2, v1, Ljava/nio/DirectByteBuffer;

    if-eqz v2, :cond_19

    .line 447
    invoke-static {v1}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_19

    :cond_2d
    return-object p0

    :catchall_2e
    move-exception p0

    goto :goto_56

    :catch_30
    move-exception p0

    .line 439
    :try_start_31
    const-string v1, "FontManagerService"

    const-string v2, "Failed to serialize updatable font map. Retrying with system image fonts."

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2e

    .line 445
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_40
    :goto_40
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 446
    instance-of v1, v0, Ljava/nio/DirectByteBuffer;

    if-eqz v1, :cond_40

    .line 447
    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_40

    :cond_54
    const/4 p0, 0x0

    return-object p0

    .line 445
    :goto_56
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5e
    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 446
    instance-of v2, v1, Ljava/nio/DirectByteBuffer;

    if-eqz v2, :cond_5e

    .line 447
    invoke-static {v1}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_5e

    .line 450
    :cond_72
    throw p0
.end method

.method public static serializeSystemServerFontMap()Landroid/os/SharedMemory;
    .registers 3

    .line 456
    :try_start_0
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 458
    const-string v1, "FontManagerService"

    const-string v2, "Failed to serialize SystemServer system font map"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addDebugCertificate(Ljava/lang/String;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mDebugCertFilePath:Ljava/lang/String;

    return-void
.end method

.method public clearUpdates()V
    .registers 4

    .line 365
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/fonts/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/fonts/config/config.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->deleteAllFiles(Ljava/io/File;Ljava/io/File;)V

    .line 366
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->initialize()V

    return-void
.end method

.method public final createUpdatableFontDir()Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .registers 6

    .line 283
    iget-boolean v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mIsSafeMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 285
    :cond_6
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    move-result v0

    if-nez v0, :cond_d

    return-object v1

    .line 287
    :cond_d
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mDebugCertFilePath:Ljava/lang/String;

    if-eqz v1, :cond_32

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_32

    .line 291
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 292
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    array-length v0, v0

    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mDebugCertFilePath:Ljava/lang/String;

    aput-object p0, v1, v0

    move-object v0, v1

    .line 297
    :cond_32
    new-instance p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/fonts/files"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/graphics/fonts/OtfFontFileParser;

    invoke-direct {v2}, Lcom/android/server/graphics/fonts/OtfFontFileParser;-><init>()V

    new-instance v3, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;

    invoke-direct {v3, v0}, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;-><init>([Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v4, "/data/fonts/config/config.xml"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;-><init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;)V

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 391
    iget-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    const-string p3, "FontManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 392
    :cond_b
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerShellCommand;

    invoke-direct {p1, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;-><init>(Lcom/android/server/graphics/fonts/FontManagerService;)V

    new-instance p0, Landroid/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p0, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpAll(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 329
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentFontMap()Landroid/os/SharedMemory;
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_3
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 335
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getFontConfig()Landroid/text/FontConfig;
    .registers 1

    .line 79
    invoke-super {p0}, Lcom/android/internal/graphics/fonts/IFontManager$Stub;->getFontConfig_enforcePermission()V

    .line 81
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object p0

    return-object p0
.end method

.method public getFontFileMap()Ljava/util/Map;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_3
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-nez p0, :cond_d

    .line 382
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    goto :goto_13

    .line 384
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getPostScriptMap()Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 385
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_b

    throw p0
.end method

.method public getSystemFontConfig()Landroid/text/FontConfig;
    .registers 2

    .line 409
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_3
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-nez p0, :cond_f

    .line 411
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemPreinstalledFontConfig()Landroid/text/FontConfig;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    goto :goto_15

    .line 413
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 414
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_d

    throw p0
.end method

.method public final initialize()V
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->createUpdatableFontDir()Lcom/android/server/graphics/fonts/UpdatableFontDir;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-nez v1, :cond_19

    .line 317
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    .line 319
    invoke-static {}, Lcom/android/server/graphics/fonts/FontManagerService;->serializeSystemServerFontMap()Landroid/os/SharedMemory;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/graphics/fonts/FontManagerService;->setSerializedFontMap(Landroid/os/SharedMemory;)V

    .line 320
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    goto :goto_21

    .line 322
    :cond_19
    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->loadFontFileMap()V

    .line 323
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->updateSerializedFontMap()V

    .line 324
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_17

    throw p0
.end method

.method public final synthetic lambda$new$0(Ljava/util/concurrent/CompletableFuture;)V
    .registers 4

    .line 252
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->initialize()V

    .line 257
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_6
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-eqz v1, :cond_10

    .line 259
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->setSystemFontMap()V

    goto :goto_10

    :catchall_e
    move-exception p0

    goto :goto_16

    .line 261
    :cond_10
    :goto_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_e

    const/4 p0, 0x0

    .line 262
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 261
    :goto_16
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_e

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 402
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;-><init>(Lcom/android/server/graphics/fonts/FontManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public restart()V
    .registers 1

    .line 376
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->initialize()V

    return-void
.end method

.method public final setSerializedFontMap(Landroid/os/SharedMemory;)V
    .registers 4

    .line 465
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_3
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    .line 467
    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    .line 468
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_e

    if-eqz v1, :cond_d

    .line 470
    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    :cond_d
    return-void

    :catchall_e
    move-exception p0

    .line 468
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final setSystemFontMap()V
    .registers 2

    .line 274
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getCurrentFontMap()Landroid/os/SharedMemory;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->setSystemFontMap(Landroid/os/SharedMemory;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    .line 276
    :catch_8
    const-string p0, "FontManagerService"

    const-string v0, "Failed to set system font map of system_server"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public update(ILjava/util/List;)V
    .registers 6

    .line 340
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_3
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-eqz v1, :cond_26

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1c

    .line 348
    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getConfigVersion()I

    move-result v1

    if-ne v1, p1, :cond_11

    goto :goto_1c

    .line 349
    :cond_11
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p1, "The base config version is older than current."

    const/4 p2, -0x8

    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_1a
    move-exception p0

    goto :goto_2f

    .line 353
    :cond_1c
    :goto_1c
    iget-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    invoke-virtual {p1, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->update(Ljava/util/List;)V

    .line 354
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->updateSerializedFontMap()V

    .line 355
    monitor-exit v0

    return-void

    .line 342
    :cond_26
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p1, "The font updater is disabled."

    const/4 p2, -0x7

    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 355
    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_1a

    throw p0
.end method

.method public updateFontFamily(Ljava/util/List;I)I
    .registers 6

    .line 88
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 89
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.UPDATE_FONTS"

    const-string v2, "UPDATE_FONTS permission required."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_19

    .line 93
    :try_start_11
    invoke-virtual {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService;->update(ILjava/util/List;)V
    :try_end_14
    .catch Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException; {:try_start_11 .. :try_end_14} :catch_1b
    .catchall {:try_start_11 .. :try_end_14} :catchall_19

    .line 100
    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    const/4 p0, 0x0

    return p0

    :catchall_19
    move-exception p0

    goto :goto_2b

    :catch_1b
    move-exception p0

    .line 96
    :try_start_1c
    const-string p2, "FontManagerService"

    const-string v0, "Failed to update font family"

    invoke-static {p2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->getErrorCode()I

    move-result p0
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_19

    .line 100
    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    return p0

    :goto_2b
    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    .line 101
    throw p0
.end method

.method public final updateSerializedFontMap()V
    .registers 2

    .line 421
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/graphics/fonts/FontManagerService;->serializeFontMap(Landroid/text/FontConfig;)Landroid/os/SharedMemory;

    move-result-object v0

    if-nez v0, :cond_e

    .line 424
    invoke-static {}, Lcom/android/server/graphics/fonts/FontManagerService;->serializeSystemServerFontMap()Landroid/os/SharedMemory;

    move-result-object v0

    .line 426
    :cond_e
    invoke-virtual {p0, v0}, Lcom/android/server/graphics/fonts/FontManagerService;->setSerializedFontMap(Landroid/os/SharedMemory;)V

    return-void
.end method
