.class public final Lcom/android/internal/content/F2fsUtils;
.super Ljava/lang/Object;
.source "F2fsUtils.java"


# static fields
.field private static final blacklist COMPRESSION_FEATURE:Ljava/lang/String; = "compression"

.field private static final blacklist DEBUG_F2FS:Z = false

.field public static final blacklist FADVISE_COLD_BIT:I = 0x1

.field public static final blacklist FADVISE_HOT_BIT:I = 0x20

.field private static final blacklist PERMISSION_DENIED:I = -0xd

.field public static final blacklist SYSTEM_ADVISE:Ljava/lang/String; = "system.advise"

.field private static final blacklist TAG:Ljava/lang/String; = "F2fsUtils"

.field private static final blacklist sDataDirectory:Ljava/io/File;

.field private static blacklist sInstalld:Landroid/os/IInstalld;

.field private static final blacklist sKernelCompressionAvailable:Z

.field private static final blacklist sKernelFeatures:Ljava/io/File;

.field private static blacklist sSm:Landroid/os/storage/IStorageManager;

.field private static final blacklist sUserDataCompressionAvailable:Z

.field private static final blacklist sUserDataFeatures:Ljava/io/File;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/fs/f2fs/features"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/content/F2fsUtils;->sKernelFeatures:Ljava/io/File;

    .line 50
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/sys/fs/by-name/userdata/features"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/content/F2fsUtils;->sUserDataFeatures:Ljava/io/File;

    .line 52
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/internal/content/F2fsUtils;->sDataDirectory:Ljava/io/File;

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/content/F2fsUtils;->sInstalld:Landroid/os/IInstalld;

    .line 65
    sput-object v0, Lcom/android/internal/content/F2fsUtils;->sSm:Landroid/os/storage/IStorageManager;

    .line 69
    invoke-static {}, Lcom/android/internal/content/F2fsUtils;->isCompressionEnabledInKernel()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/content/F2fsUtils;->sKernelCompressionAvailable:Z

    .line 70
    nop

    .line 75
    invoke-static {}, Lcom/android/internal/content/F2fsUtils;->isCompressionEnabledOnUserData()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/content/F2fsUtils;->sUserDataCompressionAvailable:Z

    .line 76
    nop

    .line 81
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist compressRelease(Ljava/io/File;)J
    .registers 10
    .param p0, "file"    # Ljava/io/File;

    .line 142
    invoke-static {}, Lcom/android/internal/content/F2fsUtils;->isCompressModeUserForData()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_9

    .line 143
    return-wide v1

    .line 145
    :cond_9
    invoke-static {p0}, Lcom/android/internal/content/F2fsUtils;->isCompressionAllowed(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 149
    return-wide v1

    .line 152
    :cond_10
    const-wide/16 v3, 0x0

    .line 153
    .local v3, "blksum":J
    invoke-static {p0}, Lcom/android/internal/content/F2fsUtils;->getFilesToRelease(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 154
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_52

    array-length v5, v0

    if-nez v5, :cond_1c

    goto :goto_52

    .line 161
    :cond_1c
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1f
    if-ltz v1, :cond_51

    .line 162
    sget-object v2, Lcom/android/internal/content/F2fsUtils;->sInstalld:Landroid/os/IInstalld;

    if-nez v2, :cond_31

    .line 163
    const-string v2, "installd"

    invoke-static {v2}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v2

    sput-object v2, Lcom/android/internal/content/F2fsUtils;->sInstalld:Landroid/os/IInstalld;

    .line 166
    :cond_31
    :try_start_31
    sget-object v2, Lcom/android/internal/content/F2fsUtils;->sInstalld:Landroid/os/IInstalld;

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/os/IInstalld;->compressRelease(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3d} :catch_4d

    .line 167
    .local v5, "blkcnt":J
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_45

    .line 168
    add-long/2addr v3, v5

    goto :goto_4c

    .line 169
    :cond_45
    const-wide/16 v7, -0xd

    cmp-long v2, v5, v7

    if-nez v2, :cond_4c

    .line 173
    goto :goto_51

    .line 179
    .end local v5    # "blkcnt":J
    :cond_4c
    :goto_4c
    goto :goto_4e

    .line 175
    :catch_4d
    move-exception v2

    .line 161
    :goto_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    .line 184
    .end local v1    # "i":I
    :cond_51
    :goto_51
    return-wide v3

    .line 158
    :cond_52
    :goto_52
    return-wide v1
.end method

.method private static blacklist getFilesRecursive(Ljava/io/File;)Ljava/util/List;
    .registers 7
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 326
    .local v0, "allFiles":[Ljava/io/File;
    if-nez v0, :cond_8

    .line 327
    const/4 v1, 0x0

    return-object v1

    .line 329
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_2d

    aget-object v4, v0, v3

    .line 331
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 332
    invoke-static {v4}, Lcom/android/internal/content/F2fsUtils;->getFilesRecursive(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2a

    .line 333
    :cond_21
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 334
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v4    # "f":Ljava/io/File;
    :cond_2a
    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 337
    :cond_2d
    return-object v1
.end method

.method private static blacklist getFilesToRelease(Ljava/io/File;)[Ljava/io/File;
    .registers 4
    .param p0, "codePath"    # Ljava/io/File;

    .line 344
    invoke-static {p0}, Lcom/android/internal/content/F2fsUtils;->getFilesRecursive(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 345
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 346
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 347
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    return-object v1

    .line 349
    :cond_14
    return-object v1

    .line 351
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1c

    .line 352
    return-object v1

    .line 354
    :cond_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    return-object v1
.end method

.method private static blacklist isChild(Ljava/io/File;Ljava/lang/String;)Z
    .registers 5
    .param p0, "base"    # Ljava/io/File;
    .param p1, "childPath"    # Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    move-object p0, v1

    .line 231
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 232
    .local v1, "parentFile":Ljava/io/File;
    :goto_f
    if-eqz v1, :cond_1f

    .line 233
    invoke-virtual {p0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 234
    const/4 v0, 0x1

    return v0

    .line 236
    :cond_19
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_20

    move-object v1, v2

    goto :goto_f

    .line 238
    :cond_1f
    return v0

    .line 239
    .end local v1    # "parentFile":Ljava/io/File;
    :catch_20
    move-exception v1

    .line 240
    .local v1, "ignore":Ljava/io/IOException;
    return v0
.end method

.method public static blacklist isCompressModeUserForData()Z
    .registers 2

    .line 359
    sget-boolean v0, Lcom/android/internal/content/F2fsUtils;->sKernelCompressionAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    sget-boolean v0, Lcom/android/internal/content/F2fsUtils;->sUserDataCompressionAvailable:Z

    if-nez v0, :cond_a

    goto :goto_19

    .line 362
    :cond_a
    sget-object v0, Lcom/android/internal/content/F2fsUtils;->sDataDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/content/F2fsUtils;->nativeIsCompressModeUser(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 366
    return v1

    .line 368
    :cond_17
    const/4 v0, 0x1

    return v0

    .line 360
    :cond_19
    :goto_19
    return v1
.end method

.method private static blacklist isCompressionAllowed(Ljava/io/File;)Z
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .line 199
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_18

    .line 205
    .local v1, "filePath":Ljava/lang/String;
    nop

    .line 206
    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 210
    return v0

    .line 212
    :cond_d
    sget-object v2, Lcom/android/internal/content/F2fsUtils;->sDataDirectory:Ljava/io/File;

    invoke-static {v2, v1}, Lcom/android/internal/content/F2fsUtils;->isChild(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 216
    return v0

    .line 221
    :cond_16
    const/4 v0, 0x1

    return v0

    .line 200
    .end local v1    # "filePath":Ljava/lang/String;
    :catch_18
    move-exception v1

    .line 204
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method

.method private static blacklist isCompressionEnabledInKernel()Z
    .registers 7

    .line 252
    sget-object v0, Lcom/android/internal/content/F2fsUtils;->sKernelFeatures:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 253
    .local v0, "features":[Ljava/io/File;
    const/4 v1, 0x0

    if-eqz v0, :cond_27

    array-length v2, v0

    if-nez v2, :cond_d

    goto :goto_27

    .line 259
    :cond_d
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_10
    if-ltz v2, :cond_26

    .line 260
    aget-object v4, v0, v2

    .line 261
    .local v4, "feature":Ljava/io/File;
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "compression"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 265
    return v3

    .line 259
    .end local v4    # "feature":Ljava/io/File;
    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 271
    .end local v2    # "i":I
    :cond_26
    return v1

    .line 257
    :cond_27
    :goto_27
    return v1
.end method

.method private static blacklist isCompressionEnabledOnUserData()Z
    .registers 7

    .line 281
    sget-object v0, Lcom/android/internal/content/F2fsUtils;->sUserDataFeatures:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5b

    .line 282
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 283
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_5b

    .line 291
    :cond_16
    :try_start_16
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1e} :catch_59

    .line 297
    .local v0, "configLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 298
    if-eqz v0, :cond_58

    .line 299
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_58

    .line 300
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_58

    .line 306
    :cond_35
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "features":[Ljava/lang/String;
    array-length v4, v1

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_43
    if-ltz v4, :cond_57

    .line 308
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "compression"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 312
    return v3

    .line 307
    :cond_54
    add-int/lit8 v4, v4, -0x1

    goto :goto_43

    .line 318
    .end local v4    # "i":I
    :cond_57
    return v2

    .line 304
    .end local v1    # "features":[Ljava/lang/String;
    :cond_58
    :goto_58
    return v2

    .line 292
    .end local v0    # "configLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_59
    move-exception v0

    .line 296
    .local v0, "ignore":Ljava/io/IOException;
    return v2

    .line 287
    .end local v0    # "ignore":Ljava/io/IOException;
    :cond_5b
    :goto_5b
    return v2
.end method

.method private static native blacklist nativeIsCompressModeUser(Ljava/lang/String;)Z
.end method

.method private static native blacklist nativeReleaseCompressedBlocks(Ljava/lang/String;)J
.end method

.method public static blacklist releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "file"    # Ljava/io/File;

    .line 101
    sget-boolean v0, Lcom/android/internal/content/F2fsUtils;->sKernelCompressionAvailable:Z

    if-eqz v0, :cond_3d

    sget-boolean v0, Lcom/android/internal/content/F2fsUtils;->sUserDataCompressionAvailable:Z

    if-nez v0, :cond_9

    goto :goto_3d

    .line 110
    :cond_9
    nop

    .line 111
    const-string/jumbo v0, "release_compress_blocks_on_install"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 112
    .local v0, "releaseCompressBlocks":Z
    :goto_17
    if-nez v0, :cond_1a

    .line 116
    return-void

    .line 118
    :cond_1a
    invoke-static {p1}, Lcom/android/internal/content/F2fsUtils;->isCompressionAllowed(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 122
    return-void

    .line 124
    :cond_21
    invoke-static {p1}, Lcom/android/internal/content/F2fsUtils;->getFilesToRelease(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    .line 125
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_3c

    array-length v3, v2

    if-nez v3, :cond_2b

    goto :goto_3c

    .line 131
    :cond_2b
    array-length v3, v2

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_2d
    if-ltz v3, :cond_3b

    .line 132
    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/content/F2fsUtils;->nativeReleaseCompressedBlocks(Ljava/lang/String;)J

    .line 131
    add-int/lit8 v3, v3, -0x1

    goto :goto_2d

    .line 138
    .end local v3    # "i":I
    :cond_3b
    return-void

    .line 129
    :cond_3c
    :goto_3c
    return-void

    .line 102
    .end local v0    # "releaseCompressBlocks":Z
    .end local v2    # "files":[Ljava/io/File;
    :cond_3d
    :goto_3d
    return-void
.end method

.method public static blacklist runFileDefrag(Ljava/lang/String;I)I
    .registers 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "maxAllowedDefragSizeKB"    # I

    .line 372
    const-string v0, "F2fsUtils"

    sget-object v1, Lcom/android/internal/content/F2fsUtils;->sInstalld:Landroid/os/IInstalld;

    if-nez v1, :cond_12

    .line 373
    const-string v1, "installd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v1

    sput-object v1, Lcom/android/internal/content/F2fsUtils;->sInstalld:Landroid/os/IInstalld;

    .line 374
    :cond_12
    const/4 v1, 0x0

    .line 376
    .local v1, "res":I
    const/16 v2, -0xd

    :try_start_15
    sget-object v3, Lcom/android/internal/content/F2fsUtils;->sInstalld:Landroid/os/IInstalld;

    invoke-interface {v3, p0, p1}, Landroid/os/IInstalld;->runFileDefrag(Ljava/lang/String;I)I

    move-result v3
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1b} :catch_20

    move v1, v3

    .line 377
    if-eq v1, v2, :cond_1f

    .line 378
    return v1

    .line 382
    :cond_1f
    goto :goto_28

    .line 379
    :catch_20
    move-exception v3

    .line 380
    .local v3, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 381
    const-string/jumbo v4, "run defrag failed by installd: "

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_28
    sget-object v3, Lcom/android/internal/content/F2fsUtils;->sSm:Landroid/os/storage/IStorageManager;

    if-nez v3, :cond_39

    .line 385
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v3

    sput-object v3, Lcom/android/internal/content/F2fsUtils;->sSm:Landroid/os/storage/IStorageManager;

    .line 387
    :cond_39
    :try_start_39
    sget-object v3, Lcom/android/internal/content/F2fsUtils;->sSm:Landroid/os/storage/IStorageManager;

    invoke-interface {v3, p0, p1}, Landroid/os/storage/IStorageManager;->runFileDefrag(Ljava/lang/String;I)I

    move-result v3

    move v1, v3

    .line 388
    if-ne v1, v2, :cond_47

    .line 389
    const-string v2, "Permission denied"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_47} :catch_48

    .line 394
    :cond_47
    goto :goto_50

    .line 391
    :catch_48
    move-exception v2

    .line 392
    .local v2, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 393
    const-string/jumbo v3, "run defrag failed by vold: "

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_50
    return v1
.end method
