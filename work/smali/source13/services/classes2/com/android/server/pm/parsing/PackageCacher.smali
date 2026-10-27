.class public Lcom/android/server/pm/parsing/PackageCacher;
.super Ljava/lang/Object;
.source "PackageCacher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageCacher"

.field public static final sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mCacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 2
    .param p1, "cacheDir"    # Ljava/io/File;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    .line 56
    return-void
.end method

.method public static fromCacheEntryStatic([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 5
    .param p0, "bytes"    # [B

    .line 77
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 78
    .local v0, "p":Landroid/os/Parcel;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 79
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    new-instance v1, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;-><init>(Landroid/os/Parcel;)V

    .line 83
    .local v1, "helper":Landroid/content/pm/PackageParserCacheHelper$ReadHelper;
    invoke-virtual {v1}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->startAndInstall()V

    .line 85
    new-instance v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    invoke-direct {v2, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;-><init>(Landroid/os/Parcel;)V

    .line 87
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 89
    sget-object v3, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 91
    return-object v2
.end method

.method private getCacheKey(Ljava/io/File;I)Ljava/lang/String;
    .registers 5
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z
    .registers 9
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "cacheFile"    # Ljava/io/File;

    .line 125
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 126
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/pm/ApexManager;->getBackingApexFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 127
    .local v1, "backingApexFile":Ljava/io/File;
    if-nez v1, :cond_3a

    .line 128
    const-string v2, "PackageCacher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find APEX file backing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 129
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 131
    :cond_3a
    move-object p0, v1

    .line 137
    .end local v1    # "backingApexFile":Ljava/io/File;
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 138
    .local v1, "pkg":Landroid/system/StructStat;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    .line 139
    .local v2, "cache":Landroid/system/StructStat;
    iget-wide v3, v1, Landroid/system/StructStat;->st_mtime:J

    iget-wide v5, v2, Landroid/system/StructStat;->st_mtime:J
    :try_end_4f
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_4f} :catch_55

    cmp-long v3, v3, v5

    if-gez v3, :cond_54

    const/4 v0, 0x1

    :cond_54
    return v0

    .line 140
    .end local v1    # "pkg":Landroid/system/StructStat;
    .end local v2    # "cache":Landroid/system/StructStat;
    :catch_55
    move-exception v1

    .line 151
    .local v1, "ee":Landroid/system/ErrnoException;
    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->ENOENT:I

    if-eq v2, v3, :cond_61

    .line 152
    const-string v2, "Error while stating package cache : "

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    :cond_61
    return v0
.end method

.method static synthetic lambda$cleanCachedResult$0(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 222
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static toCacheEntryStatic(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)[B
    .registers 5
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 104
    .local v0, "p":Landroid/os/Parcel;
    new-instance v1, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;-><init>(Landroid/os/Parcel;)V

    .line 107
    .local v1, "helper":Landroid/content/pm/PackageParserCacheHelper$WriteHelper;
    move-object v2, p0

    check-cast v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 109
    invoke-virtual {v1}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->finishAndUninstall()V

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 112
    .local v2, "serialized":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    return-object v2
.end method


# virtual methods
.method public cacheResult(Ljava/io/File;ILcom/android/server/pm/parsing/pkg/ParsedPackage;)V
    .registers 11
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .param p3, "parsed"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 190
    const-string v0, "PackageCacher"

    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/parsing/PackageCacher;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "cacheKey":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    .local v2, "cacheFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 194
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete cache file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2f
    invoke-virtual {p0, p3}, Lcom/android/server/pm/parsing/PackageCacher;->toCacheEntry(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)[B

    move-result-object v3
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_56

    .line 201
    .local v3, "cacheEntry":[B
    if-nez v3, :cond_36

    .line 202
    return-void

    .line 205
    :cond_36
    :try_start_36
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_4c
    .catchall {:try_start_36 .. :try_end_3b} :catchall_56

    .line 206
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_3b
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_42

    .line 207
    :try_start_3e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_4c
    .catchall {:try_start_3e .. :try_end_41} :catchall_56

    .line 210
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_55

    .line 205
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_42
    move-exception v5

    :try_start_43
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception v6

    :try_start_48
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "cacheKey":Ljava/lang/String;
    .end local v2    # "cacheFile":Ljava/io/File;
    .end local v3    # "cacheEntry":[B
    .end local p0    # "this":Lcom/android/server/pm/parsing/PackageCacher;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "flags":I
    .end local p3    # "parsed":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :goto_4b
    throw v5
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4c} :catch_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_56

    .line 207
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "cacheKey":Ljava/lang/String;
    .restart local v2    # "cacheFile":Ljava/io/File;
    .restart local v3    # "cacheEntry":[B
    .restart local p0    # "this":Lcom/android/server/pm/parsing/PackageCacher;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "flags":I
    .restart local p3    # "parsed":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :catch_4c
    move-exception v4

    .line 208
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_4d
    const-string v5, "Error writing cache entry."

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_56

    .line 213
    .end local v1    # "cacheKey":Ljava/lang/String;
    .end local v2    # "cacheFile":Ljava/io/File;
    .end local v3    # "cacheEntry":[B
    .end local v4    # "ioe":Ljava/io/IOException;
    :goto_55
    goto :goto_5c

    .line 211
    :catchall_56
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "Error saving package cache."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_5c
    return-void
.end method

.method public cleanCachedResult(Ljava/io/File;)V
    .registers 9
    .param p1, "packageFile"    # Ljava/io/File;

    .line 220
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    new-instance v2, Lcom/android/server/pm/parsing/PackageCacher$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/pm/parsing/PackageCacher$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 223
    .local v1, "files":[Ljava/io/File;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_36

    aget-object v4, v1, v3

    .line 224
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_33

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to clean cache file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageCacher"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v4    # "file":Ljava/io/File;
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 228
    :cond_36
    return-void
.end method

.method protected fromCacheEntry([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 3
    .param p1, "bytes"    # [B

    .line 71
    invoke-static {p1}, Lcom/android/server/pm/parsing/PackageCacher;->fromCacheEntryStatic([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    return-object v0
.end method

.method public getCachedResult(Ljava/io/File;I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 9
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/parsing/PackageCacher;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "cacheKey":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    .local v1, "cacheFile":Ljava/io/File;
    const/4 v2, 0x0

    :try_start_c
    invoke-static {p1, v1}, Lcom/android/server/pm/parsing/PackageCacher;->isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 170
    return-object v2

    .line 173
    :cond_13
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 174
    .local v3, "bytes":[B
    invoke-virtual {p0, v3}, Lcom/android/server/pm/parsing/PackageCacher;->fromCacheEntry([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v2
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_20

    return-object v2

    .line 175
    .end local v3    # "bytes":[B
    :catchall_20
    move-exception v3

    .line 176
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "PackageCacher"

    const-string v5, "Error reading package cache: "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 181
    return-object v2
.end method

.method protected toCacheEntry(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)[B
    .registers 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 96
    invoke-static {p1}, Lcom/android/server/pm/parsing/PackageCacher;->toCacheEntryStatic(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)[B

    move-result-object v0

    return-object v0
.end method
