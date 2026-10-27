.class public Lmiui/util/HashUtilsCompat;
.super Ljava/lang/Object;
.source "HashUtilsCompat.java"


# static fields
.field public static final blacklist MD5:Ljava/lang/String; = "MD5"

.field public static final blacklist SHA1:Ljava/lang/String; = "SHA1"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static blacklist getHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "method"    # Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "hash":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 90
    .local v1, "is":Ljava/io/BufferedInputStream;
    invoke-static {v1, p1}, Lmiui/util/HashUtilsCompat;->getHash(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_f} :catch_11

    move-object v0, v2

    .line 93
    .end local v1    # "is":Ljava/io/BufferedInputStream;
    goto :goto_15

    .line 91
    :catch_11
    move-exception v1

    .line 92
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 94
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_15
    return-object v0
.end method

.method public static blacklist getHash(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "method"    # Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "hash":Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 63
    .local v1, "digester":Ljava/security/MessageDigest;
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 65
    .local v2, "bytes":[B
    :goto_9
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "byteCount":I
    if-lez v3, :cond_15

    .line 66
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_9

    .line 68
    :cond_15
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 69
    .local v3, "digest":[B
    invoke-static {v3}, Lmiui/util/HashUtilsCompat;->toHexString([B)Ljava/lang/String;

    move-result-object v5
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1d} :catch_35
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_2b
    .catchall {:try_start_1 .. :try_end_1d} :catchall_29

    move-object v0, v5

    .line 75
    .end local v1    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "bytes":[B
    .end local v3    # "digest":[B
    .end local v4    # "byteCount":I
    if-eqz p0, :cond_3f

    .line 77
    :try_start_20
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    .line 80
    :goto_23
    goto :goto_3f

    .line 78
    :catch_24
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_23

    .line 75
    :catchall_29
    move-exception v1

    goto :goto_40

    .line 72
    :catch_2b
    move-exception v1

    .line 73
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_29

    .line 75
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz p0, :cond_3f

    .line 77
    :try_start_31
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_24

    goto :goto_23

    .line 70
    :catch_35
    move-exception v1

    .line 71
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_36
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_29

    .line 75
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    if-eqz p0, :cond_3f

    .line 77
    :try_start_3b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_24

    goto :goto_23

    .line 83
    :cond_3f
    :goto_3f
    return-object v0

    .line 75
    :goto_40
    if-eqz p0, :cond_4a

    .line 77
    :try_start_42
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    .line 80
    goto :goto_4a

    .line 78
    :catch_46
    move-exception v2

    .line 79
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4a
    :goto_4a
    throw v1
.end method

.method public static blacklist getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, "hash":Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 51
    .local v1, "digester":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 52
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lmiui/util/HashUtilsCompat;->toHexString([B)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_14} :catch_16

    move-object v0, v2

    .line 55
    .end local v1    # "digester":Ljava/security/MessageDigest;
    goto :goto_1a

    .line 53
    :catch_16
    move-exception v1

    .line 54
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 56
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1a
    return-object v0
.end method

.method public static blacklist getMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 32
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lmiui/util/HashUtilsCompat;->getHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMD5(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2
    .param p0, "is"    # Ljava/io/InputStream;

    .line 28
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lmiui/util/HashUtilsCompat;->getHash(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "content"    # Ljava/lang/String;

    .line 24
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lmiui/util/HashUtilsCompat;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSHA1(Ljava/io/File;)Ljava/lang/String;
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 44
    const-string v0, "SHA1"

    invoke-static {p0, v0}, Lmiui/util/HashUtilsCompat;->getHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSHA1(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2
    .param p0, "is"    # Ljava/io/InputStream;

    .line 40
    const-string v0, "SHA1"

    invoke-static {p0, v0}, Lmiui/util/HashUtilsCompat;->getHash(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "content"    # Ljava/lang/String;

    .line 36
    const-string v0, "SHA1"

    invoke-static {p0, v0}, Lmiui/util/HashUtilsCompat;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toHexString([B)Ljava/lang/String;
    .registers 6
    .param p0, "bytes"    # [B

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, "hexString":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_23

    .line 100
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 102
    .end local v1    # "i":I
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
