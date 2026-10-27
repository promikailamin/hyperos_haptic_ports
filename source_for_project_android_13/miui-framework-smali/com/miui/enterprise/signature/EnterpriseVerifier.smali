.class public Lcom/miui/enterprise/signature/EnterpriseVerifier;
.super Ljava/lang/Object;
.source "EnterpriseVerifier.java"


# static fields
.field private static final blacklist CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final blacklist ENTERPRISE_CER_ENTRY:Ljava/lang/String; = "entcert"

.field private static final blacklist ENTERPRISE_CER_FILE:Ljava/lang/String; = "META-INF/ENTERPRISE.CER"

.field private static final blacklist ENT_PUBLIC_KEY:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIDXzCCAkegAwIBAgIEMgLUEDANBgkqhkiG9w0BAQsFADBgMQswCQYDVQQGEwI4\nNjEPMA0GA1UECBMGQmVpSmluMQ8wDQYDVQQHEwZCZWlKaW4xDzANBgNVBAoTBlhp\nYW9NaTENMAsGA1UECxMETUlVSTEPMA0GA1UEAxMGWGlhb01pMB4XDTE4MDIwNTEw\nNTUwM1oXDTQ4MDEyOTEwNTUwM1owYDELMAkGA1UEBhMCODYxDzANBgNVBAgTBkJl\naUppbjEPMA0GA1UEBxMGQmVpSmluMQ8wDQYDVQQKEwZYaWFvTWkxDTALBgNVBAsT\nBE1JVUkxDzANBgNVBAMTBlhpYW9NaTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC\nAQoCggEBALE5VJgm5U7lzuEdK69+PXmjw43IwkOPKcZH5ygySuf1X9NJq1YteOoo\nSAYP1sOIr3gg/FauQSlFxmM1VPCXE3uLvDC9ko/vJtpzgfqD/tM/mZQmlFVlWFNW\n9+64Ri/15tO5La1oXW2ccsp0thYmVNDEQtJw/HK5G26l2PSMdGxcgZUAv61dFhbq\n9aAm9ZtvVxUJdlw9xOBE+N+fTxnteM60cY9lPsOXdloHuSo93FF/WlS+7NfyO0h1\n3zWD54OkYsLNBnefynuay33fxFqEK/OqpAHkolIRhxhy256RzoS5tC8aWBdvqZTQ\n6GEmxg3/tkK6dM40L5pFsPV6eJeEnj8CAwEAAaMhMB8wHQYDVR0OBBYEFNNMGSE0\nbeZUEt2r7beFWvvvfBoSMA0GCSqGSIb3DQEBCwUAA4IBAQBfRf59v1HFwPtjzRGA\nYjoR4Z8QdQ8Gu7fJMlm3MOaBPiVh/rTp5/PtDAAUyDjUZFUOTngmAIDk768FDNkY\nfBTn0RCZVI96FsdcA9dhCeCadnr7I6kpHX1LeqXkkVsrviV8vnqXcBIk29qu/M0s\ncBZy1SBP3YlN5ZOQXipWCdU7hNt4QdAYfeOZ8/A/DHZUmZsbPP+gq3I1u8rV1e5q\nPmF46bmuOXe4eXmqBiWNmJyGDOpP0YiT4N57kJOM2aiNWNGXMod4/896rDXUoCuM\n5xIsDV64/DorjbF4dZta94Q6KnE6JRWFl/i4ol7218EVA3ScHLRISDruJanMpU5V\nF3nx\n-----END CERTIFICATE-----"

.field private static final blacklist HEX_DIGITS:[C

.field private static final blacklist MIUI_SIGNATURE:Ljava/lang/String; = "3082046c30820354a0030201020209008d64f55b5ca4ef25300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323733305a170d3339303432333033323733305a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100cfb201f02792657970678db7ae5476d6050534be0c0f308370f0b0f8f08ed8f62a39f804ac4e9dd6262759f2545abcc7aa04fa0226d0029bacab42a970806023bd740c73fad30c56b286037eb1663e79f6c4196ed04d41c92c125d130c29d801a1db681af2d89de2d46e7af218385580186eaf7b68d789574e826cc1762190d70aac565b94cf7812d7a90b7d045f3da952a9c585cf437ced4857675c859d3808a882fec9401dc6ce05140e94c918e381223aa69f7df2ded90767505cbfb1c0a8371e9886b56e85925fafccf312aeea6a892e55fda66957f0dd245e6541e188bd0388d880478557591f16a2e2fdf01b83c6d75298f2e27bf3eb0c12ab7ccac68b020103a381e83081e5301d0603551d0e041604142438de5c93ae19065adbdcb82033744bd89d25663081b50603551d230481ad3081aa80142438de5c93ae19065adbdcb82033744bd89d2566a18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d8209008d64f55b5ca4ef25300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100ccdf3afa17e8aa4abbf30cd193853ed324ba06a18af56b6aee1b2f96f16bf426406b851d76dc4b1d2f150590e6013fc64d7440f400b59af6b225ae6bd3409b0dec19331365077612e6298dd2323ae0bdb14c774df3e9cc3502841204f248d32971fc4d4b9fb98e830f95f71f5f4b31f94f33a4ac2b1ef5eeb1ecb78a71f5333a7f003c454f4bf4e633626ce330f48df62a9396324da15e676a29d8f563408b7822abf25d2d372f91e43f4dccb17ba8a248b475b71c936755efe1387e2d0511c13f85eed4d12bae3d004ae631c963f9fbf4fc1319f0ffa7de2af9f02f00dec902eb88be20e7ce3d9d3392f338adb8d79392318e057f3110c173af20d5ed1094d6"

.field private static final blacklist TAG:Ljava/lang/String; = "EnterpriseVerifier"

.field private static final blacklist TEMP_FILE:Ljava/lang/String; = "/data/system/ent_temp"

.field private static blacklist sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/miui/enterprise/signature/EnterpriseVerifier;->HEX_DIGITS:[C

    .line 297
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    nop

    :array_12
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

.method public constructor whitelist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist collectSignature(Ljava/util/jar/JarFile;)Ljava/lang/String;
    .registers 8
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 317
    .local v0, "i":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v1, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 319
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    .line 320
    .local v2, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_9

    .line 321
    :cond_1c
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "entryName":Ljava/lang/String;
    const-string v4, "META-INF/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    goto :goto_9

    .line 323
    :cond_29
    invoke-virtual {p0, v3}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    .end local v2    # "entry":Ljava/util/jar/JarEntry;
    .end local v3    # "entryName":Ljava/lang/String;
    goto :goto_9

    .line 325
    :cond_31
    const/4 v2, 0x0

    .line 326
    .local v2, "certificates":[Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 327
    .local v4, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p0, v4}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 328
    .local v5, "is":Ljava/io/InputStream;
    :try_start_46
    invoke-static {v5}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->readFullyIgnoringContents(Ljava/io/InputStream;)J

    .line 329
    if-nez v2, :cond_58

    .line 330
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v6
    :try_end_57
    .catchall {:try_start_46 .. :try_end_57} :catchall_5e

    move-object v2, v6

    .line 332
    :cond_58
    if-eqz v5, :cond_5d

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 333
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_5d
    goto :goto_36

    .line 327
    .restart local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_5e
    move-exception v3

    if-eqz v5, :cond_69

    :try_start_61
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_69

    :catchall_65
    move-exception v6

    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_69
    :goto_69
    throw v3

    .line 334
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_6a
    if-eqz v2, :cond_7c

    array-length v3, v2

    if-nez v3, :cond_70

    goto :goto_7c

    :cond_70
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->toHexReadable([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_7d

    :cond_7c
    :goto_7c
    const/4 v3, 0x0

    :goto_7d
    return-object v3
.end method

.method private static blacklist deleteTempFileIfExist()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ent_temp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "certFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 291
    .local v1, "success":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 292
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 294
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete temp file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnterpriseVerifier"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method private static blacklist getSignatureAlgorithm(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 5
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 263
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "keyType":Ljava/lang/String;
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 265
    const-string v1, "SHA256withRSA"

    return-object v1

    .line 266
    :cond_19
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 267
    const-string v1, "SHA256withECDSA"

    return-object v1

    .line 269
    :cond_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist readFullyIgnoringContents(Ljava/io/InputStream;)J
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    sget-object v0, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 301
    .local v0, "buffer":[B
    if-nez v0, :cond_f

    .line 302
    const/16 v1, 0x1000

    new-array v0, v1, [B

    .line 305
    :cond_f
    const/4 v1, 0x0

    .line 306
    .local v1, "n":I
    const/4 v2, 0x0

    .line 307
    .local v2, "count":I
    :goto_11
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v1, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d

    .line 308
    add-int/2addr v2, v1

    goto :goto_11

    .line 311
    :cond_1d
    sget-object v3, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 312
    int-to-long v3, v2

    return-wide v3
.end method

.method private static blacklist readPublicKey()Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "-----BEGIN CERTIFICATE-----\nMIIDXzCCAkegAwIBAgIEMgLUEDANBgkqhkiG9w0BAQsFADBgMQswCQYDVQQGEwI4\nNjEPMA0GA1UECBMGQmVpSmluMQ8wDQYDVQQHEwZCZWlKaW4xDzANBgNVBAoTBlhp\nYW9NaTENMAsGA1UECxMETUlVSTEPMA0GA1UEAxMGWGlhb01pMB4XDTE4MDIwNTEw\nNTUwM1oXDTQ4MDEyOTEwNTUwM1owYDELMAkGA1UEBhMCODYxDzANBgNVBAgTBkJl\naUppbjEPMA0GA1UEBxMGQmVpSmluMQ8wDQYDVQQKEwZYaWFvTWkxDTALBgNVBAsT\nBE1JVUkxDzANBgNVBAMTBlhpYW9NaTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC\nAQoCggEBALE5VJgm5U7lzuEdK69+PXmjw43IwkOPKcZH5ygySuf1X9NJq1YteOoo\nSAYP1sOIr3gg/FauQSlFxmM1VPCXE3uLvDC9ko/vJtpzgfqD/tM/mZQmlFVlWFNW\n9+64Ri/15tO5La1oXW2ccsp0thYmVNDEQtJw/HK5G26l2PSMdGxcgZUAv61dFhbq\n9aAm9ZtvVxUJdlw9xOBE+N+fTxnteM60cY9lPsOXdloHuSo93FF/WlS+7NfyO0h1\n3zWD54OkYsLNBnefynuay33fxFqEK/OqpAHkolIRhxhy256RzoS5tC8aWBdvqZTQ\n6GEmxg3/tkK6dM40L5pFsPV6eJeEnj8CAwEAAaMhMB8wHQYDVR0OBBYEFNNMGSE0\nbeZUEt2r7beFWvvvfBoSMA0GCSqGSIb3DQEBCwUAA4IBAQBfRf59v1HFwPtjzRGA\nYjoR4Z8QdQ8Gu7fJMlm3MOaBPiVh/rTp5/PtDAAUyDjUZFUOTngmAIDk768FDNkY\nfBTn0RCZVI96FsdcA9dhCeCadnr7I6kpHX1LeqXkkVsrviV8vnqXcBIk29qu/M0s\ncBZy1SBP3YlN5ZOQXipWCdU7hNt4QdAYfeOZ8/A/DHZUmZsbPP+gq3I1u8rV1e5q\nPmF46bmuOXe4eXmqBiWNmJyGDOpP0YiT4N57kJOM2aiNWNGXMod4/896rDXUoCuM\n5xIsDV64/DorjbF4dZta94Q6KnE6JRWFl/i4ol7218EVA3ScHLRISDruJanMpU5V\nF3nx\n-----END CERTIFICATE-----"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 257
    .local v0, "input":Ljava/io/ByteArrayInputStream;
    :try_start_d
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 258
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1d

    .line 259
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 258
    return-object v2

    .line 256
    .end local v1    # "cf":Ljava/security/cert/CertificateFactory;
    :catchall_1d
    move-exception v1

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26
    throw v1
.end method

.method private static blacklist sha256([B)Ljava/lang/String;
    .registers 4
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 338
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 339
    .local v0, "mDigest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 340
    .local v1, "result":[B
    invoke-static {v1}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->toHexReadable([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist toHexReadable([B)Ljava/lang/String;
    .registers 10
    .param p0, "bytes"    # [B

    .line 351
    if-nez p0, :cond_5

    .line 352
    const-string v0, ""

    return-object v0

    .line 354
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_29

    aget-byte v3, p0, v2

    .line 357
    .local v3, "b":B
    move v4, v3

    .line 358
    .local v4, "n":I
    if-gez v4, :cond_15

    .line 359
    add-int/lit16 v4, v4, 0x100

    .line 362
    :cond_15
    shr-int/lit8 v5, v4, 0x4

    .line 363
    .local v5, "index1":I
    and-int/lit8 v6, v4, 0xf

    .line 364
    .local v6, "index2":I
    sget-object v7, Lcom/miui/enterprise/signature/EnterpriseVerifier;->HEX_DIGITS:[C

    aget-char v8, v7, v5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-char v7, v7, v6

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    .end local v3    # "b":B
    .end local v4    # "n":I
    .end local v5    # "index1":I
    .end local v6    # "index2":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 366
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist verify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 79
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "enterprise_licence"

    const-string v3, "UTF-8"

    const-string v4, "META-INF/ENTERPRISE.CER"

    const-string v5, "Verify failed"

    const-string v6, "EnterpriseVerifier"

    const/4 v7, 0x0

    :try_start_f
    new-instance v8, Ljava/util/jar/JarFile;

    new-instance v9, Ljava/io/File;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_343
    .catchall {:try_start_f .. :try_end_13} :catchall_33e

    move-object/from16 v10, p1

    :try_start_15
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-direct {v8, v9, v11}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_33c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_33a

    .line 80
    .local v8, "inputJar":Ljava/util/jar/JarFile;
    :try_start_1c
    invoke-static/range {p1 .. p1}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->getV2SignValueById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 81
    .local v9, "v2Signature":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Verify V2 signature:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_32e

    const-string v13, "/data/system/ent_temp"

    if-nez v12, :cond_42

    .line 83
    :try_start_3e
    invoke-static {v9, v13}, Lcom/miui/enterprise/signature/EnterpriseV2Verifier;->str2Zip(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74

    .line 86
    :cond_42
    invoke-virtual {v8, v4}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v12

    if-nez v12, :cond_5c

    .line 87
    const-string v0, "Verify failed, no enterprise cert found"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_3e .. :try_end_4d} :catchall_32e

    .line 88
    nop

    .line 169
    :try_start_4e
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_33c
    .catchall {:try_start_4e .. :try_end_51} :catchall_33a

    .line 174
    :try_start_51
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    .line 177
    goto :goto_5b

    .line 175
    :catch_55
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 176
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5b
    return v7

    .line 90
    :cond_5c
    nop

    .line 91
    :try_start_5d
    invoke-virtual {v8, v4}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_65} :catch_306
    .catchall {:try_start_5d .. :try_end_65} :catchall_32e

    .line 92
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_65
    invoke-static {v4, v13}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->writeFile(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_2f4

    .line 93
    if-eqz v4, :cond_73

    :try_start_6a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e
    .catchall {:try_start_6a .. :try_end_6d} :catchall_32e

    goto :goto_73

    .end local v4    # "inputStream":Ljava/io/InputStream;
    :catch_6e
    move-exception v0

    move-object/from16 v19, v9

    goto/16 :goto_309

    .line 96
    :cond_73
    :goto_73
    nop

    .line 98
    :goto_74
    :try_start_74
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, v13, v11}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_79} :catch_2cc
    .catch Ljava/security/GeneralSecurityException; {:try_start_74 .. :try_end_79} :catch_2cc
    .catchall {:try_start_74 .. :try_end_79} :catchall_32e

    .line 99
    .local v4, "certJar":Ljava/util/jar/JarFile;
    :try_start_79
    invoke-static {v4}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->collectSignature(Ljava/util/jar/JarFile;)Ljava/lang/String;

    move-result-object v12

    .line 100
    .local v12, "sign":Ljava/lang/String;
    if-eqz v12, :cond_29f

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_89

    move-object/from16 v19, v9

    goto/16 :goto_2a1

    .line 104
    :cond_89
    const-string v13, "3082046c30820354a0030201020209008d64f55b5ca4ef25300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323733305a170d3339303432333033323733305a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100cfb201f02792657970678db7ae5476d6050534be0c0f308370f0b0f8f08ed8f62a39f804ac4e9dd6262759f2545abcc7aa04fa0226d0029bacab42a970806023bd740c73fad30c56b286037eb1663e79f6c4196ed04d41c92c125d130c29d801a1db681af2d89de2d46e7af218385580186eaf7b68d789574e826cc1762190d70aac565b94cf7812d7a90b7d045f3da952a9c585cf437ced4857675c859d3808a882fec9401dc6ce05140e94c918e381223aa69f7df2ded90767505cbfb1c0a8371e9886b56e85925fafccf312aeea6a892e55fda66957f0dd245e6541e188bd0388d880478557591f16a2e2fdf01b83c6d75298f2e27bf3eb0c12ab7ccac68b020103a381e83081e5301d0603551d0e041604142438de5c93ae19065adbdcb82033744bd89d25663081b50603551d230481ad3081aa80142438de5c93ae19065adbdcb82033744bd89d2566a18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d8209008d64f55b5ca4ef25300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100ccdf3afa17e8aa4abbf30cd193853ed324ba06a18af56b6aee1b2f96f16bf426406b851d76dc4b1d2f150590e6013fc64d7440f400b59af6b225ae6bd3409b0dec19331365077612e6298dd2323ae0bdb14c774df3e9cc3502841204f248d32971fc4d4b9fb98e830f95f71f5f4b31f94f33a4ac2b1ef5eeb1ecb78a71f5333a7f003c454f4bf4e633626ce330f48df62a9396324da15e676a29d8f563408b7822abf25d2d372f91e43f4dccb17ba8a248b475b71c936755efe1387e2d0511c13f85eed4d12bae3d004ae631c963f9fbf4fc1319f0ffa7de2af9f02f00dec902eb88be20e7ce3d9d3392f338adb8d79392318e057f3110c173af20d5ed1094d6"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_8f
    .catchall {:try_start_79 .. :try_end_8f} :catchall_2bc

    if-nez v13, :cond_b3

    .line 105
    :try_start_91
    const-string v0, "Verify failed, miss match signature"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_ad

    .line 106
    nop

    .line 164
    :try_start_97
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_a8
    .catch Ljava/security/GeneralSecurityException; {:try_start_97 .. :try_end_9a} :catch_a8
    .catchall {:try_start_97 .. :try_end_9a} :catchall_32e

    .line 169
    :try_start_9a
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_33c
    .catchall {:try_start_9a .. :try_end_9d} :catchall_33a

    .line 174
    :try_start_9d
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1

    .line 177
    goto :goto_a7

    .line 175
    :catch_a1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    .end local v0    # "e":Ljava/io/IOException;
    :goto_a7
    return v7

    .line 164
    .end local v4    # "certJar":Ljava/util/jar/JarFile;
    .end local v12    # "sign":Ljava/lang/String;
    :catch_a8
    move-exception v0

    move-object/from16 v19, v9

    goto/16 :goto_2cf

    .line 98
    .restart local v4    # "certJar":Ljava/util/jar/JarFile;
    :catchall_ad
    move-exception v0

    move-object v1, v0

    move-object/from16 v19, v9

    goto/16 :goto_2c0

    .line 108
    .restart local v12    # "sign":Ljava/lang/String;
    :cond_b3
    const/4 v13, 0x0

    .line 109
    .local v13, "enterpriseCer":Lcom/miui/enterprise/signature/EnterpriseCer;
    :try_start_b4
    const-string v14, "entcert"

    invoke-virtual {v4, v14}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v14
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_be} :catch_274
    .catchall {:try_start_b4 .. :try_end_be} :catchall_2bc

    .line 110
    .local v14, "inputStream":Ljava/io/InputStream;
    :try_start_be
    new-instance v15, Lcom/miui/enterprise/signature/EnterpriseCer;

    invoke-direct {v15, v14}, Lcom/miui/enterprise/signature/EnterpriseCer;-><init>(Ljava/io/InputStream;)V
    :try_end_c3
    .catchall {:try_start_be .. :try_end_c3} :catchall_262

    move-object v13, v15

    .line 111
    if-eqz v14, :cond_cf

    :try_start_c6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_ca
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_ad

    goto :goto_cf

    .end local v14    # "inputStream":Ljava/io/InputStream;
    :catch_ca
    move-exception v0

    move-object/from16 v19, v9

    goto/16 :goto_277

    .line 114
    :cond_cf
    :goto_cf
    nop

    .line 115
    nop

    .line 119
    :try_start_d1
    iget-object v14, v13, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    invoke-static {v14, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v14

    .line 120
    .local v14, "signedBytes":[B
    invoke-virtual {v13}, Lcom/miui/enterprise/signature/EnterpriseCer;->getUnSignedRaw()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    .line 121
    .local v15, "unSignedRaw":[B
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->readPublicKey()Ljava/security/cert/X509Certificate;

    move-result-object v16

    .line 122
    .local v16, "certificate":Ljava/security/cert/X509Certificate;
    invoke-static/range {v16 .. v16}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->getSignatureAlgorithm(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v17

    move-object/from16 v18, v17

    .line 123
    .local v18, "signature":Ljava/security/Signature;
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    move-object/from16 v7, v18

    .end local v18    # "signature":Ljava/security/Signature;
    .local v7, "signature":Ljava/security/Signature;
    invoke-virtual {v7, v11}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 124
    invoke-virtual {v7, v15}, Ljava/security/Signature;->update([B)V

    .line 125
    invoke-virtual {v7, v14}, Ljava/security/Signature;->verify([B)Z

    move-result v11

    if-eqz v11, :cond_21b

    .line 126
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v7

    .end local v7    # "signature":Ljava/security/Signature;
    .restart local v18    # "signature":Ljava/security/Signature;
    const-string v7, "Verify signature success for package "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {v13}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->verifyDate(Lcom/miui/enterprise/signature/EnterpriseCer;)Z

    move-result v7
    :try_end_11b
    .catchall {:try_start_d1 .. :try_end_11b} :catchall_2bc

    if-nez v7, :cond_135

    .line 128
    :try_start_11d
    const-string v0, "Verify failed,  cert out of date"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catchall {:try_start_11d .. :try_end_122} :catchall_ad

    .line 129
    nop

    .line 164
    :try_start_123
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_126} :catch_a8
    .catch Ljava/security/GeneralSecurityException; {:try_start_123 .. :try_end_126} :catch_a8
    .catchall {:try_start_123 .. :try_end_126} :catchall_32e

    .line 169
    :try_start_126
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_33c
    .catchall {:try_start_126 .. :try_end_129} :catchall_33a

    .line 174
    :try_start_129
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12c} :catch_12d

    .line 177
    goto :goto_133

    .line 175
    :catch_12d
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    :goto_133
    const/4 v3, 0x0

    return v3

    .line 131
    :cond_135
    :try_start_135
    invoke-static {v8, v13}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->verifyApk(Ljava/util/jar/JarFile;Lcom/miui/enterprise/signature/EnterpriseCer;)Z

    move-result v7
    :try_end_139
    .catchall {:try_start_135 .. :try_end_139} :catchall_2bc

    if-nez v7, :cond_153

    .line 132
    :try_start_13b
    const-string v0, "Verify failed, miss match apk/device"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_140
    .catchall {:try_start_13b .. :try_end_140} :catchall_ad

    .line 133
    nop

    .line 164
    :try_start_141
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_144} :catch_a8
    .catch Ljava/security/GeneralSecurityException; {:try_start_141 .. :try_end_144} :catch_a8
    .catchall {:try_start_141 .. :try_end_144} :catchall_32e

    .line 169
    :try_start_144
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_147} :catch_33c
    .catchall {:try_start_144 .. :try_end_147} :catchall_33a

    .line 174
    :try_start_147
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14a} :catch_14b

    .line 177
    goto :goto_151

    .line 175
    :catch_14b
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :goto_151
    const/4 v3, 0x0

    return v3

    .line 135
    :cond_153
    :try_start_153
    invoke-static {v1, v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "oldLicence":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_171

    .line 137
    const-string v11, "enterprise_agency"
    :try_end_15f
    .catchall {:try_start_153 .. :try_end_15f} :catchall_2bc

    move-object/from16 v19, v9

    .end local v9    # "v2Signature":Ljava/lang/String;
    .local v19, "v2Signature":Ljava/lang/String;
    :try_start_161
    iget-object v9, v13, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    invoke-static {v1, v11, v9}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v9, v13, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    invoke-static {v1, v0, v9}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "enterprise_package"

    invoke-static {v1, v0, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_193

    .line 140
    .end local v19    # "v2Signature":Ljava/lang/String;
    .restart local v9    # "v2Signature":Ljava/lang/String;
    :cond_171
    move-object/from16 v19, v9

    .end local v9    # "v2Signature":Ljava/lang/String;
    .restart local v19    # "v2Signature":Ljava/lang/String;
    iget-object v0, v13, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_193

    .line 141
    const-string v0, "Verify failed, miss match licence code"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_180
    .catchall {:try_start_161 .. :try_end_180} :catchall_2b9

    .line 142
    nop

    .line 164
    :try_start_181
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_184} :catch_2ca
    .catch Ljava/security/GeneralSecurityException; {:try_start_181 .. :try_end_184} :catch_2ca
    .catchall {:try_start_181 .. :try_end_184} :catchall_32e

    .line 169
    :try_start_184
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_33c
    .catchall {:try_start_184 .. :try_end_187} :catchall_33a

    .line 174
    :try_start_187
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_18a
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_18a} :catch_18b

    .line 177
    goto :goto_191

    .line 175
    :catch_18b
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    :goto_191
    const/4 v3, 0x0

    return v3

    .line 144
    :cond_193
    :goto_193
    :try_start_193
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.miui.enterprise.ACTION_CERT_UPDATE"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 145
    .local v9, "intent":Landroid/content/Intent;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-lt v0, v11, :cond_1a6

    .line 146
    const/high16 v0, 0x1000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    :cond_1a6
    const-string v0, "extra_ent_cert"

    invoke-virtual {v9, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v11, "com.miui.enterprise.permission.ACTIVE_ENTERPRISE_MODE"

    invoke-virtual {v1, v9, v0, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1b2
    .catchall {:try_start_193 .. :try_end_1b2} :catchall_2b9

    .line 150
    :try_start_1b2
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    .line 151
    invoke-virtual {v13}, Lcom/miui/enterprise/signature/EnterpriseCer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1c4
    .catch Ljava/io/IOException; {:try_start_1b2 .. :try_end_1c4} :catch_1f2
    .catchall {:try_start_1b2 .. :try_end_1c4} :catchall_2b9

    move-object v1, v0

    .line 152
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_1c5
    const-string v0, "/data/system/entcert"

    invoke-static {v1, v0}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->writeFile(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1ca
    .catchall {:try_start_1c5 .. :try_end_1ca} :catchall_1e6

    .line 153
    :try_start_1ca
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1cd
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1cd} :catch_1f2
    .catchall {:try_start_1ca .. :try_end_1cd} :catchall_2b9

    .line 156
    .end local v1    # "inputStream":Ljava/io/InputStream;
    nop

    .line 157
    :try_start_1ce
    const-string v0, "persist cert file"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d3
    .catchall {:try_start_1ce .. :try_end_1d3} :catchall_2b9

    .line 158
    nop

    .line 164
    :try_start_1d4
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_1d7
    .catch Ljava/io/IOException; {:try_start_1d4 .. :try_end_1d7} :catch_2ca
    .catch Ljava/security/GeneralSecurityException; {:try_start_1d4 .. :try_end_1d7} :catch_2ca
    .catchall {:try_start_1d4 .. :try_end_1d7} :catchall_32e

    .line 169
    :try_start_1d7
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_1da
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1da} :catch_33c
    .catchall {:try_start_1d7 .. :try_end_1da} :catchall_33a

    .line 174
    :try_start_1da
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1dd} :catch_1de

    .line 177
    goto :goto_1e4

    .line 175
    :catch_1de
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1e4
    const/4 v1, 0x1

    return v1

    .line 150
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :catchall_1e6
    move-exception v0

    move-object v3, v0

    :try_start_1e8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1eb
    .catchall {:try_start_1e8 .. :try_end_1eb} :catchall_1ec

    goto :goto_1f1

    :catchall_1ec
    move-exception v0

    move-object v11, v0

    :try_start_1ee
    invoke-virtual {v3, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "certJar":Ljava/util/jar/JarFile;
    .end local v7    # "oldLicence":Ljava/lang/String;
    .end local v8    # "inputJar":Ljava/util/jar/JarFile;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v12    # "sign":Ljava/lang/String;
    .end local v13    # "enterpriseCer":Lcom/miui/enterprise/signature/EnterpriseCer;
    .end local v14    # "signedBytes":[B
    .end local v15    # "unSignedRaw":[B
    .end local v16    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v18    # "signature":Ljava/security/Signature;
    .end local v19    # "v2Signature":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    :goto_1f1
    throw v3
    :try_end_1f2
    .catch Ljava/io/IOException; {:try_start_1ee .. :try_end_1f2} :catch_1f2
    .catchall {:try_start_1ee .. :try_end_1f2} :catchall_2b9

    .line 153
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "certJar":Ljava/util/jar/JarFile;
    .restart local v7    # "oldLicence":Ljava/lang/String;
    .restart local v8    # "inputJar":Ljava/util/jar/JarFile;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v12    # "sign":Ljava/lang/String;
    .restart local v13    # "enterpriseCer":Lcom/miui/enterprise/signature/EnterpriseCer;
    .restart local v14    # "signedBytes":[B
    .restart local v15    # "unSignedRaw":[B
    .restart local v16    # "certificate":Ljava/security/cert/X509Certificate;
    .restart local v18    # "signature":Ljava/security/Signature;
    .restart local v19    # "v2Signature":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_1f2
    move-exception v0

    move-object v1, v0

    .line 154
    .local v1, "e":Ljava/io/IOException;
    :try_start_1f4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_208
    .catchall {:try_start_1f4 .. :try_end_208} :catchall_2b9

    .line 155
    nop

    .line 164
    :try_start_209
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_20c
    .catch Ljava/io/IOException; {:try_start_209 .. :try_end_20c} :catch_2ca
    .catch Ljava/security/GeneralSecurityException; {:try_start_209 .. :try_end_20c} :catch_2ca
    .catchall {:try_start_209 .. :try_end_20c} :catchall_32e

    .line 169
    :try_start_20c
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_20f
    .catch Ljava/io/IOException; {:try_start_20c .. :try_end_20f} :catch_33c
    .catchall {:try_start_20c .. :try_end_20f} :catchall_33a

    .line 174
    :try_start_20f
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_212
    .catch Ljava/io/IOException; {:try_start_20f .. :try_end_212} :catch_213

    .line 177
    goto :goto_219

    .line 175
    :catch_213
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 155
    .end local v0    # "e":Ljava/io/IOException;
    :goto_219
    const/4 v3, 0x0

    return v3

    .line 160
    .end local v1    # "e":Ljava/io/IOException;
    .end local v18    # "signature":Ljava/security/Signature;
    .end local v19    # "v2Signature":Ljava/lang/String;
    .local v7, "signature":Ljava/security/Signature;
    .local v9, "v2Signature":Ljava/lang/String;
    :cond_21b
    move-object/from16 v18, v7

    move-object/from16 v19, v9

    .end local v7    # "signature":Ljava/security/Signature;
    .end local v9    # "v2Signature":Ljava/lang/String;
    .restart local v18    # "signature":Ljava/security/Signature;
    .restart local v19    # "v2Signature":Ljava/lang/String;
    :try_start_21f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verify signature failed for package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13}, Lcom/miui/enterprise/signature/EnterpriseCer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24f
    .catchall {:try_start_21f .. :try_end_24f} :catchall_2b9

    .line 162
    nop

    .line 164
    :try_start_250
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_253
    .catch Ljava/io/IOException; {:try_start_250 .. :try_end_253} :catch_2ca
    .catch Ljava/security/GeneralSecurityException; {:try_start_250 .. :try_end_253} :catch_2ca
    .catchall {:try_start_250 .. :try_end_253} :catchall_32e

    .line 169
    :try_start_253
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_256
    .catch Ljava/io/IOException; {:try_start_253 .. :try_end_256} :catch_33c
    .catchall {:try_start_253 .. :try_end_256} :catchall_33a

    .line 174
    :try_start_256
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_259
    .catch Ljava/io/IOException; {:try_start_256 .. :try_end_259} :catch_25a

    .line 177
    goto :goto_260

    .line 175
    :catch_25a
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 162
    .end local v0    # "e":Ljava/io/IOException;
    :goto_260
    const/4 v1, 0x0

    return v1

    .line 109
    .end local v15    # "unSignedRaw":[B
    .end local v16    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v18    # "signature":Ljava/security/Signature;
    .end local v19    # "v2Signature":Ljava/lang/String;
    .restart local v9    # "v2Signature":Ljava/lang/String;
    .local v14, "inputStream":Ljava/io/InputStream;
    :catchall_262
    move-exception v0

    move-object/from16 v19, v9

    move-object v1, v0

    .end local v9    # "v2Signature":Ljava/lang/String;
    .restart local v19    # "v2Signature":Ljava/lang/String;
    if-eqz v14, :cond_271

    :try_start_268
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_26b
    .catchall {:try_start_268 .. :try_end_26b} :catchall_26c

    goto :goto_271

    :catchall_26c
    move-exception v0

    move-object v3, v0

    :try_start_26e
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "certJar":Ljava/util/jar/JarFile;
    .end local v8    # "inputJar":Ljava/util/jar/JarFile;
    .end local v12    # "sign":Ljava/lang/String;
    .end local v13    # "enterpriseCer":Lcom/miui/enterprise/signature/EnterpriseCer;
    .end local v19    # "v2Signature":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    :cond_271
    :goto_271
    throw v1
    :try_end_272
    .catch Ljava/io/IOException; {:try_start_26e .. :try_end_272} :catch_272
    .catchall {:try_start_26e .. :try_end_272} :catchall_2b9

    .line 111
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "certJar":Ljava/util/jar/JarFile;
    .restart local v8    # "inputJar":Ljava/util/jar/JarFile;
    .restart local v12    # "sign":Ljava/lang/String;
    .restart local v13    # "enterpriseCer":Lcom/miui/enterprise/signature/EnterpriseCer;
    .restart local v19    # "v2Signature":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_272
    move-exception v0

    goto :goto_277

    .end local v19    # "v2Signature":Ljava/lang/String;
    .restart local v9    # "v2Signature":Ljava/lang/String;
    :catch_274
    move-exception v0

    move-object/from16 v19, v9

    .end local v9    # "v2Signature":Ljava/lang/String;
    .restart local v19    # "v2Signature":Ljava/lang/String;
    :goto_277
    move-object v1, v0

    .line 112
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28c
    .catchall {:try_start_278 .. :try_end_28c} :catchall_2b9

    .line 113
    nop

    .line 164
    :try_start_28d
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_290
    .catch Ljava/io/IOException; {:try_start_28d .. :try_end_290} :catch_2ca
    .catch Ljava/security/GeneralSecurityException; {:try_start_28d .. :try_end_290} :catch_2ca
    .catchall {:try_start_28d .. :try_end_290} :catchall_32e

    .line 169
    :try_start_290
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_293
    .catch Ljava/io/IOException; {:try_start_290 .. :try_end_293} :catch_33c
    .catchall {:try_start_290 .. :try_end_293} :catchall_33a

    .line 174
    :try_start_293
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_296
    .catch Ljava/io/IOException; {:try_start_293 .. :try_end_296} :catch_297

    .line 177
    goto :goto_29d

    .line 175
    :catch_297
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :goto_29d
    const/4 v3, 0x0

    return v3

    .line 100
    .end local v1    # "e":Ljava/io/IOException;
    .end local v13    # "enterpriseCer":Lcom/miui/enterprise/signature/EnterpriseCer;
    .end local v19    # "v2Signature":Ljava/lang/String;
    .restart local v9    # "v2Signature":Ljava/lang/String;
    :cond_29f
    move-object/from16 v19, v9

    .line 101
    .end local v9    # "v2Signature":Ljava/lang/String;
    .restart local v19    # "v2Signature":Ljava/lang/String;
    :goto_2a1
    :try_start_2a1
    const-string v0, "Verify failed, failed to load enterprise cert signature"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a6
    .catchall {:try_start_2a1 .. :try_end_2a6} :catchall_2b9

    .line 102
    nop

    .line 164
    :try_start_2a7
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_2aa
    .catch Ljava/io/IOException; {:try_start_2a7 .. :try_end_2aa} :catch_2ca
    .catch Ljava/security/GeneralSecurityException; {:try_start_2a7 .. :try_end_2aa} :catch_2ca
    .catchall {:try_start_2a7 .. :try_end_2aa} :catchall_32e

    .line 169
    :try_start_2aa
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_2ad
    .catch Ljava/io/IOException; {:try_start_2aa .. :try_end_2ad} :catch_33c
    .catchall {:try_start_2aa .. :try_end_2ad} :catchall_33a

    .line 174
    :try_start_2ad
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_2b0
    .catch Ljava/io/IOException; {:try_start_2ad .. :try_end_2b0} :catch_2b1

    .line 177
    goto :goto_2b7

    .line 175
    :catch_2b1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2b7
    const/4 v1, 0x0

    return v1

    .line 98
    .end local v12    # "sign":Ljava/lang/String;
    :catchall_2b9
    move-exception v0

    move-object v1, v0

    goto :goto_2c0

    .end local v19    # "v2Signature":Ljava/lang/String;
    .restart local v9    # "v2Signature":Ljava/lang/String;
    :catchall_2bc
    move-exception v0

    move-object/from16 v19, v9

    move-object v1, v0

    .end local v9    # "v2Signature":Ljava/lang/String;
    .restart local v19    # "v2Signature":Ljava/lang/String;
    :goto_2c0
    :try_start_2c0
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_2c3
    .catchall {:try_start_2c0 .. :try_end_2c3} :catchall_2c4

    goto :goto_2c9

    :catchall_2c4
    move-exception v0

    move-object v3, v0

    :try_start_2c6
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v8    # "inputJar":Ljava/util/jar/JarFile;
    .end local v19    # "v2Signature":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    :goto_2c9
    throw v1
    :try_end_2ca
    .catch Ljava/io/IOException; {:try_start_2c6 .. :try_end_2ca} :catch_2ca
    .catch Ljava/security/GeneralSecurityException; {:try_start_2c6 .. :try_end_2ca} :catch_2ca
    .catchall {:try_start_2c6 .. :try_end_2ca} :catchall_32e

    .line 164
    .end local v4    # "certJar":Ljava/util/jar/JarFile;
    .restart local v8    # "inputJar":Ljava/util/jar/JarFile;
    .restart local v19    # "v2Signature":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_2ca
    move-exception v0

    goto :goto_2cf

    .end local v19    # "v2Signature":Ljava/lang/String;
    .restart local v9    # "v2Signature":Ljava/lang/String;
    :catch_2cc
    move-exception v0

    move-object/from16 v19, v9

    .end local v9    # "v2Signature":Ljava/lang/String;
    .restart local v19    # "v2Signature":Ljava/lang/String;
    :goto_2cf
    move-object v1, v0

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2d0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e4
    .catchall {:try_start_2d0 .. :try_end_2e4} :catchall_32e

    .line 167
    nop

    .line 169
    :try_start_2e5
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_2e8
    .catch Ljava/io/IOException; {:try_start_2e5 .. :try_end_2e8} :catch_33c
    .catchall {:try_start_2e5 .. :try_end_2e8} :catchall_33a

    .line 174
    :try_start_2e8
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_2eb
    .catch Ljava/io/IOException; {:try_start_2e8 .. :try_end_2eb} :catch_2ec

    .line 177
    goto :goto_2f2

    .line 175
    :catch_2ec
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 167
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2f2
    const/4 v3, 0x0

    return v3

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v19    # "v2Signature":Ljava/lang/String;
    .local v4, "inputStream":Ljava/io/InputStream;
    .restart local v9    # "v2Signature":Ljava/lang/String;
    :catchall_2f4
    move-exception v0

    move-object/from16 v19, v9

    move-object v1, v0

    .end local v9    # "v2Signature":Ljava/lang/String;
    .restart local v19    # "v2Signature":Ljava/lang/String;
    if-eqz v4, :cond_303

    :try_start_2fa
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2fd
    .catchall {:try_start_2fa .. :try_end_2fd} :catchall_2fe

    goto :goto_303

    :catchall_2fe
    move-exception v0

    move-object v3, v0

    :try_start_300
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v8    # "inputJar":Ljava/util/jar/JarFile;
    .end local v19    # "v2Signature":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    :cond_303
    :goto_303
    throw v1
    :try_end_304
    .catch Ljava/io/IOException; {:try_start_300 .. :try_end_304} :catch_304
    .catchall {:try_start_300 .. :try_end_304} :catchall_32e

    .line 93
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputJar":Ljava/util/jar/JarFile;
    .restart local v19    # "v2Signature":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_304
    move-exception v0

    goto :goto_309

    .end local v19    # "v2Signature":Ljava/lang/String;
    .restart local v9    # "v2Signature":Ljava/lang/String;
    :catch_306
    move-exception v0

    move-object/from16 v19, v9

    .end local v9    # "v2Signature":Ljava/lang/String;
    .restart local v19    # "v2Signature":Ljava/lang/String;
    :goto_309
    move-object v1, v0

    .line 94
    .local v1, "e":Ljava/io/IOException;
    :try_start_30a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31e
    .catchall {:try_start_30a .. :try_end_31e} :catchall_32e

    .line 95
    nop

    .line 169
    :try_start_31f
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_322
    .catch Ljava/io/IOException; {:try_start_31f .. :try_end_322} :catch_33c
    .catchall {:try_start_31f .. :try_end_322} :catchall_33a

    .line 174
    :try_start_322
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_325
    .catch Ljava/io/IOException; {:try_start_322 .. :try_end_325} :catch_326

    .line 177
    goto :goto_32c

    .line 175
    :catch_326
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 95
    .end local v0    # "e":Ljava/io/IOException;
    :goto_32c
    const/4 v3, 0x0

    return v3

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    .end local v19    # "v2Signature":Ljava/lang/String;
    :catchall_32e
    move-exception v0

    move-object v1, v0

    :try_start_330
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_333
    .catchall {:try_start_330 .. :try_end_333} :catchall_334

    goto :goto_339

    :catchall_334
    move-exception v0

    move-object v3, v0

    :try_start_336
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    :goto_339
    throw v1
    :try_end_33a
    .catch Ljava/io/IOException; {:try_start_336 .. :try_end_33a} :catch_33c
    .catchall {:try_start_336 .. :try_end_33a} :catchall_33a

    .line 173
    .end local v8    # "inputJar":Ljava/util/jar/JarFile;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_33a
    move-exception v0

    goto :goto_341

    .line 169
    :catch_33c
    move-exception v0

    goto :goto_346

    .line 173
    :catchall_33e
    move-exception v0

    move-object/from16 v10, p1

    :goto_341
    move-object v1, v0

    goto :goto_368

    .line 169
    :catch_343
    move-exception v0

    move-object/from16 v10, p1

    :goto_346
    move-object v1, v0

    .line 170
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35b
    .catchall {:try_start_347 .. :try_end_35b} :catchall_33a

    .line 171
    nop

    .line 174
    :try_start_35c
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_35f
    .catch Ljava/io/IOException; {:try_start_35c .. :try_end_35f} :catch_360

    .line 177
    goto :goto_366

    .line 175
    :catch_360
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :goto_366
    const/4 v3, 0x0

    return v3

    .line 174
    .end local v1    # "e":Ljava/io/IOException;
    :goto_368
    :try_start_368
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_36b
    .catch Ljava/io/IOException; {:try_start_368 .. :try_end_36b} :catch_36c

    .line 177
    goto :goto_372

    .line 175
    :catch_36c
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    :goto_372
    throw v1
.end method

.method private static blacklist verifyApk(Ljava/util/jar/JarFile;Lcom/miui/enterprise/signature/EnterpriseCer;)Z
    .registers 10
    .param p0, "jar"    # Ljava/util/jar/JarFile;
    .param p1, "cert"    # Lcom/miui/enterprise/signature/EnterpriseCer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 201
    iget-object v0, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EnterpriseVerifier"

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_2b

    .line 202
    invoke-static {}, Lmiui/telephony/TelephonyManagerUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "myDeviceId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 204
    .local v3, "match":Z
    iget-object v4, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    array-length v5, v4

    :goto_14
    if-ge v1, v5, :cond_23

    aget-object v6, v4, v1

    .line 205
    .local v6, "deviceId":Ljava/lang/String;
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 206
    const/4 v3, 0x1

    .line 207
    goto :goto_23

    .line 204
    .end local v6    # "deviceId":Ljava/lang/String;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 210
    :cond_23
    :goto_23
    if-nez v3, :cond_2a

    .line 211
    const-string v1, "Verify failed, device not authorized"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_2a
    return v3

    .line 215
    .end local v0    # "myDeviceId":Ljava/lang/String;
    .end local v3    # "match":Z
    :cond_2b
    iget-object v0, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->apkNewHash:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->verifyApkHashForP(Ljava/lang/String;Ljava/util/jar/JarFile;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3a

    .line 216
    const-string v0, "Verify success, new apk hash"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return v3

    .line 218
    :cond_3a
    iget-object v0, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->verifyApkHash(Ljava/lang/String;Ljava/util/jar/JarFile;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 219
    const-string v0, "Verify success, old apk hash"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return v3

    .line 222
    :cond_48
    return v1
.end method

.method private static blacklist verifyApkHash(Ljava/lang/String;Ljava/util/jar/JarFile;)Z
    .registers 6
    .param p0, "apkHash"    # Ljava/lang/String;
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 242
    :try_start_0
    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {p1, v0}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_39

    .line 243
    .local v0, "mfInput":Ljava/io/InputStream;
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 244
    .local v1, "mfBytes":[B
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    .line 247
    invoke-static {v1}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sha256([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_2d

    .line 248
    if-eqz v0, :cond_24

    :try_start_21
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_39

    .line 247
    :cond_24
    return v2

    .line 245
    :cond_25
    :try_start_25
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to read META-INF/MANIFEST.MF"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mfInput":Ljava/io/InputStream;
    .end local p0    # "apkHash":Ljava/lang/String;
    .end local p1    # "jar":Ljava/util/jar/JarFile;
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 242
    .end local v1    # "mfBytes":[B
    .restart local v0    # "mfInput":Ljava/io/InputStream;
    .restart local p0    # "apkHash":Ljava/lang/String;
    .restart local p1    # "jar":Ljava/util/jar/JarFile;
    :catchall_2d
    move-exception v1

    if-eqz v0, :cond_38

    :try_start_30
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v2

    :try_start_35
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "apkHash":Ljava/lang/String;
    .end local p1    # "jar":Ljava/util/jar/JarFile;
    :cond_38
    :goto_38
    throw v1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_39} :catch_39

    .line 248
    .end local v0    # "mfInput":Ljava/io/InputStream;
    .restart local p0    # "apkHash":Ljava/lang/String;
    .restart local p1    # "jar":Ljava/util/jar/JarFile;
    :catch_39
    move-exception v0

    .line 249
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "EnterpriseVerifier"

    const-string v2, "Verify failed, old apk hash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist verifyApkHashForP(Ljava/lang/String;Ljava/util/jar/JarFile;)Z
    .registers 10
    .param p0, "apkHash"    # Ljava/lang/String;
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 227
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "META-INF/MANIFEST.MF"

    invoke-virtual {p1, v1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_49

    .line 228
    .local v1, "mfInput":Ljava/io/InputStream;
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v2, "inputBuffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x800

    new-array v4, v3, [B

    .line 231
    .local v4, "mfBytes":[B
    :goto_14
    invoke-virtual {v1, v4, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v6, v5

    .local v6, "length":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_25

    .line 232
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v0, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 234
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sha256([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_3d

    .line 235
    if-eqz v1, :cond_3c

    :try_start_39
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_49

    .line 234
    :cond_3c
    return v3

    .line 227
    .end local v2    # "inputBuffer":Ljava/lang/StringBuilder;
    .end local v4    # "mfBytes":[B
    .end local v6    # "length":I
    :catchall_3d
    move-exception v2

    if-eqz v1, :cond_48

    :try_start_40
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v3

    :try_start_45
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "apkHash":Ljava/lang/String;
    .end local p1    # "jar":Ljava/util/jar/JarFile;
    :cond_48
    :goto_48
    throw v2
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_49

    .line 235
    .end local v1    # "mfInput":Ljava/io/InputStream;
    .restart local p0    # "apkHash":Ljava/lang/String;
    .restart local p1    # "jar":Ljava/util/jar/JarFile;
    :catch_49
    move-exception v1

    .line 236
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "EnterpriseVerifier"

    const-string v3, "Verify failed, new apk hash"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v1    # "e":Ljava/io/IOException;
    return v0
.end method

.method private static blacklist verifyDate(Lcom/miui/enterprise/signature/EnterpriseCer;)Z
    .registers 3
    .param p0, "cert"    # Lcom/miui/enterprise/signature/EnterpriseCer;

    .line 196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 197
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/miui/enterprise/signature/EnterpriseCer;->getValidFrom()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/miui/enterprise/signature/EnterpriseCer;->getValidTo()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method public static whitelist verifyPlatformSign(Ljava/lang/String;)Z
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .line 182
    const-string v0, "EnterpriseVerifier"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/util/jar/JarFile;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_34
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_9} :catch_34

    .line 183
    .local v2, "certJar":Ljava/util/jar/JarFile;
    :try_start_9
    invoke-static {v2}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->collectSignature(Ljava/util/jar/JarFile;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "sign":Ljava/lang/String;
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_16

    goto :goto_20

    .line 188
    :cond_16
    const-string v4, "3082046c30820354a0030201020209008d64f55b5ca4ef25300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323733305a170d3339303432333033323733305a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100cfb201f02792657970678db7ae5476d6050534be0c0f308370f0b0f8f08ed8f62a39f804ac4e9dd6262759f2545abcc7aa04fa0226d0029bacab42a970806023bd740c73fad30c56b286037eb1663e79f6c4196ed04d41c92c125d130c29d801a1db681af2d89de2d46e7af218385580186eaf7b68d789574e826cc1762190d70aac565b94cf7812d7a90b7d045f3da952a9c585cf437ced4857675c859d3808a882fec9401dc6ce05140e94c918e381223aa69f7df2ded90767505cbfb1c0a8371e9886b56e85925fafccf312aeea6a892e55fda66957f0dd245e6541e188bd0388d880478557591f16a2e2fdf01b83c6d75298f2e27bf3eb0c12ab7ccac68b020103a381e83081e5301d0603551d0e041604142438de5c93ae19065adbdcb82033744bd89d25663081b50603551d230481ad3081aa80142438de5c93ae19065adbdcb82033744bd89d2566a18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d8209008d64f55b5ca4ef25300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100ccdf3afa17e8aa4abbf30cd193853ed324ba06a18af56b6aee1b2f96f16bf426406b851d76dc4b1d2f150590e6013fc64d7440f400b59af6b225ae6bd3409b0dec19331365077612e6298dd2323ae0bdb14c774df3e9cc3502841204f248d32971fc4d4b9fb98e830f95f71f5f4b31f94f33a4ac2b1ef5eeb1ecb78a71f5333a7f003c454f4bf4e633626ce330f48df62a9396324da15e676a29d8f563408b7822abf25d2d372f91e43f4dccb17ba8a248b475b71c936755efe1387e2d0511c13f85eed4d12bae3d004ae631c963f9fbf4fc1319f0ffa7de2af9f02f00dec902eb88be20e7ce3d9d3392f338adb8d79392318e057f3110c173af20d5ed1094d6"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_2a

    .line 189
    :try_start_1c
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_34
    .catch Ljava/security/cert/CertificateException; {:try_start_1c .. :try_end_1f} :catch_34

    .line 188
    return v4

    .line 185
    :cond_20
    :goto_20
    :try_start_20
    const-string v4, "Verify failed, failed to load enterprise cert signature"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_2a

    .line 186
    nop

    .line 189
    :try_start_26
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_34
    .catch Ljava/security/cert/CertificateException; {:try_start_26 .. :try_end_29} :catch_34

    .line 186
    return v1

    .line 182
    .end local v3    # "sign":Ljava/lang/String;
    :catchall_2a
    move-exception v3

    :try_start_2b
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception v4

    :try_start_30
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "path":Ljava/lang/String;
    :goto_33
    throw v3
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_34
    .catch Ljava/security/cert/CertificateException; {:try_start_30 .. :try_end_34} :catch_34

    .line 189
    .end local v2    # "certJar":Ljava/util/jar/JarFile;
    .restart local p0    # "path":Ljava/lang/String;
    :catch_34
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Verify failed"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    return v1
.end method

.method private static blacklist writeFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_2f

    .line 276
    :cond_12
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filed to create temp file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_2f
    :goto_2f
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 279
    .local v1, "os":Ljava/io/OutputStream;
    const/16 v2, 0x2000

    :try_start_3b
    new-array v2, v2, [B

    .line 281
    .local v2, "buffer":[B
    :goto_3d
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "len":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_4a

    .line 282
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3d

    .line 284
    :cond_4a
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_51

    .line 285
    .end local v2    # "buffer":[B
    .end local v4    # "len":I
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 286
    .end local v1    # "os":Ljava/io/OutputStream;
    return-void

    .line 278
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catchall_51
    move-exception v2

    :try_start_52
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5a
    throw v2
.end method
