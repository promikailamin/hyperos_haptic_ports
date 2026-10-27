.class public final Lmiui/content/res/ThemeZipFile;
.super Ljava/lang/Object;
.source "ThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/ThemeZipFile$MyZipFile;
    }
.end annotation


# static fields
.field static blacklist DBG:Z = false

.field private static final blacklist FUZZY_SEARCH_ICON_SUFFIX:Ljava/lang/String; = "#*.png"

.field static blacklist TAG:Ljava/lang/String; = null

.field public static final blacklist THEME_FALLBACK_FILE:Ljava/lang/String; = "theme_fallback.xml"

.field public static final blacklist THEME_VALUE_FILE:Ljava/lang/String; = "theme_values.xml"

.field public static final blacklist THEME_VALUE_FILE_NAME:Ljava/lang/String; = "theme_values"

.field public static final blacklist THEME_VALUE_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final blacklist sDensity:I

.field private static final blacklist sFallbackDensities:[I

.field protected static final blacklist sThemeZipFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/content/res/ThemeZipFile;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private volatile blacklist mLastModifiedTime:J

.field private blacklist mMetaData:Lmiui/content/res/ThemeResources$MetaData;

.field private blacklist mPath:Ljava/lang/String;

.field private blacklist mUpatedTime:J

.field private blacklist mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    sget-boolean v0, Lmiui/content/res/ThemeResources;->DBG:Z

    sput-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    .line 33
    const-string v0, "ThemeZipFile"

    sput-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    .line 35
    sget v0, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Lmiui/content/res/ThemeZipFile;->sDensity:I

    .line 36
    invoke-static {v0}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getFallbackOrder(I)[I

    move-result-object v0

    sput-object v0, Lmiui/content/res/ThemeZipFile;->sFallbackDensities:[I

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .registers 6
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "metaData"    # Lmiui/content/res/ThemeResources$MetaData;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    .line 72
    sget-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v0, :cond_23

    sget-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create ThemeZipFile for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_23
    iput-object p1, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lmiui/content/res/ThemeZipFile;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    .line 75
    return-void
.end method

.method private blacklist clean()V
    .registers 4

    .line 335
    sget-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clean for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1e
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    if-eqz v0, :cond_2a

    .line 339
    :try_start_22
    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile$MyZipFile;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    .line 341
    goto :goto_27

    .line 340
    :catch_26
    move-exception v0

    .line 342
    :goto_27
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    .line 344
    :cond_2a
    return-void
.end method

.method private blacklist getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .registers 15
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "path"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xa0

    if-eqz v0, :cond_13

    .line 139
    iget v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    iget v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    :goto_10
    iput v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    .line 140
    return v1

    .line 143
    :cond_13
    const-string v0, "/drawable"

    .line 144
    .local v0, "drawableTag":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 145
    .local v3, "drawableTagEndIndex":I
    if-gez v3, :cond_21

    .line 146
    const-string v0, "/raw"

    .line 147
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 149
    :cond_21
    const/4 v4, 0x0

    if-gtz v3, :cond_25

    .line 150
    return v4

    .line 152
    :cond_25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    .line 154
    invoke-direct {p0, p2, v3}, Lmiui/content/res/ThemeZipFile;->regularDpiFallbackPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "regularPath":Ljava/lang/String;
    if-eq p2, v5, :cond_41

    .line 156
    move-object p2, v5

    .line 157
    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 158
    iget v4, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    if-nez v4, :cond_3c

    goto :goto_3e

    :cond_3c
    iget v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    :goto_3e
    iput v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    .line 159
    return v1

    .line 162
    :cond_41
    const/16 v1, 0x2f

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 163
    .local v1, "drawablePathEndIndex":I
    if-gez v1, :cond_4a

    .line 164
    return v4

    .line 166
    :cond_4a
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v6

    .line 167
    .local v6, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    invoke-virtual {v6, p2, v3}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 168
    const/4 v7, 0x0

    .line 169
    .local v7, "result":Z
    sget-object v8, Lmiui/content/res/ThemeZipFile;->sFallbackDensities:[I

    array-length v9, v8

    :goto_55
    if-ge v4, v9, :cond_84

    aget v10, v8, v4

    .line 170
    .local v10, "density":I
    iget v11, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    if-ne v10, v11, :cond_5e

    goto :goto_81

    .line 172
    :cond_5e
    invoke-virtual {v6, v3}, Lmiui/content/res/FixedSizeStringBuffer;->setLength(I)V

    .line 173
    invoke-static {v10}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, p2, v1, v11}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    .line 175
    invoke-virtual {v6}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_81

    .line 176
    if-nez v10, :cond_7c

    goto :goto_7d

    :cond_7c
    move v2, v10

    :goto_7d
    iput v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    .line 177
    const/4 v7, 0x1

    .line 178
    goto :goto_84

    .line 169
    .end local v10    # "density":I
    :cond_81
    :goto_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 181
    :cond_84
    :goto_84
    invoke-static {v6}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .line 182
    return v7
.end method

.method protected static blacklist getThemeZipFile(Lmiui/content/res/ThemeResources$MetaData;Ljava/lang/String;)Lmiui/content/res/ThemeZipFile;
    .registers 8
    .param p0, "metaData"    # Lmiui/content/res/ThemeResources$MetaData;
    .param p1, "componentName"    # Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "path":Ljava/lang/String;
    sget-object v1, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 50
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    const/4 v3, 0x0

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/content/res/ThemeZipFile;

    goto :goto_26

    :cond_25
    move-object v4, v3

    .line 51
    .local v4, "zipFile":Lmiui/content/res/ThemeZipFile;
    :goto_26
    if-nez v4, :cond_4f

    .line 52
    monitor-enter v1

    .line 53
    :try_start_29
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v2, v5

    .line 54
    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/content/res/ThemeZipFile;

    :cond_38
    move-object v4, v3

    .line 55
    if-nez v4, :cond_4a

    .line 56
    new-instance v3, Lmiui/content/res/ThemeZipFile;

    invoke-direct {v3, v0, p0}, Lmiui/content/res/ThemeZipFile;-><init>(Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    move-object v4, v3

    .line 57
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v2, v3

    .line 58
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_4a
    monitor-exit v1

    goto :goto_4f

    :catchall_4c
    move-exception v3

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_29 .. :try_end_4e} :catchall_4c

    throw v3

    .line 62
    :cond_4f
    :goto_4f
    return-object v4
.end method

.method private blacklist getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .registers 10
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "path"    # Ljava/lang/String;

    .line 295
    const-string v0, "#*.png"

    const/4 v1, 0x0

    .line 296
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 297
    nop

    .line 298
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v3, v0

    .line 297
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "fuzzyIconName":Ljava/lang/String;
    iget-object v3, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v3}, Lmiui/content/res/ThemeZipFile$MyZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 300
    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_1e
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 301
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 302
    .local v4, "enumEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 303
    goto :goto_1e

    .line 305
    :cond_31
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 306
    move-object v1, v4

    .line 307
    goto :goto_3e

    .line 309
    .end local v4    # "enumEntry":Ljava/util/zip/ZipEntry;
    :cond_3d
    goto :goto_1e

    .line 310
    .end local v0    # "fuzzyIconName":Ljava/lang/String;
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_3e
    :goto_3e
    goto :goto_46

    .line 311
    :cond_3f
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v0, p2}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    move-object v1, v0

    .line 314
    :goto_46
    if-eqz v1, :cond_69

    .line 315
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    iput-wide v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outSize:J

    .line 316
    iget-boolean v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inRequestStream:Z

    if-eqz v0, :cond_5f

    .line 317
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    .line 318
    iget-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_5f

    return v2

    .line 320
    :cond_5f
    iget-wide v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outSize:J
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_61} :catch_6a

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_68

    const/4 v2, 0x1

    :cond_68
    return v2

    .line 324
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_69
    goto :goto_6e

    .line 322
    :catch_6a
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6e
    return v2
.end method

.method private blacklist loadThemeConfigInner(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;Lmiui/content/res/ThemeResources$ConfigType;)V
    .registers 5
    .param p1, "callback"    # Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "type"    # Lmiui/content/res/ThemeResources$ConfigType;

    .line 272
    invoke-virtual {p0, p2}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 273
    .local v0, "input":Ljava/io/InputStream;
    if-eqz v0, :cond_9

    .line 274
    invoke-interface {p1, v0, p3}, Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;->load(Ljava/io/InputStream;Lmiui/content/res/ThemeResources$ConfigType;)V

    .line 276
    :cond_9
    return-void
.end method

.method private blacklist regularDpiFallbackPath(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "drawableTagEndIndex"    # I

    .line 192
    const/16 v0, 0x2f

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 193
    .local v0, "drawablePathEndIndex":I
    if-ltz v0, :cond_4b

    add-int/lit8 v1, p2, 0x1

    if-ne v0, v1, :cond_d

    goto :goto_4b

    .line 199
    :cond_d
    const-string v1, ""

    .line 200
    .local v1, "dpiTag":Ljava/lang/String;
    const-string v2, "dpi"

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 201
    .local v3, "dpiStartIndex":I
    if-lez v3, :cond_32

    .line 202
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    .line 203
    .local v2, "dpiEndIndex":I
    :goto_1c
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_29

    if-le v3, p2, :cond_29

    .line 204
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 206
    :cond_29
    if-ne v3, p2, :cond_2e

    if-ne v2, v0, :cond_2e

    .line 208
    return-object p1

    .line 210
    :cond_2e
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 214
    .end local v2    # "dpiEndIndex":I
    :cond_32
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v2

    .line 215
    .local v2, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    invoke-virtual {v2, p1, p2}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 216
    invoke-virtual {v2, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, p1, v0, v4}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    .line 218
    invoke-virtual {v2}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "ret":Ljava/lang/String;
    invoke-static {v2}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .line 221
    return-object v4

    .line 195
    .end local v1    # "dpiTag":Ljava/lang/String;
    .end local v2    # "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    .end local v3    # "dpiStartIndex":I
    .end local v4    # "ret":Ljava/lang/String;
    :cond_4b
    :goto_4b
    return-object p1
.end method

.method private blacklist trimVersionPart(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "dpiEndIndex"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 226
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ge p1, v0, :cond_4b

    .line 227
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_4b

    add-int/lit8 v0, p1, 0x1

    .line 228
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_4b

    .line 229
    add-int/lit8 v0, p1, 0x2

    .line 230
    .local v0, "versionEndIndex":I
    :goto_1c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 231
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 232
    .local v1, "ch":C
    const/16 v2, 0x30

    if-lt v1, v2, :cond_32

    const/16 v2, 0x39

    if-le v1, v2, :cond_2f

    .line 233
    goto :goto_32

    .line 230
    .end local v1    # "ch":C
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 236
    :cond_32
    :goto_32
    add-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_4b

    .line 237
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v1

    .line 238
    .local v1, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    invoke-virtual {v1, p2, p1}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 239
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p2, v0, v2}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    .line 240
    invoke-virtual {v1}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 241
    invoke-static {v1}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .line 244
    .end local v0    # "versionEndIndex":I
    .end local v1    # "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    :cond_4b
    return-object p2
.end method


# virtual methods
.method blacklist checkUpdate()J
    .registers 7

    .line 78
    sget-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUpdate for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1e
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 82
    .local v1, "lastModified":J
    iget-wide v3, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    .line 83
    invoke-static {v3}, Lmiui/content/res/ThemeCompatibility;->isCompatibleResource(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 84
    monitor-enter p0

    .line 85
    :try_start_38
    iget-wide v3, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_79

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lmiui/content/res/ThemeZipFile;->mUpatedTime:J

    .line 87
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->clean()V

    .line 89
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_77

    .line 90
    sget-boolean v3, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v3, :cond_6b

    sget-object v3, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openZipFile for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_38 .. :try_end_6b} :catchall_7b

    .line 92
    :cond_6b
    :try_start_6b
    new-instance v3, Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-direct {v3, p0, v0}, Lmiui/content/res/ThemeZipFile$MyZipFile;-><init>(Lmiui/content/res/ThemeZipFile;Ljava/io/File;)V

    iput-object v3, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_72} :catch_73
    .catchall {:try_start_6b .. :try_end_72} :catchall_7b

    .line 95
    goto :goto_77

    .line 93
    :catch_73
    move-exception v3

    .line 94
    .local v3, "e":Ljava/lang/Exception;
    :try_start_74
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_77
    :goto_77
    iput-wide v1, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    .line 99
    :cond_79
    monitor-exit p0

    goto :goto_7e

    :catchall_7b
    move-exception v3

    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_7b

    throw v3

    .line 102
    :cond_7e
    :goto_7e
    iget-wide v3, p0, Lmiui/content/res/ThemeZipFile;->mUpatedTime:J

    return-wide v3
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 330
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->clean()V

    .line 331
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 332
    return-void
.end method

.method blacklist getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .registers 7
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 113
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    iget-boolean v0, v0, Lmiui/content/res/ThemeResources$MetaData;->mSupportFile:Z

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_6f

    .line 115
    :cond_d
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v0

    .line 116
    .local v0, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 117
    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 119
    :cond_1e
    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "path":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lmiui/content/res/ThemeZipFile;->getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v2

    .line 123
    .local v2, "result":Z
    const-string v3, "png"

    if-nez v2, :cond_4c

    const-string v4, ".9.png"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 124
    const-string v4, "9.png"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v0, v4}, Lmiui/content/res/FixedSizeStringBuffer;->move(I)V

    .line 125
    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lmiui/content/res/ThemeZipFile;->getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v2

    .line 128
    :cond_4c
    if-nez v2, :cond_6b

    const-string v4, ".webp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 129
    const-string v4, "webp"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v0, v4}, Lmiui/content/res/FixedSizeStringBuffer;->move(I)V

    .line 130
    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lmiui/content/res/ThemeZipFile;->getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v2

    .line 133
    :cond_6b
    invoke-static {v0}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .line 134
    return v2

    .line 113
    .end local v0    # "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "result":Z
    :cond_6f
    :goto_6f
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 279
    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 281
    :cond_8
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 282
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_1b

    .line 284
    :try_start_10
    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v2, v0}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_17

    return-object v1

    .line 285
    :catch_17
    move-exception v2

    .line 286
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 289
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1b
    return-object v1
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 109
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist loadThemeConfig(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;)V
    .registers 7
    .param p1, "callback"    # Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;
    .param p2, "basePath"    # Ljava/lang/String;

    .line 248
    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 250
    :cond_7
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v0

    .line 253
    .local v0, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    invoke-virtual {v0, p2}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;)V

    .line 254
    const-string v1, "theme_values"

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 255
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmiui/content/res/ThemeResources$ConfigType;->THEME_VALUES:Lmiui/content/res/ThemeResources$ConfigType;

    invoke-direct {p0, p1, v2, v3}, Lmiui/content/res/ThemeZipFile;->loadThemeConfigInner(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;Lmiui/content/res/ThemeResources$ConfigType;)V

    .line 258
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v2}, Lmiui/content/res/FixedSizeStringBuffer;->move(I)V

    .line 259
    sget v2, Lmiui/content/res/ThemeZipFile;->sDensity:I

    invoke-static {v2}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/content/res/ThemeResources$ConfigType;->THEME_VALUES:Lmiui/content/res/ThemeResources$ConfigType;

    invoke-direct {p0, p1, v1, v2}, Lmiui/content/res/ThemeZipFile;->loadThemeConfigInner(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;Lmiui/content/res/ThemeResources$ConfigType;)V

    .line 264
    invoke-virtual {v0, p2}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;)V

    .line 265
    const-string v1, "theme_fallback.xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/content/res/ThemeResources$ConfigType;->THEME_FALLBACK:Lmiui/content/res/ThemeResources$ConfigType;

    invoke-direct {p0, p1, v1, v2}, Lmiui/content/res/ThemeZipFile;->loadThemeConfigInner(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;Lmiui/content/res/ThemeResources$ConfigType;)V

    .line 268
    invoke-static {v0}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .line 269
    return-void
.end method
