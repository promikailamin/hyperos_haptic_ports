.class public Lmiui/io/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static blacklist closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "c"    # Ljava/io/Closeable;

    .line 39
    if-eqz p0, :cond_7

    .line 41
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 44
    goto :goto_7

    .line 42
    :catch_6
    move-exception v0

    .line 46
    :cond_7
    :goto_7
    return-void
.end method

.method public static blacklist closeQuietly(Ljava/io/Writer;)V
    .registers 2
    .param p0, "writer"    # Ljava/io/Writer;

    .line 25
    if-eqz p0, :cond_7

    .line 27
    :try_start_2
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 30
    goto :goto_7

    .line 28
    :catch_6
    move-exception v0

    .line 32
    :cond_7
    :goto_7
    return-void
.end method

.method private static blacklist readFileAsBytes(Ljava/lang/String;)[B
    .registers 7
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "f":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 60
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 61
    .local v1, "stream":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 63
    .local v2, "buffer":[B
    :goto_17
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    .line 64
    .local v3, "byteCount":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_29

    .line 65
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_2e

    .line 71
    nop

    .line 72
    :try_start_23
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    .line 76
    goto :goto_28

    .line 74
    :catch_27
    move-exception v5

    .line 65
    :goto_28
    return-object v4

    .line 67
    :cond_29
    const/4 v4, 0x0

    :try_start_2a
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    .line 68
    .end local v3    # "byteCount":I
    goto :goto_17

    .line 70
    .end local v1    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    :catchall_2e
    move-exception v1

    .line 71
    if-eqz v0, :cond_37

    .line 72
    :try_start_31
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_37

    .line 74
    :catch_35
    move-exception v2

    goto :goto_38

    .line 76
    :cond_37
    :goto_37
    nop

    .line 77
    :goto_38
    throw v1
.end method

.method public static blacklist readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lmiui/io/IOUtils;->readFileAsBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
