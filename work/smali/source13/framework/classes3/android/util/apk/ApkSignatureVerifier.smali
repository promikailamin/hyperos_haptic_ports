.class public Landroid/util/apk/ApkSignatureVerifier;
.super Ljava/lang/Object;
.source "ApkSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;,
        Landroid/util/apk/ApkSignatureVerifier$Result;
    }
.end annotation


# static fields
.field private static final blacklist NUMBER_OF_CORES:I

.field private static final blacklist TAG:Ljava/lang/String; = "ApkSignatureVerifier"

.field private static final greylist-max-o sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetNUMBER_OF_CORES()I
    .registers 1

    sget v0, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smconvertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .registers 1

    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smloadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 75
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_13

    goto :goto_1b

    :cond_13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    :goto_1b
    sput v1, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    .line 74
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o closeQuietly(Landroid/util/jar/StrictJarFile;)V
    .registers 2
    .param p0, "jarFile"    # Landroid/util/jar/StrictJarFile;

    .line 588
    if-eqz p0, :cond_7

    .line 590
    :try_start_2
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 592
    goto :goto_7

    .line 591
    :catch_6
    move-exception v0

    .line 594
    :cond_7
    :goto_7
    return-void
.end method

.method private static greylist-max-o convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .registers 5
    .param p0, "certs"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 580
    array-length v0, p0

    new-array v0, v0, [Landroid/content/pm/Signature;

    .line 581
    .local v0, "res":[Landroid/content/pm/Signature;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 582
    new-instance v2, Landroid/content/pm/Signature;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    aput-object v2, v0, v1

    .line 581
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 584
    .end local v1    # "i":I
    :cond_13
    return-object v0
.end method

.method public static greylist-max-o generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .registers 3
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "bufferFactory"    # Landroid/util/apk/ByteBufferFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 650
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 651
    :catch_5
    move-exception v0

    .line 654
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMinimumSignatureSchemeVersionForTargetSdk(I)I
    .registers 2
    .param p0, "targetSdk"    # I

    .line 601
    const/16 v0, 0x1e

    if-lt p0, v0, :cond_6

    .line 602
    const/4 v0, 0x2

    return v0

    .line 604
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist-max-o getVerityRootHash(Ljava/lang/String;)[B
    .registers 3
    .param p0, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 628
    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 629
    :catch_5
    move-exception v0

    .line 633
    :try_start_6
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_a
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    .line 634
    :catch_b
    move-exception v0

    .line 635
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "jarFile"    # Landroid/util/jar/StrictJarFile;
    .param p2, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/util/jar/StrictJarFile;",
            "Ljava/util/zip/ZipEntry;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 541
    const/4 v0, 0x0

    .line 545
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 546
    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->readFullyIgnoringContents(Ljava/io/InputStream;)V

    .line 547
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_11} :catch_17
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    .line 552
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 547
    return-object v1

    .line 552
    :catchall_15
    move-exception v1

    goto :goto_43

    .line 548
    :catch_17
    move-exception v1

    .line 549
    .local v1, "e":Ljava/lang/Exception;
    const/16 v2, -0x66

    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 550
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 549
    invoke-interface {p0, v2, v3, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_3f
    .catchall {:try_start_1a .. :try_end_3f} :catchall_15

    .line 552
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 549
    return-object v2

    .line 552
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_43
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 553
    throw v1
.end method

.method private static greylist-max-o readFullyIgnoringContents(Ljava/io/InputStream;)V
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 558
    .local v0, "buffer":[B
    if-nez v0, :cond_f

    .line 559
    const/16 v1, 0x1000

    new-array v0, v1, [B

    .line 562
    :cond_f
    const/4 v1, 0x0

    .line 563
    .local v1, "n":I
    const/4 v2, 0x0

    .line 564
    .local v2, "count":I
    :goto_11
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v1, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d

    .line 565
    add-int/2addr v2, v1

    goto :goto_11

    .line 568
    :cond_1d
    sget-object v3, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 569
    return-void
.end method

.method public static blacklist unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/ApkSignatureVerifier;->verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 81
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/ApkSignatureVerifier;->verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .param p3, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 101
    nop

    .line 102
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 103
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 104
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 106
    :cond_10
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    iget-object v1, v1, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;->signingDetails:Landroid/content/pm/SigningDetails;

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .param p3, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .line 120
    const-string v0, " or newer for package "

    const-string v1, "No signature found in package of version "

    const/4 v2, 0x4

    const/16 v3, -0x67

    if-le p2, v2, :cond_27

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 129
    :cond_27
    :try_start_27
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV4Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2b
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_27 .. :try_end_2b} :catch_2c

    return-object v0

    .line 130
    :catch_2c
    move-exception v4

    .line 132
    .local v4, "e":Landroid/util/apk/SignatureNotFoundException;
    if-lt p2, v2, :cond_47

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APK Signature Scheme v4 signature in package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v3, v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 138
    .end local v4    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_47
    const/4 v2, 0x3

    if-le p2, v2, :cond_68

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 145
    :cond_68
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3AndBelowSignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 31
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .line 374
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    const/4 v12, 0x1

    if-eqz v11, :cond_c

    sget v0, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    goto :goto_d

    :cond_c
    move v0, v12

    :goto_d
    move v13, v0

    .line 375
    .local v13, "objectNumber":I
    new-array v14, v13, [Landroid/util/jar/StrictJarFile;

    .line 376
    .local v14, "jarFile":[Landroid/util/jar/StrictJarFile;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 381
    .local v3, "strictJarFiles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/jar/StrictJarFile;>;"
    const/16 v15, -0x67

    const-wide/32 v7, 0x40000

    :try_start_1a
    const-string/jumbo v0, "strictJarFileCtor"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    if-ge v0, v13, :cond_2d

    .line 385
    new-instance v1, Landroid/util/jar/StrictJarFile;

    invoke-direct {v1, v10, v12, v11}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    aput-object v1, v14, v0

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 390
    .end local v0    # "i":I
    :cond_2d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 394
    .local v5, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    const/16 v16, 0x0

    aget-object v0, v14, v16

    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v0, v1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    move-object v4, v0

    .line 396
    .local v4, "manifestEntry":Ljava/util/zip/ZipEntry;
    if-nez v4, :cond_71

    .line 397
    const/16 v0, -0x65

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no manifest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_5f
    .catch Ljava/security/GeneralSecurityException; {:try_start_1a .. :try_end_5f} :catch_288
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_5f} :catch_25a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_5f} :catch_25a
    .catchall {:try_start_1a .. :try_end_5f} :catchall_256

    .line 531
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 532
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 533
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_66
    if-ge v1, v13, :cond_70

    .line 534
    aget-object v2, v14, v1

    invoke-static {v2}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 397
    .end local v1    # "i":I
    :cond_70
    return-object v0

    .line 400
    :cond_71
    :try_start_71
    aget-object v0, v14, v16

    .line 401
    invoke-static {v9, v0, v4}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v2, v0

    .line 402
    .local v2, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 403
    invoke-interface {v9, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_82
    .catch Ljava/security/GeneralSecurityException; {:try_start_71 .. :try_end_82} :catch_288
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_82} :catch_25a
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_82} :catch_25a
    .catchall {:try_start_71 .. :try_end_82} :catchall_256

    .line 531
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 532
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 533
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_89
    if-ge v1, v13, :cond_93

    .line 534
    aget-object v6, v14, v1

    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 403
    .end local v1    # "i":I
    :cond_93
    return-object v0

    .line 405
    :cond_94
    :try_start_94
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/security/cert/Certificate;

    move-object/from16 v17, v0

    .line 406
    .local v17, "lastCerts":[[Ljava/security/cert/Certificate;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no certificates at entry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v15, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_c5
    .catch Ljava/security/GeneralSecurityException; {:try_start_94 .. :try_end_c5} :catch_288
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_c5} :catch_25a
    .catch Ljava/lang/RuntimeException; {:try_start_94 .. :try_end_c5} :catch_25a
    .catchall {:try_start_94 .. :try_end_c5} :catchall_256

    .line 531
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 532
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 533
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_cc
    if-ge v1, v13, :cond_d6

    .line 534
    aget-object v6, v14, v1

    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_cc

    .line 407
    .end local v1    # "i":I
    :cond_d6
    return-object v0

    .line 411
    :cond_d7
    :try_start_d7
    invoke-static/range {v17 .. v17}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v0

    move-object v1, v0

    .line 414
    .local v1, "lastSigs":[Landroid/content/pm/Signature;
    if-eqz v11, :cond_224

    .line 415
    aget-object v0, v14, v16

    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v18, v0

    .line 416
    .local v18, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :goto_e6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 417
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 418
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_f9

    goto :goto_e6

    .line 420
    :cond_f9
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_fd
    .catch Ljava/security/GeneralSecurityException; {:try_start_d7 .. :try_end_fd} :catch_288
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_fd} :catch_25a
    .catch Ljava/lang/RuntimeException; {:try_start_d7 .. :try_end_fd} :catch_25a
    .catchall {:try_start_d7 .. :try_end_fd} :catchall_256

    .line 421
    .local v6, "entryName":Ljava/lang/String;
    :try_start_fd
    const-string v7, "META-INF/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_109

    const-wide/32 v7, 0x40000

    goto :goto_e6

    .line 422
    :cond_109
    const-string v7, "AndroidManifest.xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_115

    const-wide/32 v7, 0x40000

    goto :goto_e6

    .line 424
    :cond_115
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    const-wide/32 v7, 0x40000

    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "entryName":Ljava/lang/String;
    goto :goto_e6

    .line 434
    :cond_11c
    new-instance v0, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    invoke-direct {v0}, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;-><init>()V

    move-object v8, v0

    .line 435
    .local v8, "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v8, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    .line 436
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v23, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    const-wide/16 v24, 0x1

    sget-object v26, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v27, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v27 .. v27}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object/from16 v21, v0

    move/from16 v22, v23

    invoke-direct/range {v21 .. v27}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    move-object v7, v0

    .line 442
    .local v7, "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_142
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_188

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 443
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    new-instance v21, Landroid/util/apk/ApkSignatureVerifier$1;
    :try_end_150
    .catch Ljava/security/GeneralSecurityException; {:try_start_fd .. :try_end_150} :catch_21f
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_150} :catch_21a
    .catch Ljava/lang/RuntimeException; {:try_start_fd .. :try_end_150} :catch_21a
    .catchall {:try_start_fd .. :try_end_150} :catchall_214

    move-object/from16 v22, v1

    .end local v1    # "lastSigs":[Landroid/content/pm/Signature;
    .local v22, "lastSigs":[Landroid/content/pm/Signature;
    move-object/from16 v1, v21

    move-object/from16 v23, v2

    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .local v23, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    move-object v2, v8

    move-object/from16 v24, v4

    .end local v4    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .local v24, "manifestEntry":Ljava/util/zip/ZipEntry;
    move-object v4, v14

    move-object/from16 v25, v5

    .end local v5    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .local v25, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    move-object/from16 v5, p0

    move-object v15, v7

    const-wide/32 v19, 0x40000

    .end local v7    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .local v15, "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    move-object/from16 v7, p1

    move-object v12, v8

    .end local v8    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .local v12, "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    move-object/from16 v8, v22

    :try_start_167
    invoke-direct/range {v1 .. v8}, Landroid/util/apk/ApkSignatureVerifier$1;-><init>(Landroid/util/apk/ApkSignatureVerifier$1VerificationData;Landroid/util/ArrayMap;[Landroid/util/jar/StrictJarFile;Landroid/content/pm/parsing/result/ParseInput;Ljava/util/zip/ZipEntry;Ljava/lang/String;[Landroid/content/pm/Signature;)V

    move-object/from16 v1, v21

    .line 497
    .local v1, "verifyTask":Ljava/lang/Runnable;
    iget-object v2, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    monitor-enter v2
    :try_end_16f
    .catch Ljava/security/GeneralSecurityException; {:try_start_167 .. :try_end_16f} :catch_254
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_16f} :catch_252
    .catch Ljava/lang/RuntimeException; {:try_start_167 .. :try_end_16f} :catch_252
    .catchall {:try_start_167 .. :try_end_16f} :catchall_2b6

    .line 498
    :try_start_16f
    iget v4, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-nez v4, :cond_176

    .line 499
    invoke-virtual {v15, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 501
    :cond_176
    monitor-exit v2

    .line 502
    .end local v1    # "verifyTask":Ljava/lang/Runnable;
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    move-object v8, v12

    move-object v7, v15

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    const/4 v12, 0x1

    const/16 v15, -0x67

    goto :goto_142

    .line 501
    .restart local v1    # "verifyTask":Ljava/lang/Runnable;
    .restart local v6    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_185
    move-exception v0

    monitor-exit v2
    :try_end_187
    .catchall {:try_start_16f .. :try_end_187} :catchall_185

    .end local v3    # "strictJarFiles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/jar/StrictJarFile;>;"
    .end local v13    # "objectNumber":I
    .end local v14    # "jarFile":[Landroid/util/jar/StrictJarFile;
    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "verifyFull":Z
    :try_start_187
    throw v0

    .line 503
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v12    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .end local v15    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v22    # "lastSigs":[Landroid/content/pm/Signature;
    .end local v23    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .end local v24    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v25    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .local v1, "lastSigs":[Landroid/content/pm/Signature;
    .restart local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .restart local v3    # "strictJarFiles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/jar/StrictJarFile;>;"
    .restart local v4    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .restart local v7    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local v8    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .restart local v13    # "objectNumber":I
    .restart local v14    # "jarFile":[Landroid/util/jar/StrictJarFile;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "verifyFull":Z
    :cond_188
    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object v15, v7

    move-object v12, v8

    const-wide/32 v19, 0x40000

    .end local v1    # "lastSigs":[Landroid/content/pm/Signature;
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .end local v4    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v5    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .end local v7    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v8    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .restart local v12    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .restart local v15    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local v22    # "lastSigs":[Landroid/content/pm/Signature;
    .restart local v23    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .restart local v24    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v25    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    const/4 v1, 0x1

    iput-boolean v1, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z

    .line 504
    invoke-virtual {v15}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 505
    :goto_19b
    iget-boolean v0, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z
    :try_end_19d
    .catch Ljava/security/GeneralSecurityException; {:try_start_187 .. :try_end_19d} :catch_254
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_19d} :catch_252
    .catch Ljava/lang/RuntimeException; {:try_start_187 .. :try_end_19d} :catch_252
    .catchall {:try_start_187 .. :try_end_19d} :catchall_2b6

    if-eqz v0, :cond_1e3

    .line 507
    :try_start_19f
    iget v0, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-eqz v0, :cond_1c8

    iget-boolean v0, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->shutDown:Z

    if-nez v0, :cond_1c8

    .line 508
    const-string v0, "ApkSignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyV1 Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {v15}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 510
    const/4 v1, 0x1

    iput-boolean v1, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->shutDown:Z

    .line 512
    :cond_1c8
    const-wide/16 v0, 0x32

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v15, v0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1d4

    const/4 v1, 0x1

    goto :goto_1d6

    :cond_1d4
    move/from16 v1, v16

    :goto_1d6
    iput-boolean v1, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z
    :try_end_1d8
    .catch Ljava/lang/InterruptedException; {:try_start_19f .. :try_end_1d8} :catch_1d9
    .catch Ljava/security/GeneralSecurityException; {:try_start_19f .. :try_end_1d8} :catch_254
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1d8} :catch_252
    .catch Ljava/lang/RuntimeException; {:try_start_19f .. :try_end_1d8} :catch_252
    .catchall {:try_start_19f .. :try_end_1d8} :catchall_2b6

    .line 516
    goto :goto_19b

    .line 514
    :catch_1d9
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1da
    const-string v1, "ApkSignatureVerifier"

    const-string v2, "VerifyV1 interrupted while awaiting all threads done..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_19b

    .line 518
    :cond_1e3
    iget v0, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-eqz v0, :cond_22e

    .line 519
    iget v0, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to collect certificates from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exception:Ljava/lang/Exception;

    invoke-interface {v9, v0, v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_202
    .catch Ljava/security/GeneralSecurityException; {:try_start_1da .. :try_end_202} :catch_254
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_202} :catch_252
    .catch Ljava/lang/RuntimeException; {:try_start_1da .. :try_end_202} :catch_252
    .catchall {:try_start_1da .. :try_end_202} :catchall_2b6

    .line 531
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 532
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 533
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_209
    if-ge v1, v13, :cond_213

    .line 534
    aget-object v2, v14, v1

    invoke-static {v2}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_209

    .line 519
    .end local v1    # "i":I
    :cond_213
    return-object v0

    .line 531
    .end local v12    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .end local v15    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v17    # "lastCerts":[[Ljava/security/cert/Certificate;
    .end local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v22    # "lastSigs":[Landroid/content/pm/Signature;
    .end local v23    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .end local v24    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v25    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catchall_214
    move-exception v0

    const-wide/32 v19, 0x40000

    goto/16 :goto_2b7

    .line 527
    :catch_21a
    move-exception v0

    const-wide/32 v19, 0x40000

    goto :goto_25d

    .line 524
    :catch_21f
    move-exception v0

    const-wide/32 v19, 0x40000

    goto :goto_28b

    .line 414
    .local v1, "lastSigs":[Landroid/content/pm/Signature;
    .restart local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .restart local v4    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .restart local v17    # "lastCerts":[[Ljava/security/cert/Certificate;
    :cond_224
    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-wide/from16 v19, v7

    .line 522
    .end local v1    # "lastSigs":[Landroid/content/pm/Signature;
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .end local v4    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v5    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .restart local v22    # "lastSigs":[Landroid/content/pm/Signature;
    .restart local v23    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .restart local v24    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v25    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_22e
    :try_start_22e
    new-instance v0, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v1, Landroid/content/pm/SigningDetails;

    move-object/from16 v2, v22

    const/4 v4, 0x1

    .end local v22    # "lastSigs":[Landroid/content/pm/Signature;
    .local v2, "lastSigs":[Landroid/content/pm/Signature;
    invoke-direct {v1, v2, v4}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I)V

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_240
    .catch Ljava/security/GeneralSecurityException; {:try_start_22e .. :try_end_240} :catch_254
    .catch Ljava/io/IOException; {:try_start_22e .. :try_end_240} :catch_252
    .catch Ljava/lang/RuntimeException; {:try_start_22e .. :try_end_240} :catch_252
    .catchall {:try_start_22e .. :try_end_240} :catchall_2b6

    .line 531
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 532
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 533
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_247
    if-ge v1, v13, :cond_251

    .line 534
    aget-object v4, v14, v1

    invoke-static {v4}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_247

    .line 522
    .end local v1    # "i":I
    :cond_251
    return-object v0

    .line 527
    .end local v2    # "lastSigs":[Landroid/content/pm/Signature;
    .end local v17    # "lastCerts":[[Ljava/security/cert/Certificate;
    .end local v23    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .end local v24    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v25    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catch_252
    move-exception v0

    goto :goto_25d

    .line 524
    :catch_254
    move-exception v0

    goto :goto_28b

    .line 531
    :catchall_256
    move-exception v0

    move-wide/from16 v19, v7

    goto :goto_2b7

    .line 527
    :catch_25a
    move-exception v0

    move-wide/from16 v19, v7

    .line 528
    .local v0, "e":Ljava/lang/Exception;
    :goto_25d
    :try_start_25d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to collect certificates from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x67

    invoke-interface {v9, v2, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_276
    .catchall {:try_start_25d .. :try_end_276} :catchall_2b6

    .line 531
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 532
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 533
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27d
    if-ge v2, v13, :cond_287

    .line 534
    aget-object v4, v14, v2

    invoke-static {v4}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_27d

    .line 528
    .end local v2    # "i":I
    :cond_287
    return-object v1

    .line 524
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_288
    move-exception v0

    move-wide/from16 v19, v7

    .line 525
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_28b
    const/16 v1, -0x69

    :try_start_28d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to collect certificates from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_2a4
    .catchall {:try_start_28d .. :try_end_2a4} :catchall_2b6

    .line 531
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 532
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 533
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2ab
    if-ge v2, v13, :cond_2b5

    .line 534
    aget-object v4, v14, v2

    invoke-static {v4}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_2ab

    .line 525
    .end local v2    # "i":I
    :cond_2b5
    return-object v1

    .line 531
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catchall_2b6
    move-exception v0

    :goto_2b7
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 532
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 533
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2be
    if-ge v1, v13, :cond_2c8

    .line 534
    aget-object v2, v14, v1

    invoke-static {v2}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_2be

    .line 536
    .end local v1    # "i":I
    :cond_2c8
    throw v0
.end method

.method private static blacklist verifyV2Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 347
    if-eqz p2, :cond_6

    const-string/jumbo v0, "verifyV2"

    goto :goto_8

    :cond_6
    const-string v0, "certsOnlyV2"

    :goto_8
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 349
    nop

    .line 350
    :try_start_f
    invoke-static {p1, p2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    .line 351
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    .line 352
    .local v3, "signerCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 353
    .local v4, "signerSigs":[Landroid/content/pm/Signature;
    new-instance v5, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v6, Landroid/content/pm/SigningDetails;

    const/4 v7, 0x2

    invoke-direct {v6, v4, v7}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I)V

    iget-object v7, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v5, v6, v7}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {p0, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_2a
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_f .. :try_end_2a} :catch_54
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_30
    .catchall {:try_start_f .. :try_end_2a} :catchall_2e

    .line 363
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 353
    return-object v5

    .line 363
    .end local v0    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .end local v4    # "signerSigs":[Landroid/content/pm/Signature;
    :catchall_2e
    move-exception v0

    goto :goto_57

    .line 357
    :catch_30
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    const/16 v3, -0x67

    :try_start_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to collect certificates from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using APK Signature Scheme v2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_2e

    .line 363
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 359
    return-object v3

    .line 355
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_54
    move-exception v0

    .line 356
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    nop

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "verifyFull":Z
    :try_start_56
    throw v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_2e

    .line 363
    .end local v0    # "e":Landroid/util/apk/SignatureNotFoundException;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "verifyFull":Z
    :goto_57
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 364
    throw v0
.end method

.method private static blacklist verifyV3AndBelowSignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .param p3, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .line 153
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 154
    :catch_5
    move-exception v0

    .line 156
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    const/4 v1, 0x3

    const/16 v2, -0x67

    if-lt p2, v1, :cond_23

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No APK Signature Scheme v3 signature in package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 163
    .end local v0    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_23
    const-string v0, " or newer for package "

    const-string v1, "No signature found in package of version "

    const/4 v3, 0x2

    if-le p2, v3, :cond_48

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 172
    :cond_48
    :try_start_48
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV2Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4c
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_48 .. :try_end_4c} :catch_4d

    return-object v0

    .line 173
    :catch_4d
    move-exception v4

    .line 175
    .local v4, "e":Landroid/util/apk/SignatureNotFoundException;
    if-lt p2, v3, :cond_68

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APK Signature Scheme v2 signature in package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 182
    .end local v4    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_68
    const/4 v3, 0x1

    if-le p2, v3, :cond_89

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 190
    :cond_89
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist verifyV3Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 306
    if-eqz p2, :cond_6

    const-string/jumbo v0, "verifyV3"

    goto :goto_8

    :cond_6
    const-string v0, "certsOnlyV3"

    :goto_8
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 309
    if-eqz p2, :cond_15

    :try_start_10
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    goto :goto_19

    .line 310
    :cond_15
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    :goto_19
    nop

    .line 312
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    const/4 v3, 0x1

    new-array v3, v3, [[Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    .line 313
    .local v3, "signerCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 314
    .local v4, "signerSigs":[Landroid/content/pm/Signature;
    const/4 v5, 0x0

    .line 315
    .local v5, "pastSignerSigs":[Landroid/content/pm/Signature;
    iget-object v6, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-eqz v6, :cond_65

    .line 317
    iget-object v6, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v6, v6, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/pm/Signature;

    move-object v5, v6

    .line 318
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_37
    array-length v7, v5

    if-ge v6, v7, :cond_65

    .line 319
    new-instance v7, Landroid/content/pm/Signature;

    iget-object v8, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v8, v8, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v7, v5, v6

    .line 320
    aget-object v7, v5, v6

    iget-object v8, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v8, v8, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 318
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 323
    .end local v6    # "i":I
    :cond_65
    new-instance v6, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v7, Landroid/content/pm/SigningDetails;

    const/4 v8, 0x3

    invoke-direct {v7, v4, v8, v5}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    iget-object v8, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v6, v7, v8}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {p0, v6}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_76
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_10 .. :try_end_76} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_76} :catch_7c
    .catchall {:try_start_10 .. :try_end_76} :catchall_7a

    .line 334
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 323
    return-object v6

    .line 334
    .end local v0    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .end local v4    # "signerSigs":[Landroid/content/pm/Signature;
    .end local v5    # "pastSignerSigs":[Landroid/content/pm/Signature;
    :catchall_7a
    move-exception v0

    goto :goto_a3

    .line 328
    :catch_7c
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    const/16 v3, -0x67

    :try_start_7f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to collect certificates from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using APK Signature Scheme v3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_9c
    .catchall {:try_start_7f .. :try_end_9c} :catchall_7a

    .line 334
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 330
    return-object v3

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    nop

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "verifyFull":Z
    :try_start_a2
    throw v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_7a

    .line 334
    .end local v0    # "e":Landroid/util/apk/SignatureNotFoundException;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "verifyFull":Z
    :goto_a3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 335
    throw v0
.end method

.method private static blacklist verifyV4Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 22
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .param p3, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 203
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz p3, :cond_a

    const-string/jumbo v0, "verifyV4"

    goto :goto_c

    :cond_a
    const-string v0, "certsOnlyV4"

    :goto_c
    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 205
    nop

    .line 206
    :try_start_13
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->extractSignature(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    move-object v5, v0

    .line 207
    .local v5, "v4Pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;>;"
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/incremental/V4Signature$HashingInfo;

    move-object v6, v0

    .line 208
    .local v6, "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/incremental/V4Signature$SigningInfos;

    move-object v7, v0

    .line 210
    .local v7, "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    const/4 v8, 0x0

    .line 211
    .local v8, "pastSignerSigs":[Landroid/content/pm/Signature;
    const/4 v9, 0x0

    .line 212
    .local v9, "nonstreamingDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    const/4 v10, 0x0

    .line 214
    .local v10, "nonstreamingCerts":[[Ljava/security/cert/Certificate;
    const/4 v11, -0x1

    .line 217
    .local v11, "v3BlockId":I
    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez p3, :cond_2f

    iget-object v0, v7, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;

    array-length v0, v0
    :try_end_2d
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_13 .. :try_end_2d} :catch_176
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2d} :catch_14f
    .catchall {:try_start_13 .. :try_end_2d} :catchall_14d

    if-lez v0, :cond_91

    .line 221
    :cond_2f
    nop

    .line 222
    :try_start_30
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    .line 223
    .local v0, "v3Signer":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    iget-object v14, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    move-object v9, v14

    .line 224
    new-array v14, v13, [[Ljava/security/cert/Certificate;

    iget-object v15, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aput-object v15, v14, v12

    move-object v10, v14

    .line 225
    iget-object v14, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-eqz v14, :cond_7f

    .line 227
    iget-object v14, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v14, v14, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Landroid/content/pm/Signature;

    move-object v8, v14

    .line 228
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4e
    array-length v15, v8

    if-ge v14, v15, :cond_7f

    .line 229
    new-instance v15, Landroid/content/pm/Signature;

    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v3, v3, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    .line 230
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v15, v3}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v15, v8, v14

    .line 231
    aget-object v3, v8, v14

    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v4, v4, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 228
    add-int/lit8 v14, v14, 0x1

    const-wide/32 v3, 0x40000

    goto :goto_4e

    .line 234
    .end local v14    # "i":I
    :cond_7f
    iget v3, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->blockId:I
    :try_end_81
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_30 .. :try_end_81} :catch_83
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_81} :catch_14f
    .catchall {:try_start_30 .. :try_end_81} :catchall_14d

    move v11, v3

    .line 246
    .end local v0    # "v3Signer":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    goto :goto_91

    .line 235
    :catch_83
    move-exception v0

    move-object v3, v0

    .line 237
    .local v3, "e":Landroid/util/apk/SignatureNotFoundException;
    nop

    .line 238
    :try_start_86
    invoke-static {v2, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    .line 239
    .local v0, "v2Signer":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    move-object v9, v4

    .line 240
    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;
    :try_end_8f
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_86 .. :try_end_8f} :catch_133
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8f} :catch_14f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_14d

    move-object v10, v4

    .line 245
    .end local v0    # "v2Signer":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    nop

    .line 249
    .end local v3    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_91
    :goto_91
    nop

    .line 250
    :try_start_92
    invoke-static {v2, v6, v7, v11}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->verify(Ljava/lang/String;Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    move-result-object v0

    .line 252
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    new-array v3, v13, [[Ljava/security/cert/Certificate;

    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->certs:[Ljava/security/cert/Certificate;

    aput-object v4, v3, v12

    .line 253
    .local v3, "signerCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 255
    .local v4, "signerSigs":[Landroid/content/pm/Signature;
    if-eqz p3, :cond_119

    .line 256
    invoke-static {v10}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v12

    .line 257
    .local v12, "nonstreamingSigs":[Landroid/content/pm/Signature;
    array-length v13, v12

    array-length v14, v4

    if-ne v13, v14, :cond_fd

    .line 262
    const/4 v13, 0x0

    .local v13, "i":I
    array-length v14, v4

    .local v14, "size":I
    :goto_ac
    if-ge v13, v14, :cond_c7

    .line 263
    aget-object v15, v12, v13

    move-object/from16 v16, v3

    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .local v16, "signerCerts":[[Ljava/security/cert/Certificate;
    aget-object v3, v4, v13

    invoke-virtual {v15, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 262
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v16

    goto :goto_ac

    .line 264
    :cond_bf
    new-instance v3, Ljava/lang/SecurityException;

    const-string v15, "V4 signature certificate does not match V2/V3"

    invoke-direct {v3, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    throw v3

    .line 262
    .end local v16    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :cond_c7
    move-object/from16 v16, v3

    .line 269
    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .end local v13    # "i":I
    .end local v14    # "size":I
    .restart local v16    # "signerCerts":[[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    .line 270
    .local v3, "found":Z
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 271
    .local v14, "nonstreamingDigest":[B
    iget-object v15, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->apkDigest:[B

    move/from16 v17, v3

    .end local v3    # "found":Z
    .local v17, "found":Z
    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->apkDigest:[B

    array-length v3, v3

    invoke-static {v15, v14, v3}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 273
    const/4 v3, 0x1

    .line 274
    .end local v17    # "found":Z
    .restart local v3    # "found":Z
    goto :goto_f2

    .line 276
    .end local v3    # "found":Z
    .end local v14    # "nonstreamingDigest":[B
    .restart local v17    # "found":Z
    :cond_ed
    move/from16 v3, v17

    goto :goto_d2

    .line 270
    .end local v17    # "found":Z
    .restart local v3    # "found":Z
    :cond_f0
    move/from16 v17, v3

    .line 277
    :goto_f2
    if-eqz v3, :cond_f5

    goto :goto_11b

    .line 278
    :cond_f5
    new-instance v13, Ljava/lang/SecurityException;

    const-string v14, "APK digest in V4 signature does not match V2/V3"

    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    throw v13

    .line 258
    .end local v16    # "signerCerts":[[Ljava/security/cert/Certificate;
    .local v3, "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :cond_fd
    move-object/from16 v16, v3

    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local v16    # "signerCerts":[[Ljava/security/cert/Certificate;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid number of certificates: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    throw v3

    .line 255
    .end local v12    # "nonstreamingSigs":[Landroid/content/pm/Signature;
    .end local v16    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :cond_119
    move-object/from16 v16, v3

    .line 282
    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local v16    # "signerCerts":[[Ljava/security/cert/Certificate;
    :goto_11b
    new-instance v3, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v12, Landroid/content/pm/SigningDetails;

    const/4 v13, 0x4

    invoke-direct {v12, v4, v13, v8}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    iget-object v13, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v3, v12, v13}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {v1, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_12c
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_92 .. :try_end_12c} :catch_176
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_12c} :catch_14f
    .catchall {:try_start_92 .. :try_end_12c} :catchall_14d

    .line 293
    const-wide/32 v12, 0x40000

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 282
    return-object v3

    .line 241
    .end local v0    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    .end local v4    # "signerSigs":[Landroid/content/pm/Signature;
    .end local v16    # "signerCerts":[[Ljava/security/cert/Certificate;
    .local v3, "e":Landroid/util/apk/SignatureNotFoundException;
    :catch_133
    move-exception v0

    .line 242
    .local v0, "ee":Landroid/util/apk/SignatureNotFoundException;
    :try_start_134
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "V4 verification failed to collect V2/V3 certificates from : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    throw v4
    :try_end_14d
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_134 .. :try_end_14d} :catch_176
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_14d} :catch_14f
    .catchall {:try_start_134 .. :try_end_14d} :catchall_14d

    .line 293
    .end local v0    # "ee":Landroid/util/apk/SignatureNotFoundException;
    .end local v3    # "e":Landroid/util/apk/SignatureNotFoundException;
    .end local v5    # "v4Pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;>;"
    .end local v6    # "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    .end local v7    # "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    .end local v8    # "pastSignerSigs":[Landroid/content/pm/Signature;
    .end local v9    # "nonstreamingDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .end local v10    # "nonstreamingCerts":[[Ljava/security/cert/Certificate;
    .end local v11    # "v3BlockId":I
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :catchall_14d
    move-exception v0

    goto :goto_179

    .line 287
    :catch_14f
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const/16 v3, -0x67

    :try_start_152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to collect certificates from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using APK Signature Scheme v4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_16f
    .catchall {:try_start_152 .. :try_end_16f} :catchall_14d

    .line 293
    const-wide/32 v4, 0x40000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 289
    return-object v3

    .line 285
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_176
    move-exception v0

    .line 286
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    nop

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    :try_start_178
    throw v0
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_14d

    .line 293
    .end local v0    # "e":Landroid/util/apk/SignatureNotFoundException;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :goto_179
    const-wide/32 v3, 0x40000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 294
    throw v0
.end method
