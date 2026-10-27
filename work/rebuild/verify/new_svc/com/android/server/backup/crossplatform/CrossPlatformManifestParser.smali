.class public Lcom/android/server/backup/crossplatform/CrossPlatformManifestParser;
.super Ljava/lang/Object;
.source "CrossPlatformManifestParser.java"


# instance fields
.field public final mInput:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/backup/crossplatform/CrossPlatformManifestParser;->mInput:Ljava/io/InputStream;

    return-void
.end method

.method public static parse([B)Lcom/android/server/backup/crossplatform/CrossPlatformManifest;
    .registers 3

    .line 49
    new-instance v0, Lcom/android/server/backup/crossplatform/CrossPlatformManifestParser;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/android/server/backup/crossplatform/CrossPlatformManifestParser;-><init>(Ljava/io/InputStream;)V

    .line 51
    invoke-virtual {v0}, Lcom/android/server/backup/crossplatform/CrossPlatformManifestParser;->parse()Lcom/android/server/backup/crossplatform/CrossPlatformManifest;

    move-result-object p0

    return-object p0
.end method

.method public static parseInt(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 148
    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final parse()Lcom/android/server/backup/crossplatform/CrossPlatformManifest;
    .registers 8

    .line 66
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/android/server/backup/crossplatform/CrossPlatformManifestParser;->mInput:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 67
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 72
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 77
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_76

    .line 82
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/backup/crossplatform/CrossPlatformManifestParser;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_6e

    .line 87
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 88
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_44

    .line 89
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/server/backup/crossplatform/CrossPlatformManifestParser;->parsePlatformSpecificParams(Ljava/io/BufferedReader;I)Ljava/util/List;

    move-result-object v3

    goto :goto_45

    :catchall_42
    move-exception p0

    goto :goto_9d

    :cond_44
    move-object v3, v4

    .line 92
    :goto_45
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/backup/crossplatform/CrossPlatformManifestParser;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_66

    .line 98
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_5d

    .line 99
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/android/server/backup/crossplatform/CrossPlatformManifestParser;->parseSignatureHashes(Ljava/io/BufferedReader;I)Ljava/util/List;

    move-result-object v4

    .line 102
    :cond_5d
    new-instance p0, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_62
    .catchall {:try_start_c .. :try_end_62} :catchall_42

    .line 104
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object p0

    .line 94
    :cond_66
    :try_start_66
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Incomplete cross-platform manifest: missing signatures"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_6e
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Incomplete cross-platform manifest: missing params"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_76
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Incomplete cross-platform manifest: missing platform"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_7e
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Incomplete cross-platform manifest: missing package"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_86
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported cross-platform manifest version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_9d
    .catchall {:try_start_66 .. :try_end_9d} :catchall_42

    .line 66
    :goto_9d
    :try_start_9d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a1

    goto :goto_a5

    :catchall_a1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a5
    throw p0
.end method

.method public final parsePlatformSpecificParams(Ljava/io/BufferedReader;I)Ljava/util/List;
    .registers 8

    .line 109
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_3d

    .line 111
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 116
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 121
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 126
    new-instance v4, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;

    invoke-direct {v4, v1, v2, v3}, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 123
    :cond_25
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Incomplete cross-platform manifest: missing content version parameter"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_2d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Incomplete cross-platform manifest: missing team id parameter"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_35
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Incomplete cross-platform manifest: missing bundle id parameter"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    return-object p0
.end method

.method public final parseSignatureHashes(Ljava/io/BufferedReader;I)Ljava/util/List;
    .registers 6

    .line 133
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_24

    .line 135
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 139
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HexFormat;->parseHex(Ljava/lang/CharSequence;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 137
    :cond_1c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Incomplete cross-platform manifest: missing signature"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    return-object p0
.end method
