.class final Lcom/android/server/graphics/fonts/UpdatableFontDir;
.super Ljava/lang/Object;
.source "UpdatableFontDir.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;,
        Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;,
        Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;
    }
.end annotation


# static fields
.field private static final RANDOM_DIR_PREFIX:Ljava/lang/String; = "~~"

.field private static final TAG:Ljava/lang/String; = "UpdatableFontDir"


# instance fields
.field private final mConfigFile:Landroid/util/AtomicFile;

.field private final mConfigSupplier:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Landroid/text/FontConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigVersion:I

.field private final mCurrentTimeSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilesDir:Ljava/io/File;

.field private final mFontFileInfoMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

.field private mLastModifiedMillis:J

.field private final mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;)V
    .registers 12
    .param p1, "filesDir"    # Ljava/io/File;
    .param p2, "parser"    # Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;
    .param p3, "fsverityUtil"    # Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;
    .param p4, "configFile"    # Ljava/io/File;

    .line 142
    new-instance v5, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/graphics/fonts/UpdatableFontDir;-><init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 146
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
    .registers 8
    .param p1, "filesDir"    # Ljava/io/File;
    .param p2, "parser"    # Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;
    .param p3, "fsverityUtil"    # Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;
    .param p4, "configFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;",
            "Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;",
            "Ljava/io/File;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Landroid/text/FontConfig;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p5, "currentTimeSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    .local p6, "configSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;Landroid/text/FontConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 152
    iput-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    .line 153
    iput-object p2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    .line 154
    iput-object p3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    .line 155
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    .line 156
    iput-object p5, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mCurrentTimeSupplier:Ljava/util/function/Supplier;

    .line 157
    iput-object p6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    .line 158
    return-void
.end method

.method private addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z
    .registers 11
    .param p1, "fontFileInfo"    # Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .param p2, "fontConfig"    # Landroid/text/FontConfig;
    .param p3, "deleteOldFile"    # Z

    .line 422
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->lookupFontFileInfo(Ljava/lang/String;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    move-result-object v0

    .line 424
    .local v0, "existingInfo":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    .line 428
    invoke-direct {p0, p1, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getPreinstalledFontRevision(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;)J

    move-result-wide v3

    .line 429
    .local v3, "preInstalledRev":J
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRevision()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gtz v5, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v2

    .line 430
    .end local v3    # "preInstalledRev":J
    .local v1, "shouldAddToMap":Z
    :goto_1a
    goto :goto_29

    .line 431
    .end local v1    # "shouldAddToMap":Z
    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRevision()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRevision()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    .line 433
    .restart local v1    # "shouldAddToMap":Z
    :goto_29
    if-eqz v1, :cond_3a

    .line 434
    if-eqz p3, :cond_36

    if-eqz v0, :cond_36

    .line 435
    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRandomizedFontDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 437
    :cond_36
    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->putFontFileInfo(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;)V

    goto :goto_43

    .line 439
    :cond_3a
    if-eqz p3, :cond_43

    .line 440
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRandomizedFontDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 443
    :cond_43
    :goto_43
    return v1
.end method

.method static deleteAllFiles(Ljava/io/File;Ljava/io/File;)V
    .registers 6
    .param p0, "filesDir"    # Ljava/io/File;
    .param p1, "configFile"    # Ljava/io/File;

    .line 612
    const-string v0, "Failed to delete "

    const-string v1, "UpdatableFontDir"

    :try_start_4
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_d

    .line 615
    goto :goto_22

    .line 613
    :catchall_d
    move-exception v2

    .line 614
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_22
    :try_start_22
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    .line 620
    goto :goto_3b

    .line 618
    :catchall_26
    move-exception v2

    .line 619
    .restart local v2    # "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_3b
    return-void
.end method

.method private getFontRevision(Ljava/io/File;)J
    .registers 5
    .param p1, "file"    # Ljava/io/File;

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-interface {v0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->getRevision(Ljava/io/File;)J

    move-result-wide v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 507
    :catch_7
    move-exception v0

    .line 508
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "UpdatableFontDir"

    const-string v2, "Failed to read font file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private getPreinstalledFontRevision(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;)J
    .registers 10
    .param p1, "info"    # Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .param p2, "fontConfig"    # Landroid/text/FontConfig;

    .line 447
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "psName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 449
    .local v1, "targetFont":Landroid/text/FontConfig$Font;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-virtual {p2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_41

    .line 450
    invoke-virtual {p2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/FontConfig$FontFamily;

    .line 451
    .local v3, "family":Landroid/text/FontConfig$FontFamily;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1b
    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3e

    .line 452
    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/FontConfig$Font;

    .line 453
    .local v5, "font":Landroid/text/FontConfig$Font;
    invoke-virtual {v5}, Landroid/text/FontConfig$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 454
    move-object v1, v5

    .line 455
    goto :goto_3e

    .line 451
    .end local v5    # "font":Landroid/text/FontConfig$Font;
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 449
    .end local v3    # "family":Landroid/text/FontConfig$FontFamily;
    .end local v4    # "j":I
    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 459
    .end local v2    # "i":I
    :cond_41
    const-wide/16 v2, -0x1

    if-nez v1, :cond_46

    .line 460
    return-wide v2

    .line 463
    :cond_46
    invoke-virtual {v1}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_51

    .line 464
    invoke-virtual {v1}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object v4

    goto :goto_55

    :cond_51
    invoke-virtual {v1}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v4

    .line 465
    .local v4, "preinstalledFontFile":Ljava/io/File;
    :goto_55
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5c

    .line 466
    return-wide v2

    .line 468
    :cond_5c
    invoke-direct {p0, v4}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontRevision(Ljava/io/File;)J

    move-result-wide v5

    .line 469
    .local v5, "revision":J
    cmp-long v2, v5, v2

    if-nez v2, :cond_6b

    .line 470
    const-string v2, "UpdatableFontDir"

    const-string v3, "Invalid preinstalled font file"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_6b
    return-wide v5
.end method

.method private static getRandomDir(Ljava/io/File;)Ljava/io/File;
    .registers 5
    .param p0, "parent"    # Ljava/io/File;

    .line 395
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 396
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 399
    .local v1, "bytes":[B
    :goto_9
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "~~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    .line 401
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "dirName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    .line 403
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_33

    .line 404
    return-object v2

    .line 403
    :cond_33
    goto :goto_9
.end method

.method private installFontFile(Ljava/io/FileDescriptor;[B)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pkcs7Signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    .line 303
    const-string v0, "Failed to read PostScript name from font file"

    const-string v1, "Failed to change mode to 711"

    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getRandomDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 304
    .local v2, "newDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_d8

    .line 311
    :try_start_11
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1c9

    invoke-static {v3, v5}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_1a} :catch_d1

    .line 316
    nop

    .line 317
    const/4 v3, 0x0

    .line 319
    .local v3, "success":Z
    :try_start_1c
    new-instance v5, Ljava/io/File;

    const-string v6, "font.ttf"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_ca

    .line 320
    .local v5, "tempNewFontFile":Ljava/io/File;
    :try_start_23
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_c1
    .catchall {:try_start_23 .. :try_end_28} :catchall_ca

    .line 321
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_28
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_b7

    .line 322
    :try_start_2f
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_c1
    .catchall {:try_start_2f .. :try_end_32} :catchall_ca

    .line 326
    .end local v6    # "out":Ljava/io/FileOutputStream;
    nop

    .line 330
    :try_start_33
    iget-object v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;->setUpFsverity(Ljava/lang/String;[B)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3c} :catch_ad
    .catchall {:try_start_33 .. :try_end_3c} :catchall_ca

    .line 336
    nop

    .line 339
    const/4 v6, -0x3

    :try_start_3e
    iget-object v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-interface {v7, v5}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->buildFontFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_44} :catch_a6
    .catchall {:try_start_3e .. :try_end_44} :catchall_ca

    .line 344
    .local v7, "fontFileName":Ljava/lang/String;
    nop

    .line 345
    if-eqz v7, :cond_9f

    .line 350
    :try_start_47
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 351
    .local v0, "newFontFile":Ljava/io/File;
    iget-object v8, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    invoke-interface {v8, v5, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;->rename(Ljava/io/File;Ljava/io/File;)Z

    move-result v8
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_ca

    if-eqz v8, :cond_97

    .line 358
    :try_start_54
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1a4

    invoke-static {v8, v9}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_5d
    .catch Landroid/system/ErrnoException; {:try_start_54 .. :try_end_5d} :catch_90
    .catchall {:try_start_54 .. :try_end_5d} :catchall_ca

    .line 363
    nop

    .line 364
    :try_start_5e
    invoke-direct {p0, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->validateFontFile(Ljava/io/File;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    move-result-object v1
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_ca

    .line 368
    .local v1, "fontFileInfo":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    :try_start_62
    iget-object v4, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->tryToCreateTypeface(Ljava/io/File;)V
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_87

    .line 373
    nop

    .line 375
    :try_start_6c
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v4

    .line 376
    .local v4, "fontConfig":Landroid/text/FontConfig;
    const/4 v6, 0x0

    invoke-direct {p0, v1, v4, v6}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z

    move-result v6
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_ca

    if-eqz v6, :cond_7e

    .line 381
    const/4 v0, 0x1

    .line 383
    .end local v1    # "fontFileInfo":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .end local v3    # "success":Z
    .end local v4    # "fontConfig":Landroid/text/FontConfig;
    .end local v5    # "tempNewFontFile":Ljava/io/File;
    .end local v7    # "fontFileName":Ljava/lang/String;
    .local v0, "success":Z
    if-nez v0, :cond_7d

    .line 384
    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 387
    :cond_7d
    return-void

    .line 377
    .local v0, "newFontFile":Ljava/io/File;
    .restart local v1    # "fontFileInfo":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .restart local v3    # "success":Z
    .restart local v4    # "fontConfig":Landroid/text/FontConfig;
    .restart local v5    # "tempNewFontFile":Ljava/io/File;
    .restart local v7    # "fontFileName":Ljava/lang/String;
    :cond_7e
    :try_start_7e
    new-instance v6, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v8, -0x5

    const-string v9, "Downgrading font file is forbidden."

    invoke-direct {v6, v8, v9}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .end local v2    # "newDir":Ljava/io/File;
    .end local v3    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v6

    .line 369
    .end local v4    # "fontConfig":Landroid/text/FontConfig;
    .restart local v2    # "newDir":Ljava/io/File;
    .restart local v3    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :catchall_87
    move-exception v4

    .line 370
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v8, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v9, "Failed to create Typeface from file"

    invoke-direct {v8, v6, v9, v4}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "newDir":Ljava/io/File;
    .end local v3    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v8

    .line 359
    .end local v1    # "fontFileInfo":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v2    # "newDir":Ljava/io/File;
    .restart local v3    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :catch_90
    move-exception v6

    .line 360
    .local v6, "e":Landroid/system/ErrnoException;
    new-instance v8, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    invoke-direct {v8, v4, v1, v6}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "newDir":Ljava/io/File;
    .end local v3    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v8

    .line 352
    .end local v6    # "e":Landroid/system/ErrnoException;
    .restart local v2    # "newDir":Ljava/io/File;
    .restart local v3    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :cond_97
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v6, "Failed to move verified font file."

    invoke-direct {v1, v4, v6}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .end local v2    # "newDir":Ljava/io/File;
    .end local v3    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v1

    .line 346
    .end local v0    # "newFontFile":Ljava/io/File;
    .restart local v2    # "newDir":Ljava/io/File;
    .restart local v3    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :cond_9f
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v4, -0x4

    invoke-direct {v1, v4, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .end local v2    # "newDir":Ljava/io/File;
    .end local v3    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v1

    .line 340
    .end local v7    # "fontFileName":Ljava/lang/String;
    .restart local v2    # "newDir":Ljava/io/File;
    .restart local v3    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :catch_a6
    move-exception v1

    .line 341
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    invoke-direct {v4, v6, v0, v1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "newDir":Ljava/io/File;
    .end local v3    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v4

    .line 332
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "newDir":Ljava/io/File;
    .restart local v3    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :catch_ad
    move-exception v0

    .line 333
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v4, -0x2

    const-string v6, "Failed to setup fs-verity."

    invoke-direct {v1, v4, v6, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "newDir":Ljava/io/File;
    .end local v3    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v1
    :try_end_b7
    .catchall {:try_start_7e .. :try_end_b7} :catchall_ca

    .line 320
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "newDir":Ljava/io/File;
    .restart local v3    # "success":Z
    .local v6, "out":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :catchall_b7
    move-exception v0

    :try_start_b8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_bc

    goto :goto_c0

    :catchall_bc
    move-exception v1

    :try_start_bd
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "newDir":Ljava/io/File;
    .end local v3    # "success":Z
    .end local v5    # "tempNewFontFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    :goto_c0
    throw v0
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c1} :catch_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_ca

    .line 322
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "newDir":Ljava/io/File;
    .restart local v3    # "success":Z
    .restart local v5    # "tempNewFontFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :catch_c1
    move-exception v0

    .line 323
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_c2
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v6, "Failed to write font file to storage."

    invoke-direct {v1, v4, v6, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "newDir":Ljava/io/File;
    .end local v3    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v1
    :try_end_ca
    .catchall {:try_start_c2 .. :try_end_ca} :catchall_ca

    .line 383
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "tempNewFontFile":Ljava/io/File;
    .restart local v2    # "newDir":Ljava/io/File;
    .restart local v3    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :catchall_ca
    move-exception v0

    if-nez v3, :cond_d0

    .line 384
    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 386
    :cond_d0
    throw v0

    .line 312
    .end local v3    # "success":Z
    :catch_d1
    move-exception v0

    .line 313
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v3, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    invoke-direct {v3, v4, v1, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 305
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_d8
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v1, "Failed to create font directory."

    invoke-direct {v0, v4, v1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$new$0(Ljava/util/Map;)Landroid/text/FontConfig;
    .registers 4
    .param p0, "map"    # Ljava/util/Map;

    .line 144
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfig(Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method private lookupFontFileInfo(Ljava/lang/String;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .registers 3
    .param p1, "psName"    # Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    return-object v0
.end method

.method private putFontFileInfo(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;)V
    .registers 4
    .param p1, "info"    # Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 412
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    return-void
.end method

.method private readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .registers 5

    .line 565
    new-instance v0, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    invoke-direct {v0}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;-><init>()V

    .line 566
    .local v0, "config":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_b} :catch_20

    .line 567
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_b
    invoke-static {v1, v0}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;->loadFromXml(Ljava/io/InputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_14

    .line 568
    if-eqz v1, :cond_13

    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_13} :catch_20

    .line 570
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_13
    goto :goto_21

    .line 566
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_14
    move-exception v2

    if-eqz v1, :cond_1f

    :try_start_17
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v3

    :try_start_1c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "config":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    :cond_1f
    :goto_1f
    throw v2
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_20} :catch_20

    .line 568
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "config":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    :catch_20
    move-exception v1

    .line 571
    :goto_21
    return-object v0
.end method

.method private resolveFontFiles(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$FontFamily;
    .registers 16
    .param p1, "fontFamily"    # Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 515
    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getFonts()Ljava/util/List;

    move-result-object v0

    .line 516
    .local v0, "fontList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest$Font;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 517
    .local v1, "resolvedFonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_68

    .line 518
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/FontUpdateRequest$Font;

    .line 519
    .local v3, "font":Landroid/graphics/fonts/FontUpdateRequest$Font;
    iget-object v4, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 520
    .local v4, "info":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    if-nez v4, :cond_46

    .line 521
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to lookup font file that has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UpdatableFontDir"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v5, 0x0

    return-object v5

    .line 524
    :cond_46
    new-instance v5, Landroid/text/FontConfig$Font;

    invoke-static {v4}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->-$$Nest$fgetmFile(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;)Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v9

    .line 525
    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v10

    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getIndex()I

    move-result v11

    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Landroid/text/FontConfig$Font;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    .end local v3    # "font":Landroid/graphics/fonts/FontUpdateRequest$Font;
    .end local v4    # "info":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 527
    .end local v2    # "i":I
    :cond_68
    new-instance v2, Landroid/text/FontConfig$FontFamily;

    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v3

    .line 528
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/text/FontConfig$FontFamily;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/os/LocaleList;I)V

    .line 527
    return-object v2
.end method

.method private validateFontFile(Ljava/io/File;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .registers 9
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;->hasFsverity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 489
    :try_start_c
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-interface {v0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->getPostScriptName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_3d

    .line 494
    .local v0, "psName":Ljava/lang/String;
    nop

    .line 495
    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontRevision(Ljava/io/File;)J

    move-result-wide v1

    .line 496
    .local v1, "revision":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_23

    .line 501
    new-instance v3, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    return-object v3

    .line 497
    :cond_23
    new-instance v3, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v4, -0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Font validation failed. Could not read font revision: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 490
    .end local v0    # "psName":Ljava/lang/String;
    .end local v1    # "revision":J
    :catch_3d
    move-exception v0

    .line 491
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v2, -0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font validation failed. Could not read PostScript name name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 483
    .end local v0    # "e":Ljava/io/IOException;
    :cond_58
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font validation failed. Fs-verity is not enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private writePersistentConfig(Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V
    .registers 7
    .param p1, "config"    # Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    .line 576
    const/4 v0, 0x0

    .line 578
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    .line 579
    invoke-static {v0, p1}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;->writeToXml(Ljava/io/OutputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V

    .line 580
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_12

    .line 588
    nop

    .line 589
    return-void

    .line 581
    :catch_12
    move-exception v1

    .line 582
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_1a

    .line 583
    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 585
    :cond_1a
    new-instance v2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v3, -0x6

    const-string v4, "Failed to write config XML."

    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method getConfigVersion()I
    .registers 2

    .line 592
    iget v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    return v0
.end method

.method public getFontFamilyMap()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/FontConfig$FontFamily;",
            ">;"
        }
    .end annotation

    .line 596
    invoke-direct {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v0

    .line 597
    .local v0, "curConfig":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 598
    .local v1, "familyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/text/FontConfig$FontFamily;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v3, v0, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 599
    iget-object v3, v0, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 600
    .local v3, "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    invoke-direct {p0, v3}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFiles(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$FontFamily;

    move-result-object v4

    .line 601
    .local v4, "resolvedFamily":Landroid/text/FontConfig$FontFamily;
    if-eqz v4, :cond_27

    .line 602
    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .end local v3    # "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    .end local v4    # "resolvedFamily":Landroid/text/FontConfig$FontFamily;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 605
    .end local v2    # "i":I
    :cond_2a
    return-object v1
.end method

.method getPostScriptMap()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 532
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 533
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 534
    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 535
    .local v2, "info":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    invoke-virtual {v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .end local v2    # "info":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 537
    .end local v1    # "i":I
    :cond_24
    return-object v0
.end method

.method getSystemFontConfig()Landroid/text/FontConfig;
    .registers 12

    .line 541
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getPostScriptMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/FontConfig;

    .line 542
    .local v0, "config":Landroid/text/FontConfig;
    invoke-direct {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v1

    .line 543
    .local v1, "persistentConfig":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    iget-object v2, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    .line 545
    .local v2, "families":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest$Family;>;"
    new-instance v3, Ljava/util/ArrayList;

    .line 546
    invoke-virtual {v0}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 549
    .local v3, "mergedFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    invoke-virtual {v0}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 553
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_44

    .line 554
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-direct {p0, v5}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFiles(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$FontFamily;

    move-result-object v5

    .line 555
    .local v5, "family":Landroid/text/FontConfig$FontFamily;
    if-eqz v5, :cond_41

    .line 556
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    .end local v5    # "family":Landroid/text/FontConfig$FontFamily;
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 560
    .end local v4    # "i":I
    :cond_44
    new-instance v4, Landroid/text/FontConfig;

    .line 561
    invoke-virtual {v0}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iget v10, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    move-object v5, v4

    move-object v6, v3

    invoke-direct/range {v5 .. v10}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;JI)V

    .line 560
    return-object v4
.end method

.method loadFontFileMap()V
    .registers 16

    .line 166
    const-string v0, "UpdatableFontDir"

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 167
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 168
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    .line 169
    const/4 v4, 0x0

    .line 171
    .local v4, "success":Z
    :try_start_f
    invoke-direct {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v5

    .line 172
    .local v5, "config":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    iget-wide v6, v5, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    iput-wide v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 174
    iget-object v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 175
    .local v6, "dirs":[Ljava/io/File;
    if-nez v6, :cond_46

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not read: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_f8

    .line 209
    if-nez v4, :cond_45

    .line 210
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 211
    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 212
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 178
    :cond_45
    return-void

    .line 180
    :cond_46
    const/4 v7, 0x0

    .line 181
    .local v7, "fontConfig":Landroid/text/FontConfig;
    :try_start_47
    array-length v8, v6

    const/4 v9, 0x0

    move v10, v9

    :goto_4a
    if-ge v10, v8, :cond_e8

    aget-object v11, v6, v10

    .line 182
    .local v11, "dir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "~~"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_80

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected dir found: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_47 .. :try_end_71} :catchall_f8

    .line 209
    if-nez v4, :cond_7f

    .line 210
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 211
    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 212
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 184
    :cond_7f
    return-void

    .line 186
    :cond_80
    :try_start_80
    iget-object v12, v5, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a6

    .line 187
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Deleting obsolete dir: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {v11}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 189
    goto :goto_c0

    .line 191
    :cond_a6
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 192
    .local v12, "files":[Ljava/io/File;
    if-eqz v12, :cond_c3

    array-length v13, v12

    if-eq v13, v3, :cond_b0

    goto :goto_c3

    .line 196
    :cond_b0
    aget-object v13, v12, v9

    invoke-direct {p0, v13}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->validateFontFile(Ljava/io/File;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    move-result-object v13

    .line 197
    .local v13, "fontFileInfo":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    if-nez v7, :cond_bd

    .line 198
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v14

    move-object v7, v14

    .line 200
    :cond_bd
    invoke-direct {p0, v13, v7, v3}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z

    .line 181
    .end local v11    # "dir":Ljava/io/File;
    .end local v12    # "files":[Ljava/io/File;
    .end local v13    # "fontFileInfo":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    :goto_c0
    add-int/lit8 v10, v10, 0x1

    goto :goto_4a

    .line 193
    .restart local v11    # "dir":Ljava/io/File;
    .restart local v12    # "files":[Ljava/io/File;
    :cond_c3
    :goto_c3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected files in dir: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catchall {:try_start_80 .. :try_end_d9} :catchall_f8

    .line 209
    if-nez v4, :cond_e7

    .line 210
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 211
    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 212
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 194
    :cond_e7
    return-void

    .line 202
    .end local v11    # "dir":Ljava/io/File;
    .end local v12    # "files":[Ljava/io/File;
    :cond_e8
    const/4 v4, 0x1

    .line 209
    .end local v5    # "config":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .end local v6    # "dirs":[Ljava/io/File;
    .end local v7    # "fontConfig":Landroid/text/FontConfig;
    if-nez v4, :cond_102

    .line 210
    :goto_eb
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 211
    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 212
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    goto :goto_102

    .line 203
    :catchall_f8
    move-exception v3

    .line 206
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_f9
    const-string v5, "Failed to load font mappings."

    invoke-static {v0, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fe
    .catchall {:try_start_f9 .. :try_end_fe} :catchall_103

    .line 209
    nop

    .end local v3    # "t":Ljava/lang/Throwable;
    if-nez v4, :cond_102

    .line 210
    goto :goto_eb

    .line 215
    :cond_102
    :goto_102
    return-void

    .line 209
    :catchall_103
    move-exception v0

    if-nez v4, :cond_112

    .line 210
    iget-object v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 211
    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 212
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 214
    :cond_112
    throw v0
.end method

.method public update(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 223
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/FontUpdateRequest;

    .line 224
    .local v1, "request":Landroid/graphics/fonts/FontUpdateRequest;
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_132

    goto :goto_3a

    .line 230
    :pswitch_18
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 226
    :pswitch_2b
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getSignature()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    nop

    .line 234
    .end local v1    # "request":Landroid/graphics/fonts/FontUpdateRequest;
    :goto_3a
    goto :goto_4

    .line 236
    :cond_3b
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 237
    .local v0, "backupMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;>;"
    invoke-direct {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v1

    .line 238
    .local v1, "curConfig":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 239
    .local v2, "familyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/fonts/FontUpdateRequest$Family;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4c
    iget-object v4, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_66

    .line 240
    iget-object v4, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 241
    .local v4, "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .end local v4    # "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 244
    .end local v3    # "i":I
    :cond_66
    iget-wide v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 245
    .local v3, "backupLastModifiedDate":J
    const/4 v5, 0x0

    .line 247
    .local v5, "success":Z
    :try_start_69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/fonts/FontUpdateRequest;

    .line 248
    .local v7, "request":Landroid/graphics/fonts/FontUpdateRequest;
    invoke-virtual {v7}, Landroid/graphics/fonts/FontUpdateRequest;->getType()I

    move-result v8

    packed-switch v8, :pswitch_data_13a

    goto :goto_9e

    .line 254
    :pswitch_81
    invoke-virtual {v7}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v8

    .line 255
    .local v8, "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    invoke-virtual {v8}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9e

    .line 250
    .end local v8    # "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    :pswitch_8d
    nop

    .line 251
    invoke-virtual {v7}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v7}, Landroid/graphics/fonts/FontUpdateRequest;->getSignature()[B

    move-result-object v9

    .line 250
    invoke-direct {p0, v8, v9}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->installFontFile(Ljava/io/FileDescriptor;[B)V

    .line 252
    nop

    .line 258
    .end local v7    # "request":Landroid/graphics/fonts/FontUpdateRequest;
    :goto_9e
    goto :goto_6d

    .line 261
    :cond_9f
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 262
    .local v7, "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    invoke-direct {p0, v7}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFiles(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$FontFamily;

    move-result-object v8

    if-eqz v8, :cond_ba

    .line 267
    .end local v7    # "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    goto :goto_a7

    .line 263
    .restart local v7    # "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    :cond_ba
    new-instance v6, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/16 v8, -0x9

    const-string v9, "Required fonts are not available"

    invoke-direct {v6, v8, v9}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .end local v0    # "backupMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;>;"
    .end local v1    # "curConfig":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .end local v2    # "familyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/fonts/FontUpdateRequest$Family;>;"
    .end local v3    # "backupLastModifiedDate":J
    .end local v5    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    throw v6

    .line 270
    .end local v7    # "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    .restart local v0    # "backupMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;>;"
    .restart local v1    # "curConfig":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .restart local v2    # "familyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/fonts/FontUpdateRequest$Family;>;"
    .restart local v3    # "backupLastModifiedDate":J
    .restart local v5    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    :cond_c4
    iget-object v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mCurrentTimeSupplier:Ljava/util/function/Supplier;

    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 272
    new-instance v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    invoke-direct {v6}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;-><init>()V

    .line 273
    .local v6, "newConfig":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    iget-wide v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iput-wide v7, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    .line 274
    iget-object v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_100

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 275
    .local v8, "info":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    iget-object v9, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    invoke-virtual {v8}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRandomizedFontDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    nop

    .end local v8    # "info":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    goto :goto_e5

    .line 277
    :cond_100
    iget-object v7, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    invoke-direct {p0, v6}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->writePersistentConfig(Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V

    .line 279
    iget v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I
    :try_end_112
    .catchall {:try_start_69 .. :try_end_112} :catchall_122

    .line 280
    const/4 v5, 0x1

    .line 282
    .end local v6    # "newConfig":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    if-nez v5, :cond_121

    .line 283
    iget-object v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 284
    iget-object v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 285
    iput-wide v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 288
    :cond_121
    return-void

    .line 282
    :catchall_122
    move-exception v6

    if-nez v5, :cond_131

    .line 283
    iget-object v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 284
    iget-object v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 285
    iput-wide v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 287
    :cond_131
    throw v6

    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_18
    .end packed-switch

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_81
    .end packed-switch
.end method
