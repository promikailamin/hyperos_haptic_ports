.class public final Lcom/android/server/graphics/fonts/FontManagerService;
.super Lcom/android/internal/graphics/fonts/IFontManager$Stub;
.source "FontManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;,
        Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;,
        Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
    }
.end annotation


# static fields
.field private static final CONFIG_XML_FILE:Ljava/lang/String; = "/data/fonts/config/config.xml"

.field private static final FONT_FILES_DIR:Ljava/lang/String; = "/data/fonts/files"

.field private static final TAG:Ljava/lang/String; = "FontManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSerializedFontMap:Landroid/os/SharedMemory;

.field private final mSerializedFontMapLock:Ljava/lang/Object;

.field private final mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

.field private final mUpdatableFontDirLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "safeMode"    # Z

    .line 191
    invoke-direct {p0}, Lcom/android/internal/graphics/fonts/IFontManager$Stub;-><init>()V

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    .line 192
    if-eqz p2, :cond_2e

    .line 193
    const-string v0, "FontManagerService"

    const-string v1, "Entering safe mode. Deleting all font updates."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/fonts/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/fonts/config/config.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->deleteAllFiles(Ljava/io/File;Ljava/io/File;)V

    .line 196
    :cond_2e
    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    .line 197
    invoke-static {p2}, Lcom/android/server/graphics/fonts/FontManagerService;->createUpdatableFontDir(Z)Lcom/android/server/graphics/fonts/UpdatableFontDir;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    .line 198
    invoke-direct {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->initialize()V

    .line 199
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ZLcom/android/server/graphics/fonts/FontManagerService-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/graphics/fonts/FontManagerService;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method private static closeFileDescriptors(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p0, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    if-nez p0, :cond_3

    return-void

    .line 99
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/FontUpdateRequest;

    .line 100
    .local v1, "request":Landroid/graphics/fonts/FontUpdateRequest;
    if-nez v1, :cond_16

    goto :goto_7

    .line 101
    :cond_16
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 102
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_1d

    goto :goto_7

    .line 104
    :cond_1d
    :try_start_1d
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    .line 107
    goto :goto_29

    .line 105
    :catch_21
    move-exception v3

    .line 106
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "FontManagerService"

    const-string v5, "Failed to close fd"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v1    # "request":Landroid/graphics/fonts/FontUpdateRequest;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_29
    goto :goto_7

    .line 109
    :cond_2a
    return-void
.end method

.method private static createUpdatableFontDir(Z)Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .registers 7
    .param p0, "safeMode"    # Z

    .line 204
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    return-object v0

    .line 206
    :cond_4
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    .line 207
    :cond_b
    new-instance v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/fonts/files"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/graphics/fonts/OtfFontFileParser;

    invoke-direct {v3}, Lcom/android/server/graphics/fonts/OtfFontFileParser;-><init>()V

    new-instance v4, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;

    invoke-direct {v4, v0}, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;-><init>(Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl-IA;)V

    new-instance v0, Ljava/io/File;

    const-string v5, "/data/fonts/config/config.xml"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;-><init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;)V

    return-object v1
.end method

.method private initialize()V
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-nez v1, :cond_10

    .line 214
    invoke-static {}, Lcom/android/server/graphics/fonts/FontManagerService;->serializeSystemServerFontMap()Landroid/os/SharedMemory;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/graphics/fonts/FontManagerService;->setSerializedFontMap(Landroid/os/SharedMemory;)V

    .line 215
    monitor-exit v0

    return-void

    .line 217
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->loadFontFileMap()V

    .line 218
    invoke-direct {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->updateSerializedFontMap()V

    .line 219
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private static serializeFontMap(Landroid/text/FontConfig;)Landroid/os/SharedMemory;
    .registers 8
    .param p0, "fontConfig"    # Landroid/text/FontConfig;

    .line 326
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 328
    .local v0, "bufferCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    nop

    .line 329
    :try_start_6
    invoke-static {p0, v0}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;Landroid/util/ArrayMap;)Ljava/util/Map;

    move-result-object v1

    .line 330
    .local v1, "fallback":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    nop

    .line 331
    invoke-static {p0, v1}, Landroid/graphics/fonts/SystemFonts;->buildSystemTypefaces(Landroid/text/FontConfig;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 332
    .local v2, "typefaceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-static {v2}, Landroid/graphics/Typeface;->serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;

    move-result-object v3
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_13} :catch_32
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_13} :catch_32
    .catchall {:try_start_6 .. :try_end_13} :catchall_30

    .line 340
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 341
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    instance-of v6, v5, Ljava/nio/DirectByteBuffer;

    if-eqz v6, :cond_2e

    .line 342
    invoke-static {v5}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 344
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    :cond_2e
    goto :goto_1b

    .line 332
    :cond_2f
    return-object v3

    .line 340
    .end local v1    # "fallback":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    .end local v2    # "typefaceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catchall_30
    move-exception v1

    goto :goto_58

    .line 333
    :catch_32
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Exception;
    :try_start_33
    const-string v2, "FontManagerService"

    const-string v3, "Failed to serialize updatable font map. Retrying with system image fonts."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_30

    .line 336
    const/4 v2, 0x0

    .line 340
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 341
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    instance-of v5, v4, Ljava/nio/DirectByteBuffer;

    if-eqz v5, :cond_56

    .line 342
    invoke-static {v4}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 344
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    :cond_56
    goto :goto_43

    .line 336
    :cond_57
    return-object v2

    .line 340
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_58
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 341
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    instance-of v4, v3, Ljava/nio/DirectByteBuffer;

    if-eqz v4, :cond_73

    .line 342
    invoke-static {v3}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 344
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :cond_73
    goto :goto_60

    .line 345
    :cond_74
    throw v1
.end method

.method private static serializeSystemServerFontMap()Landroid/os/SharedMemory;
    .registers 3

    .line 351
    :try_start_0
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 352
    :catch_9
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FontManagerService"

    const-string v2, "Failed to serialize SystemServer system font map"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    const/4 v1, 0x0

    return-object v1
.end method

.method private setSerializedFontMap(Landroid/os/SharedMemory;)V
    .registers 5
    .param p1, "serializedFontMap"    # Landroid/os/SharedMemory;

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "oldFontMap":Landroid/os/SharedMemory;
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_4
    iget-object v2, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    move-object v0, v2

    .line 362
    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    .line 363
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    .line 364
    if-eqz v0, :cond_f

    .line 365
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 367
    :cond_f
    return-void

    .line 363
    :catchall_10
    move-exception v2

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v2
.end method

.method private updateSerializedFontMap()V
    .registers 2

    .line 316
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/graphics/fonts/FontManagerService;->serializeFontMap(Landroid/text/FontConfig;)Landroid/os/SharedMemory;

    move-result-object v0

    .line 317
    .local v0, "serializedFontMap":Landroid/os/SharedMemory;
    if-nez v0, :cond_e

    .line 319
    invoke-static {}, Lcom/android/server/graphics/fonts/FontManagerService;->serializeSystemServerFontMap()Landroid/os/SharedMemory;

    move-result-object v0

    .line 321
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/server/graphics/fonts/FontManagerService;->setSerializedFontMap(Landroid/os/SharedMemory;)V

    .line 322
    return-void
.end method


# virtual methods
.method clearUpdates()V
    .registers 4

    .line 260
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/fonts/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/fonts/config/config.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->deleteAllFiles(Ljava/io/File;Ljava/io/File;)V

    .line 261
    invoke-direct {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->initialize()V

    .line 262
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    const-string v1, "FontManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 287
    :cond_b
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;-><init>(Lcom/android/server/graphics/fonts/FontManagerService;)V

    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpAll(Landroid/util/IndentingPrintWriter;)V

    .line 288
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getCurrentFontMap()Landroid/os/SharedMemory;
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_3
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    monitor-exit v0

    return-object v1

    .line 230
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getFontConfig()Landroid/text/FontConfig;
    .registers 4

    .line 70
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.UPDATE_FONTS"

    const-string v2, "UPDATE_FONTS permission required."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method getFontFileMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-nez v0, :cond_9

    .line 276
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 278
    :cond_9
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_c
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getPostScriptMap()Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 280
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getSystemFontConfig()Landroid/text/FontConfig;
    .registers 3

    .line 304
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-nez v0, :cond_9

    .line 305
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemPreinstalledFontConfig()Landroid/text/FontConfig;

    move-result-object v0

    return-object v0

    .line 307
    :cond_9
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_c
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 309
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "result"    # Landroid/os/ResultReceiver;

    .line 297
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;-><init>(Lcom/android/server/graphics/fonts/FontManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 298
    return-void
.end method

.method restart()V
    .registers 1

    .line 271
    invoke-direct {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->initialize()V

    .line 272
    return-void
.end method

.method update(ILjava/util/List;)V
    .registers 7
    .param p1, "baseVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    .line 235
    .local p2, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-eqz v0, :cond_29

    .line 240
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1c

    :try_start_a
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getConfigVersion()I

    move-result v1

    if-ne v1, p1, :cond_13

    goto :goto_1c

    .line 244
    :cond_13
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v2, -0x8

    const-string v3, "The base config version is older than current."

    invoke-direct {v1, v2, v3}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerService;
    .end local p1    # "baseVersion":I
    .end local p2    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    throw v1

    .line 248
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerService;
    .restart local p1    # "baseVersion":I
    .restart local p2    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    invoke-virtual {v1, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->update(Ljava/util/List;)V

    .line 249
    invoke-direct {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->updateSerializedFontMap()V

    .line 250
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_26

    throw v1

    .line 236
    :cond_29
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v1, -0x7

    const-string v2, "The font updater is disabled."

    invoke-direct {v0, v1, v2}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public updateFontFamily(Ljava/util/List;I)I
    .registers 6
    .param p2, "baseVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest;",
            ">;I)I"
        }
    .end annotation

    .line 79
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 80
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.UPDATE_FONTS"

    const-string v2, "UPDATE_FONTS permission required."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_29

    .line 84
    :try_start_11
    invoke-virtual {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService;->update(ILjava/util/List;)V
    :try_end_14
    .catch Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException; {:try_start_11 .. :try_end_14} :catch_19
    .catchall {:try_start_11 .. :try_end_14} :catchall_29

    .line 85
    const/4 v0, 0x0

    .line 91
    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    .line 85
    return v0

    .line 86
    :catch_19
    move-exception v0

    .line 87
    .local v0, "e":Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
    :try_start_1a
    const-string v1, "FontManagerService"

    const-string v2, "Failed to update font family"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->getErrorCode()I

    move-result v1
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_29

    .line 91
    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    .line 88
    return v1

    .line 91
    .end local v0    # "e":Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
    :catchall_29
    move-exception v0

    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    .line 92
    throw v0
.end method
