.class public Landroid/os/updater/DigestUtils;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field public static final whitelist ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field public static final whitelist ALGORITHM_SHA_1:Ljava/lang/String; = "SHA-1"

.field public static final whitelist ALGORITHM_SHA_256:Ljava/lang/String; = "SHA-256"

.field private static final blacklist BUFFER_SIZE:I = 0x1000

.field private static final blacklist HEX_DIGITS:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 99
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Landroid/os/updater/DigestUtils;->HEX_DIGITS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method protected constructor whitelist <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist get(Ljava/io/InputStream;Ljava/lang/String;)[B
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_1a

    .line 88
    .local v0, "digest":Ljava/security/MessageDigest;
    nop

    .line 90
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 92
    .local v1, "bytes":[B
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "read":I
    if-lez v2, :cond_15

    .line 93
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_9

    .line 96
    :cond_15
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2

    .line 86
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "bytes":[B
    .end local v3    # "read":I
    :catch_1a
    move-exception v0

    .line 87
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NoSuchAlgorithmException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist get(Ljava/lang/CharSequence;Ljava/lang/String;)[B
    .registers 3
    .param p0, "content"    # Ljava/lang/CharSequence;
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 57
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/updater/DigestUtils;->get([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist get([BLjava/lang/String;)[B
    .registers 6
    .param p0, "content"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 69
    .local v0, "is":Ljava/io/ByteArrayInputStream;
    :try_start_5
    invoke-static {v0, p1}, Landroid/os/updater/DigestUtils;->get(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return-object v1

    .line 70
    :catch_a
    move-exception v1

    .line 72
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IO exception happend in ByteArrayInputStream"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static whitelist toHexReadable([B)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/os/updater/DigestUtils;->toHexReadable([BLjava/lang/Appendable;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "result":Ljava/lang/String;
    return-object v1
.end method

.method public static whitelist toHexReadable([BLjava/lang/Appendable;)V
    .registers 10
    .param p0, "bytes"    # [B
    .param p1, "appendable"    # Ljava/lang/Appendable;

    .line 117
    if-nez p0, :cond_3

    .line 118
    return-void

    .line 122
    :cond_3
    :try_start_3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_23

    aget-byte v2, p0, v1

    .line 123
    .local v2, "b":B
    move v3, v2

    .line 124
    .local v3, "n":I
    if-gez v3, :cond_e

    .line 125
    add-int/lit16 v3, v3, 0x100

    .line 128
    :cond_e
    shr-int/lit8 v4, v3, 0x4

    .line 129
    .local v4, "index1":I
    and-int/lit8 v5, v3, 0xf

    .line 130
    .local v5, "index2":I
    sget-object v6, Landroid/os/updater/DigestUtils;->HEX_DIGITS:[C

    aget-char v7, v6, v4

    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v7

    aget-char v6, v6, v5

    invoke-interface {v7, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1f} :catch_25

    .line 122
    nop

    .end local v2    # "b":B
    .end local v3    # "n":I
    .end local v4    # "index1":I
    .end local v5    # "index2":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 134
    :cond_23
    nop

    .line 135
    return-void

    .line 132
    :catch_25
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception throw during when append"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
