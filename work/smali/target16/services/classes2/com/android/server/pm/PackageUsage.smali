.class public Lcom/android/server/pm/PackageUsage;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "PackageUsage.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 44
    const-string v0, "PackageUsage_DiskWriter"

    const/4 v1, 0x1

    const-string/jumbo v2, "package-usage.list"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final parseAsLong(Ljava/lang/String;)J
    .registers 5

    .line 138
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p0

    :catch_5
    move-exception p0

    .line 140
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a long."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic readInternal(Ljava/lang/Object;)V
    .registers 2

    .line 38
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageUsage;->readInternal(Ljava/util/Map;)V

    return-void
.end method

.method public readInternal(Ljava/util/Map;)V
    .registers 6

    .line 89
    invoke-virtual {p0}, Lcom/android/server/pm/AbstractStatsBase;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    :try_start_5
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_e} :catch_3c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_34
    .catchall {:try_start_5 .. :try_end_e} :catchall_32

    .line 93
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a

    goto :goto_2e

    .line 98
    :cond_1a
    const-string v3, "PACKAGE_USAGE__VERSION_1"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 99
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/pm/PackageUsage;->readVersion1LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuilder;)V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_25} :catch_2c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_25} :catch_29
    .catchall {:try_start_e .. :try_end_25} :catchall_26

    goto :goto_2e

    :catchall_26
    move-exception p0

    move-object v1, v2

    goto :goto_40

    :catch_29
    move-exception p0

    move-object v1, v2

    goto :goto_35

    :catch_2c
    move-object v1, v2

    goto :goto_3c

    .line 106
    :cond_2e
    :goto_2e
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_32
    move-exception p0

    goto :goto_40

    :catch_34
    move-exception p0

    .line 104
    :goto_35
    :try_start_35
    const-string p1, "PackageManager"

    const-string v0, "Failed to read package usage times"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_32

    .line 106
    :catch_3c
    :goto_3c
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_44

    :goto_40
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 107
    throw p0

    :goto_44
    return-void
.end method

.method public final readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 4

    const/16 v0, 0xa

    .line 145
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/PackageUsage;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final readToken(Ljava/io/InputStream;Ljava/lang/StringBuilder;C)Ljava/lang/String;
    .registers 5

    const/4 p0, 0x0

    .line 150
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 152
    :goto_4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1b

    .line 154
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_13
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected EOF"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    if-ne p0, p3, :cond_22

    .line 160
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    int-to-char p0, p0

    .line 162
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public final readVersion1LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuilder;)V
    .registers 11

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 116
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 117
    array-length v2, v1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_32

    const/4 v0, 0x0

    .line 121
    aget-object v2, v1, v0

    .line 122
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-nez v2, :cond_1d

    goto :goto_0

    :cond_1d
    :goto_1d
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    .line 130
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-object v5, v1, v4

    .line 131
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageUsage;->parseAsLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 130
    invoke-virtual {v3, v0, v5, v6}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setLastPackageUsageTimeInMills(IJ)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move v0, v4

    goto :goto_1d

    .line 118
    :cond_32
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " as a timestamp array."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    return-void
.end method

.method public bridge synthetic writeInternal(Ljava/lang/Object;)V
    .registers 2

    .line 38
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageUsage;->writeInternal(Ljava/util/Map;)V

    return-void
.end method

.method public writeInternal(Ljava/util/Map;)V
    .registers 12

    .line 49
    invoke-virtual {p0}, Lcom/android/server/pm/AbstractStatsBase;->getFile()Landroid/util/AtomicFile;

    move-result-object p0

    .line 52
    :try_start_4
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_a2

    .line 53
    :try_start_8
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 54
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    const/16 v4, 0x408

    const/16 v5, 0x1a0

    invoke-static {v2, v5, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v3, "PACKAGE_USAGE__VERSION_1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 62
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_42
    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v4, :cond_42

    .line 63
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v5

    if-eqz v5, :cond_42

    .line 64
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_65

    goto :goto_42

    :cond_65
    const/4 v5, 0x0

    .line 67
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 68
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    .line 70
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v4

    .line 69
    array-length v6, v4

    :goto_79
    if-ge v5, v6, :cond_8a

    aget-wide v7, v4, v5

    const/16 v9, 0x20

    .line 71
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    :catch_88
    move-exception p1

    goto :goto_a4

    .line 74
    :cond_8a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    goto :goto_42

    .line 77
    :cond_9b
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 78
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_a1} :catch_88

    return-void

    :catch_a2
    move-exception p1

    const/4 v0, 0x0

    :goto_a4
    if-eqz v0, :cond_a9

    .line 81
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 83
    :cond_a9
    const-string p0, "PackageManager"

    const-string v0, "Failed to write package usage times"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
