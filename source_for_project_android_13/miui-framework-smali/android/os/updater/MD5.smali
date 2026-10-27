.class public Landroid/os/updater/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 12
    .param p0, "updateFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "output":Ljava/lang/String;
    const/4 v1, 0x0

    .line 20
    .local v1, "is":Ljava/io/InputStream;
    :try_start_2
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 21
    .local v2, "digest":Ljava/security/MessageDigest;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 23
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 24
    .local v3, "buffer":[B
    const/4 v4, 0x0

    .line 25
    .local v4, "read":I
    :goto_13
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v4, v5

    const/4 v6, 0x0

    if-lez v5, :cond_1f

    .line 26
    invoke-virtual {v2, v3, v6, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_13

    .line 28
    :cond_1f
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 29
    .local v5, "md5sum":[B
    new-instance v7, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 31
    .local v7, "bigInt":Ljava/math/BigInteger;
    const-string v9, "%32s"

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v10, 0x10

    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v6

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x20

    const/16 v9, 0x30

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6
    :try_end_41
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_41} :catch_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_41} :catch_64
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_41} :catch_4e
    .catchall {:try_start_2 .. :try_end_41} :catchall_4c

    move-object v0, v6

    .line 39
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "buffer":[B
    .end local v4    # "read":I
    .end local v5    # "md5sum":[B
    .end local v7    # "bigInt":Ljava/math/BigInteger;
    nop

    .line 40
    :try_start_43
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    .line 44
    :cond_46
    :goto_46
    goto :goto_72

    .line 42
    :catch_47
    move-exception v2

    .line 43
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 45
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_72

    .line 38
    :catchall_4c
    move-exception v2

    goto :goto_57

    .line 35
    :catch_4e
    move-exception v2

    .line 36
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_4f
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unable to process file for MD5"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "output":Ljava/lang/String;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local p0    # "updateFile":Ljava/io/File;
    throw v3
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_4c

    .line 39
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "output":Ljava/lang/String;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local p0    # "updateFile":Ljava/io/File;
    :goto_57
    if-eqz v1, :cond_62

    .line 40
    :try_start_59
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_62

    .line 42
    :catch_5d
    move-exception v3

    .line 43
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    .line 44
    .end local v3    # "e":Ljava/io/IOException;
    :cond_62
    :goto_62
    nop

    .line 45
    :goto_63
    throw v2

    .line 34
    :catch_64
    move-exception v2

    .line 39
    if-eqz v1, :cond_46

    .line 40
    :try_start_67
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_46

    .line 33
    :catch_6b
    move-exception v2

    .line 39
    if-eqz v1, :cond_46

    .line 40
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_71} :catch_47

    goto :goto_46

    .line 46
    :goto_72
    return-object v0
.end method

.method public static getMd5Digest(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "pInput"    # Ljava/lang/String;

    .line 50
    const-string v0, ""

    .line 52
    .local v0, "hashString":Ljava/lang/String;
    :try_start_2
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 53
    .local v1, "lDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 54
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 55
    .local v2, "lHashInt":Ljava/math/BigInteger;
    const-string v3, "%1$032X"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_24} :catch_26

    move-object v0, v3

    .line 58
    .end local v1    # "lDigest":Ljava/security/MessageDigest;
    .end local v2    # "lHashInt":Ljava/math/BigInteger;
    goto :goto_27

    .line 56
    :catch_26
    move-exception v1

    .line 59
    :goto_27
    return-object v0
.end method

.method public static getMd5Digest([B)Ljava/lang/String;
    .registers 7
    .param p0, "pInput"    # [B

    .line 63
    const-string v0, ""

    .line 65
    .local v0, "hashString":Ljava/lang/String;
    :try_start_2
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 66
    .local v1, "lDigest":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 67
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 68
    .local v2, "lHashInt":Ljava/math/BigInteger;
    const-string v3, "%1$032X"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_22

    move-object v0, v3

    .line 70
    .end local v1    # "lDigest":Ljava/security/MessageDigest;
    .end local v2    # "lHashInt":Ljava/math/BigInteger;
    goto :goto_23

    .line 69
    :catch_22
    move-exception v1

    .line 71
    :goto_23
    return-object v0
.end method
