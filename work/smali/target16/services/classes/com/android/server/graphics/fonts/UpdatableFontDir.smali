.class public final Lcom/android/server/graphics/fonts/UpdatableFontDir;
.super Ljava/lang/Object;
.source "UpdatableFontDir.java"


# instance fields
.field public final mConfigFile:Landroid/util/AtomicFile;

.field public final mConfigSupplier:Ljava/util/function/Function;

.field public mConfigVersion:I

.field public final mCurrentTimeSupplier:Ljava/util/function/Supplier;

.field public final mFilesDir:Ljava/io/File;

.field public final mFontFileInfoMap:Landroid/util/ArrayMap;

.field public final mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

.field public mLastModifiedMillis:J

.field public final mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;


# direct methods
.method public static synthetic $r8$lambda$l6wKUt3kHk5foaoReX8Hx16jJGk(Ljava/util/Map;)Landroid/text/FontConfig;
    .registers 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 148
    invoke-static {p0, v0, v1, v2}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfig(Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;)V
    .registers 12

    .line 146
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

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
    .registers 8

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 156
    iput-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    .line 157
    iput-object p2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    .line 158
    iput-object p3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    .line 159
    new-instance p1, Landroid/util/AtomicFile;

    invoke-direct {p1, p4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    .line 160
    iput-object p5, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mCurrentTimeSupplier:Ljava/util/function/Supplier;

    .line 161
    iput-object p6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    return-void
.end method

.method public static deleteAllFiles(Ljava/io/File;Ljava/io/File;)V
    .registers 5

    .line 704
    const-string v0, "Failed to delete "

    const-string v1, "UpdatableFontDir"

    :try_start_4
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_d

    goto :goto_1f

    .line 706
    :catchall_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :goto_1f
    :try_start_1f
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_35

    .line 711
    :catchall_23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return-void
.end method

.method public static getRandomDir(Ljava/io/File;)Ljava/io/File;
    .registers 5

    .line 463
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    .line 464
    new-array v1, v1, [B

    .line 467
    :cond_9
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "~~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 469
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 470
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 471
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    return-object v3
.end method


# virtual methods
.method public final addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z
    .registers 11

    .line 490
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->lookupFontFileInfo(Ljava/lang/String;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1a

    .line 496
    invoke-virtual {p0, p1, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getPreinstalledFontRevision(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;)J

    move-result-wide v3

    .line 497
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRevision()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-gtz p2, :cond_27

    :goto_18
    move v1, v2

    goto :goto_27

    .line 499
    :cond_1a
    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRevision()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRevision()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-gtz p2, :cond_27

    goto :goto_18

    :cond_27
    :goto_27
    if-eqz v1, :cond_38

    if-eqz p3, :cond_34

    if-eqz v0, :cond_34

    .line 503
    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRandomizedFontDir()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 505
    :cond_34
    invoke-virtual {p0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->putFontFileInfo(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;)V

    return v1

    :cond_38
    if-eqz p3, :cond_41

    .line 508
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRandomizedFontDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    :cond_41
    return v1
.end method

.method public getConfigVersion()I
    .registers 1

    .line 684
    iget p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    return p0
.end method

.method public final getFontByPostScriptName(Ljava/lang/String;Landroid/text/FontConfig;)Landroid/text/FontConfig$Font;
    .registers 11

    const/4 p0, 0x0

    const/4 v0, 0x0

    move v1, v0

    .line 516
    :goto_3
    invoke-virtual {p2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 517
    invoke-virtual {p2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/FontConfig$FontFamily;

    move v3, v0

    .line 518
    :goto_18
    invoke-virtual {v2}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3b

    .line 519
    invoke-virtual {v2}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$Font;

    .line 520
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    move-object p0, v4

    goto :goto_3b

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_3b
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3e
    move v1, v0

    .line 526
    :goto_3f
    invoke-virtual {p2}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_92

    .line 527
    invoke-virtual {p2}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/FontConfig$NamedFamilyList;

    move v3, v0

    .line 528
    :goto_54
    invoke-virtual {v2}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8f

    .line 529
    invoke-virtual {v2}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$FontFamily;

    move v5, v0

    .line 530
    :goto_69
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8c

    .line 531
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/FontConfig$Font;

    .line 532
    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_89

    move-object p0, v6

    goto :goto_8c

    :cond_89
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    :cond_8c
    :goto_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_8f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_92
    return-object p0
.end method

.method public final getFontRevision(Ljava/io/File;)J
    .registers 3

    .line 594
    :try_start_0
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-interface {p0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->getRevision(Ljava/io/File;)J

    move-result-wide p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide p0

    :catch_7
    move-exception p0

    .line 596
    const-string p1, "UpdatableFontDir"

    const-string v0, "Failed to read font file"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getPostScriptMap()Ljava/util/Map;
    .registers 5

    .line 623
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    .line 624
    :goto_6
    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 625
    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 626
    invoke-virtual {v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    return-object v0
.end method

.method public final getPreinstalledFontRevision(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;)J
    .registers 5

    .line 543
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object p1

    .line 544
    invoke-virtual {p0, p1, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontByPostScriptName(Ljava/lang/String;Landroid/text/FontConfig;)Landroid/text/FontConfig$Font;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-nez p1, :cond_d

    return-wide v0

    .line 550
    :cond_d
    invoke-virtual {p1}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 551
    invoke-virtual {p1}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object p1

    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object p1

    .line 552
    :goto_1c
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_23

    return-wide v0

    .line 555
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontRevision(Ljava/io/File;)J

    move-result-wide p0

    cmp-long p2, p0, v0

    if-nez p2, :cond_32

    .line 557
    const-string p2, "UpdatableFontDir"

    const-string v0, "Invalid preinstalled font file"

    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-wide p0
.end method

.method public getSystemFontConfig()Landroid/text/FontConfig;
    .registers 11

    .line 632
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getPostScriptMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/FontConfig;

    .line 633
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v1

    .line 634
    iget-object v1, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    .line 636
    new-instance v5, Ljava/util/ArrayList;

    .line 637
    invoke-virtual {v0}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 640
    invoke-virtual {v0}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    .line 644
    :goto_2c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 645
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-virtual {p0, v3}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFilesForNamedFamily(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$NamedFamilyList;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 647
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 651
    :cond_44
    new-instance v2, Landroid/text/FontConfig;

    .line 652
    invoke-virtual {v0}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    move-result-object v4

    .line 653
    invoke-virtual {v0}, Landroid/text/FontConfig;->getLocaleFallbackCustomizations()Ljava/util/List;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iget v9, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    invoke-direct/range {v2 .. v9}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    return-object v2
.end method

.method public final installFontFile(Ljava/io/FileDescriptor;[B)V
    .registers 9

    .line 356
    const-string v0, "Failed to read PostScript name from font file"

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getRandomDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 357
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_105

    .line 364
    :try_start_f
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1c9

    invoke-static {v2, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_18
    .catch Landroid/system/ErrnoException; {:try_start_f .. :try_end_18} :catch_fc

    .line 372
    :try_start_18
    new-instance v2, Ljava/io/File;

    const-string v4, "font.ttf"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_93

    .line 373
    :try_start_1f
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_e4
    .catchall {:try_start_1f .. :try_end_24} :catchall_93

    .line 374
    :try_start_24
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_e6

    .line 375
    :try_start_2b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_e4
    .catchall {:try_start_2b .. :try_end_2e} :catchall_93

    .line 383
    :try_start_2e
    iget-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;->setUpFsverity(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_37} :catch_da
    .catchall {:try_start_2e .. :try_end_37} :catchall_93

    const/4 p1, -0x3

    .line 391
    :try_start_38
    iget-object v4, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-interface {v4, v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->buildFontFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3e} :catch_d3
    .catchall {:try_start_38 .. :try_end_3e} :catchall_93

    if-eqz v4, :cond_cc

    .line 402
    :try_start_40
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    iget-object v4, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    invoke-interface {v4, v2, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;->rename(Ljava/io/File;Ljava/io/File;)Z

    move-result v2
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_93

    if-eqz v2, :cond_c4

    .line 410
    :try_start_4d
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1a4

    invoke-static {v2, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_56
    .catch Landroid/system/ErrnoException; {:try_start_4d .. :try_end_56} :catch_bb
    .catchall {:try_start_4d .. :try_end_56} :catchall_93

    .line 416
    :try_start_56
    new-instance v2, Ljava/io/File;

    const-string v4, "font.fsv_sig"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_93

    .line 417
    :try_start_5d
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_62} :catch_a7
    .catchall {:try_start_5d .. :try_end_62} :catchall_93

    .line 418
    :try_start_62
    invoke-virtual {v4, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_a9

    .line 419
    :try_start_65
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_a7
    .catchall {:try_start_65 .. :try_end_68} :catchall_93

    .line 426
    :try_start_68
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x180

    invoke-static {v2, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_71
    .catch Landroid/system/ErrnoException; {:try_start_68 .. :try_end_71} :catch_9e
    .catchall {:try_start_68 .. :try_end_71} :catchall_93

    .line 432
    :try_start_71
    invoke-virtual {p0, v0, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->validateFontFile(Ljava/io/File;[B)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    move-result-object p2
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_93

    .line 436
    :try_start_75
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-virtual {p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->tryToCreateTypeface(Ljava/io/File;)V
    :try_end_7e
    .catchall {:try_start_75 .. :try_end_7e} :catchall_95

    .line 443
    :try_start_7e
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object p1

    const/4 v0, 0x0

    .line 444
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z

    move-result p0

    if-eqz p0, :cond_8a

    return-void

    .line 445
    :cond_8a
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p1, "Downgrading font file is forbidden."

    const/4 p2, -0x5

    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_93
    move-exception p0

    goto :goto_f8

    :catchall_95
    move-exception p0

    .line 438
    new-instance p2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v0, "Failed to create Typeface from file"

    invoke-direct {p2, p1, v0, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_9e
    move-exception p0

    .line 428
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p2, "Failed to change the signature file mode to 600"

    invoke-direct {p1, v3, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_a7
    .catchall {:try_start_7e .. :try_end_a7} :catchall_93

    :catch_a7
    move-exception p0

    goto :goto_b3

    :catchall_a9
    move-exception p0

    .line 417
    :try_start_aa
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_b2

    :catchall_ae
    move-exception p1

    :try_start_af
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b2
    throw p0
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b3} :catch_a7
    .catchall {:try_start_af .. :try_end_b3} :catchall_93

    .line 421
    :goto_b3
    :try_start_b3
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p2, "Failed to write font signature file to storage."

    invoke-direct {p1, v3, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_bb
    move-exception p0

    .line 412
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p2, "Failed to change font file mode to 644"

    invoke-direct {p1, v3, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 404
    :cond_c4
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p1, "Failed to move verified font file."

    invoke-direct {p0, v3, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 398
    :cond_cc
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 p1, -0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_d3
    move-exception p0

    .line 393
    new-instance p2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    invoke-direct {p2, p1, v0, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_da
    move-exception p0

    .line 385
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p2, "Failed to setup fs-verity."

    const/4 v0, -0x2

    invoke-direct {p1, v0, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_e4
    .catchall {:try_start_b3 .. :try_end_e4} :catchall_93

    :catch_e4
    move-exception p0

    goto :goto_f0

    :catchall_e6
    move-exception p0

    .line 373
    :try_start_e7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_eb

    goto :goto_ef

    :catchall_eb
    move-exception p1

    :try_start_ec
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ef
    throw p0
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_f0} :catch_e4
    .catchall {:try_start_ec .. :try_end_f0} :catchall_93

    .line 376
    :goto_f0
    :try_start_f0
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p2, "Failed to write font file to storage."

    invoke-direct {p1, v3, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_f8
    .catchall {:try_start_f0 .. :try_end_f8} :catchall_93

    .line 452
    :goto_f8
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 454
    throw p0

    :catch_fc
    move-exception p0

    .line 366
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p2, "Failed to change mode to 711"

    invoke-direct {p1, v3, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 358
    :cond_105
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p1, "Failed to create font directory."

    invoke-direct {p0, v3, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public loadFontFileMap()V
    .registers 18

    move-object/from16 v1, p0

    .line 170
    const-string v2, "UpdatableFontDir"

    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const-wide/16 v3, 0x0

    .line 171
    iput-wide v3, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    const/4 v0, 0x1

    .line 172
    iput v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    .line 175
    :try_start_10
    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v5

    .line 176
    iget-wide v6, v5, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    iput-wide v6, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 178
    iget-object v6, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_4b

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_48

    .line 262
    :goto_36
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 263
    iput-wide v3, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 264
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 265
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    return-void

    :catchall_48
    move-exception v0

    goto/16 :goto_186

    .line 185
    :cond_4b
    :try_start_4b
    array-length v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v8

    :goto_4f
    if-ge v10, v7, :cond_10c

    aget-object v11, v6, v10

    .line 186
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "~~"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_75

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected dir found: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 190
    :cond_75
    iget-object v12, v5, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9b

    .line 191
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Deleting obsolete dir: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {v11}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move/from16 v16, v8

    goto :goto_e9

    .line 196
    :cond_9b
    new-instance v12, Ljava/io/File;

    const-string v13, "font.fsv_sig"

    invoke-direct {v12, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_ae

    .line 198
    const-string v0, "The signature file is missing."

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_4b .. :try_end_ad} :catchall_48

    goto :goto_36

    .line 203
    :cond_ae
    :try_start_ae
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    new-array v14, v8, [Ljava/lang/String;

    invoke-static {v13, v14}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v13

    invoke-static {v13}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v13
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_bc} :catch_105
    .catchall {:try_start_ae .. :try_end_bc} :catchall_48

    .line 209
    :try_start_bc
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    if-eqz v14, :cond_ef

    .line 210
    array-length v15, v14

    move/from16 v16, v8

    const/4 v8, 0x2

    if-eq v15, v8, :cond_c9

    goto :goto_ef

    .line 216
    :cond_c9
    aget-object v8, v14, v16

    invoke-virtual {v8, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d4

    .line 217
    aget-object v8, v14, v0

    goto :goto_d6

    .line 219
    :cond_d4
    aget-object v8, v14, v16

    .line 222
    :goto_d6
    invoke-virtual {v1, v8, v13}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->validateFontFile(Ljava/io/File;[B)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    move-result-object v8

    if-nez v9, :cond_e6

    .line 225
    iget-object v9, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    sget-object v11, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v9, v11}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/text/FontConfig;

    .line 227
    :cond_e6
    invoke-virtual {v1, v8, v9, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z

    :goto_e9
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v16

    goto/16 :goto_4f

    .line 211
    :cond_ef
    :goto_ef
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected files in dir: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 205
    :catch_105
    const-string v0, "Failed to read signature file."

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    :cond_10c
    move/from16 v16, v8

    move/from16 v0, v16

    .line 231
    :goto_110
    iget-object v6, v5, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_185

    .line 232
    iget-object v6, v5, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/fonts/FontUpdateRequest$Family;

    move/from16 v7, v16

    .line 233
    :goto_122
    invoke-virtual {v6}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getFonts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_182

    .line 234
    invoke-virtual {v6}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getFonts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/fonts/FontUpdateRequest$Font;

    .line 235
    iget-object v10, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_143

    goto :goto_159

    :cond_143
    if-nez v9, :cond_14f

    .line 240
    iget-object v9, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    sget-object v10, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v9, v10}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/text/FontConfig;

    .line 243
    :cond_14f
    invoke-virtual {v8}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10, v9}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontByPostScriptName(Ljava/lang/String;Landroid/text/FontConfig;)Landroid/text/FontConfig$Font;

    move-result-object v10

    if-eqz v10, :cond_15c

    :goto_159
    add-int/lit8 v7, v7, 0x1

    goto :goto_122

    .line 247
    :cond_15c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown font that has PostScript name "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v8}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is requested in FontFamily "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v6}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_180
    .catchall {:try_start_bc .. :try_end_180} :catchall_48

    goto/16 :goto_36

    :cond_182
    add-int/lit8 v0, v0, 0x1

    goto :goto_110

    :cond_185
    return-void

    .line 258
    :goto_186
    :try_start_186
    const-string v5, "Failed to load font mappings."

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18b
    .catchall {:try_start_186 .. :try_end_18b} :catchall_18d

    goto/16 :goto_36

    :catchall_18d
    move-exception v0

    .line 262
    iget-object v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 263
    iput-wide v3, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 264
    iget-object v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v2}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 265
    iget-object v1, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 267
    throw v0
.end method

.method public final lookupFontFileInfo(Ljava/lang/String;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .registers 2

    .line 476
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    return-object p0
.end method

.method public final putFontFileInfo(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;)V
    .registers 3

    .line 480
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .registers 3

    .line 657
    new-instance v0, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    invoke-direct {v0}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;-><init>()V

    .line 658
    :try_start_5
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_b} :catch_20

    .line 659
    :try_start_b
    invoke-static {p0, v0}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;->loadFromXml(Ljava/io/InputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_14

    if-eqz p0, :cond_20

    .line 660
    :try_start_10
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_13} :catch_20

    return-object v0

    :catchall_14
    move-exception v1

    if-eqz p0, :cond_1f

    .line 658
    :try_start_17
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception p0

    :try_start_1c
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    throw v1
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_20} :catch_20

    :catch_20
    :cond_20
    return-object v0
.end method

.method public final resolveFontFilesForNamedFamily(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$NamedFamilyList;
    .registers 18

    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getFonts()Ljava/util/List;

    move-result-object v0

    .line 604
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 605
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_6a

    .line 606
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/fonts/FontUpdateRequest$Font;

    move-object/from16 v6, p0

    .line 607
    iget-object v7, v6, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    if-nez v7, :cond_47

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to lookup font file that has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdatableFontDir"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_47
    move-object v5, v7

    .line 612
    new-instance v7, Landroid/text/FontConfig$Font;

    invoke-static {v5}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->-$$Nest$fgetmFile(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v10

    .line 613
    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v11

    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getIndex()I

    move-result v12

    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v7 .. v15}, Landroid/text/FontConfig$Font;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;I)V

    .line 612
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 616
    :cond_6a
    new-instance v0, Landroid/text/FontConfig$FontFamily;

    .line 617
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Landroid/text/FontConfig$FontFamily;-><init>(Ljava/util/List;Landroid/os/LocaleList;I)V

    .line 618
    new-instance v1, Landroid/text/FontConfig$NamedFamilyList;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 619
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, v5}, Landroid/text/FontConfig$NamedFamilyList;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public update(Ljava/util/List;)V
    .registers 10

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/FontUpdateRequest;

    .line 277
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getType()I

    move-result v3

    if-eqz v3, :cond_2d

    if-eq v3, v2, :cond_1a

    goto :goto_4

    .line 283
    :cond_1a
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 279
    :cond_2d
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getSignature()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 289
    :cond_3c
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v1

    .line 291
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    .line 292
    :goto_4d
    iget-object v5, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_67

    .line 293
    iget-object v5, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 294
    invoke-virtual {v5}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 297
    :cond_67
    iget-wide v4, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 300
    :try_start_69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/FontUpdateRequest;

    .line 301
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getType()I

    move-result v6

    if-eqz v6, :cond_91

    if-eq v6, v2, :cond_82

    goto :goto_6d

    .line 307
    :cond_82
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    :catchall_8e
    move-exception p1

    goto/16 :goto_113

    .line 304
    :cond_91
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getSignature()[B

    move-result-object v1

    .line 303
    invoke-virtual {p0, v6, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->installFontFile(Ljava/io/FileDescriptor;[B)V

    goto :goto_6d

    .line 314
    :cond_a1
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 315
    invoke-virtual {p0, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFilesForNamedFamily(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$NamedFamilyList;

    move-result-object v1

    if-eqz v1, :cond_bc

    goto :goto_a9

    .line 316
    :cond_bc
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v1, "Required fonts are not available"

    const/16 v2, -0x9

    invoke-direct {p1, v2, v1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 323
    :cond_c6
    iget-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mCurrentTimeSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 325
    new-instance p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    invoke-direct {p1}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;-><init>()V

    .line 326
    iget-wide v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iput-wide v6, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    .line 327
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_101

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 328
    iget-object v7, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    invoke-virtual {v6}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRandomizedFontDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e7

    .line 330
    :cond_101
    iget-object v1, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->writePersistentConfig(Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V

    .line 332
    iget p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I
    :try_end_112
    .catchall {:try_start_69 .. :try_end_112} :catchall_8e

    return-void

    .line 336
    :goto_113
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 337
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 338
    iput-wide v4, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 340
    throw p1
.end method

.method public final validateFontFile(Ljava/io/File;[B)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .registers 7

    .line 570
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;->isFromTrustedProvider(Ljava/lang/String;[B)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 577
    :try_start_c
    iget-object p2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-interface {p2, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->getPostScriptName(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_3a

    .line 583
    invoke-virtual {p0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontRevision(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_22

    .line 589
    new-instance p0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    return-object p0

    .line 585
    :cond_22
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Font validation failed. Could not read font revision: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x3

    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 579
    :catch_3a
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Font validation failed. Could not read PostScript name name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x4

    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 571
    :cond_52
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Font validation failed. Fs-verity is not enabled: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x2

    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final writePersistentConfig(Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V
    .registers 4

    const/4 v0, 0x0

    .line 670
    :try_start_1
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 671
    invoke-static {v0, p1}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;->writeToXml(Ljava/io/OutputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V

    .line 672
    iget-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    if-eqz v0, :cond_18

    .line 675
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 677
    :cond_18
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v0, -0x6

    const-string v1, "Failed to write config XML."

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
