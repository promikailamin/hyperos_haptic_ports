.class Landroid/media/ExifInterfaceUtils;
.super Ljava/lang/Object;
.source "ExifInterfaceUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ExifInterface"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist byteArrayToHexString([B)Ljava/lang/String;
    .registers 5

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 92
    const/4 v1, 0x0

    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 93
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 95
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 130
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_4

    .line 133
    goto :goto_c

    .line 131
    :catch_4
    move-exception p0

    .line 132
    const-string v0, "ExifInterface"

    const-string v1, "Error closing fd."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    :goto_c
    return-void
.end method

.method public static blacklist closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    .line 115
    if-eqz p0, :cond_a

    .line 117
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 121
    goto :goto_a

    .line 120
    :catch_6
    move-exception p0

    goto :goto_a

    .line 118
    :catch_8
    move-exception p0

    .line 119
    throw p0

    .line 123
    :cond_a
    :goto_a
    return-void
.end method

.method public static blacklist convertToLongArray(Ljava/lang/Object;)[J
    .registers 5

    .line 74
    instance-of v0, p0, [I

    if-eqz v0, :cond_16

    .line 75
    check-cast p0, [I

    .line 76
    array-length v0, p0

    new-array v0, v0, [J

    .line 77
    const/4 v1, 0x0

    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 78
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 80
    :cond_15
    return-object v0

    .line 81
    :cond_16
    instance-of v0, p0, [J

    if-eqz v0, :cond_1d

    .line 82
    check-cast p0, [J

    return-object p0

    .line 84
    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    nop

    .line 41
    const/16 v0, 0x2000

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 43
    :goto_7
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_13

    .line 44
    add-int/2addr v2, v3

    .line 45
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_7

    .line 47
    :cond_13
    return v2
.end method

.method public static blacklist copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    nop

    .line 56
    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 57
    :goto_5
    if-lez p2, :cond_1f

    .line 58
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 59
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 60
    if-ne v4, v2, :cond_17

    .line 64
    sub-int/2addr p2, v4

    .line 65
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 66
    goto :goto_5

    .line 61
    :cond_17
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to copy the given amount of bytes from the inputstream to the output stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_1f
    return-void
.end method

.method public static blacklist startsWith([B[B)Z
    .registers 6

    .line 102
    const/4 v0, 0x0

    if-eqz p0, :cond_23

    if-nez p1, :cond_6

    goto :goto_23

    .line 103
    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_b

    return v0

    .line 104
    :cond_b
    array-length v1, p0

    if-eqz v1, :cond_22

    array-length v1, p1

    if-nez v1, :cond_12

    goto :goto_22

    .line 105
    :cond_12
    move v1, v0

    :goto_13
    array-length v2, p1

    if-ge v1, v2, :cond_20

    .line 106
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_1d

    return v0

    .line 105
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 108
    :cond_20
    const/4 p0, 0x1

    return p0

    .line 104
    :cond_22
    :goto_22
    return v0

    .line 102
    :cond_23
    :goto_23
    return v0
.end method
