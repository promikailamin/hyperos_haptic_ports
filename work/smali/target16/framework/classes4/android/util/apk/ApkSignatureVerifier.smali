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
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ApkSignatureVerifier"

.field private static final greylist-max-o sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final blacklist sOverrideSigningDetails:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/SigningDetails;",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addOverrideSigningDetails(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)V
    .registers 4

    .line 131
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 132
    :try_start_3
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static blacklist clearOverrideSigningDetails()V
    .registers 2

    .line 153
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 154
    :try_start_3
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 155
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static greylist-max-o closeQuietly(Landroid/util/jar/StrictJarFile;)V
    .registers 1

    .line 562
    if-eqz p0, :cond_7

    .line 564
    :try_start_2
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 566
    goto :goto_7

    .line 565
    :catch_6
    move-exception p0

    .line 568
    :cond_7
    :goto_7
    return-void
.end method

.method private static greylist-max-o convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 554
    array-length v0, p0

    new-array v0, v0, [Landroid/content/pm/Signature;

    .line 555
    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 556
    new-instance v2, Landroid/content/pm/Signature;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    aput-object v2, v0, v1

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 558
    :cond_13
    return-object v0
.end method

.method public static greylist-max-o generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 624
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object p0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 625
    :catch_5
    move-exception v0

    .line 628
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getMinimumSignatureSchemeVersionForTargetSdk(I)I
    .registers 2

    .line 575
    const/16 v0, 0x1e

    if-lt p0, v0, :cond_6

    .line 576
    const/4 p0, 0x2

    return p0

    .line 578
    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist-max-o getVerityRootHash(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 602
    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 603
    :catch_5
    move-exception v0

    .line 607
    :try_start_6
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_a
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    .line 608
    :catch_b
    move-exception p0

    .line 609
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
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

    .line 515
    nop

    .line 519
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 520
    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->readFullyIgnoringContents(Ljava/io/InputStream;)V

    .line 521
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_11} :catch_17
    .catchall {:try_start_2 .. :try_end_11} :catchall_15

    .line 526
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 521
    return-object p0

    .line 526
    :catchall_15
    move-exception p0

    goto :goto_43

    .line 522
    :catch_17
    move-exception v1

    .line 523
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 524
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " in "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 523
    const/16 p2, -0x66

    invoke-interface {p0, p2, p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_15

    .line 526
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 523
    return-object p0

    .line 526
    :goto_43
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 527
    throw p0
.end method

.method private static greylist-max-o readFullyIgnoringContents(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 532
    if-nez v0, :cond_f

    .line 533
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 536
    :cond_f
    nop

    .line 537
    nop

    .line 538
    :goto_11
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    .line 539
    goto :goto_11

    .line 542
    :cond_1b
    sget-object p0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 543
    return-void
.end method

.method public static blacklist removeOverrideSigningDetails(Landroid/content/pm/SigningDetails;)V
    .registers 3

    .line 144
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 145
    :try_start_3
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static blacklist unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
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

    .line 93
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/ApkSignatureVerifier;->verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
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

    .line 83
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/ApkSignatureVerifier;->verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
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

    .line 103
    nop

    .line 104
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 105
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_10

    .line 106
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 108
    :cond_10
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    iget-object p2, p2, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 109
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p3

    if-eqz p3, :cond_49

    .line 111
    sget-object p3, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    monitor-enter p3

    .line 112
    :try_start_21
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningDetails;

    .line 113
    monitor-exit p3
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_46

    .line 114
    if-eqz v0, :cond_49

    .line 115
    const-string p2, "ApkSignatureVerifier"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying override signing details for APK "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    move-object p2, v0

    goto :goto_49

    .line 113
    :catchall_46
    move-exception p0

    :try_start_47
    monitor-exit p3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0

    .line 119
    :cond_49
    :goto_49
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
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

    .line 168
    const-string v0, " or newer for package "

    const-string v1, "No signature found in package of version "

    const/16 v2, -0x67

    const/4 v3, 0x4

    if-le p2, v3, :cond_27

    .line 170
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 177
    :cond_27
    :try_start_27
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV4Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_2b
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_27 .. :try_end_2b} :catch_2c

    return-object p0

    .line 178
    :catch_2c
    move-exception v4

    .line 180
    if-lt p2, v3, :cond_47

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No APK Signature Scheme v4 signature in package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 186
    :cond_47
    const/4 v3, 0x3

    if-le p2, v3, :cond_68

    .line 188
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 193
    :cond_68
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3AndBelowSignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
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

    .line 424
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    const-string v3, "Failed to collect certificates from "

    const-string v4, "AndroidManifest.xml"

    .line 430
    const/16 v5, -0x67

    const-wide/32 v6, 0x40000

    const/4 v8, 0x0

    :try_start_10
    const-string v9, "strictJarFileCtor"

    invoke-static {v6, v7, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 434
    new-instance v9, Landroid/util/jar/StrictJarFile;

    const/4 v10, 0x1

    invoke-direct {v9, v2, v10, v0}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_1b
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_1b} :catch_1b4
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1b} :catch_195
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_1b} :catch_195
    .catchall {:try_start_10 .. :try_end_1b} :catchall_191

    .line 438
    :try_start_1b
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 442
    invoke-virtual {v9, v4}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v12
    :try_end_24
    .catch Ljava/security/GeneralSecurityException; {:try_start_1b .. :try_end_24} :catch_18c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_24} :catch_187
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_24} :catch_187
    .catchall {:try_start_1b .. :try_end_24} :catchall_182

    .line 444
    const-string v13, "Package "

    if-nez v12, :cond_4c

    .line 445
    :try_start_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " has no manifest"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, -0x65

    invoke-interface {v1, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_45
    .catch Ljava/security/GeneralSecurityException; {:try_start_28 .. :try_end_45} :catch_18c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_45} :catch_187
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_45} :catch_187
    .catchall {:try_start_28 .. :try_end_45} :catchall_182

    .line 508
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 445
    return-object v0

    .line 448
    :cond_4c
    nop

    .line 449
    :try_start_4d
    invoke-static {v1, v9, v12}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v12

    .line 450
    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v14

    if-eqz v14, :cond_62

    .line 451
    invoke-interface {v1, v12}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_5b
    .catch Ljava/security/GeneralSecurityException; {:try_start_4d .. :try_end_5b} :catch_18c
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5b} :catch_187
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_5b} :catch_187
    .catchall {:try_start_4d .. :try_end_5b} :catchall_182

    .line 508
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 451
    return-object v0

    .line 453
    :cond_62
    :try_start_62
    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Ljava/security/cert/Certificate;

    .line 454
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v14
    :try_end_6c
    .catch Ljava/security/GeneralSecurityException; {:try_start_62 .. :try_end_6c} :catch_18c
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6c} :catch_187
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_6c} :catch_187
    .catchall {:try_start_62 .. :try_end_6c} :catchall_182

    const-string v15, " has no certificates at entry "

    if-eqz v14, :cond_94

    .line 455
    :try_start_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_8d
    .catch Ljava/security/GeneralSecurityException; {:try_start_70 .. :try_end_8d} :catch_18c
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_8d} :catch_187
    .catch Ljava/lang/RuntimeException; {:try_start_70 .. :try_end_8d} :catch_187
    .catchall {:try_start_70 .. :try_end_8d} :catchall_182

    .line 508
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 455
    return-object v0

    .line 459
    :cond_94
    :try_start_94
    invoke-static {v12}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v12

    .line 462
    if-eqz v0, :cond_165

    .line 463
    invoke-virtual {v9}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 464
    :goto_9e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d1

    .line 465
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/zip/ZipEntry;

    .line 466
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v16
    :try_end_ae
    .catch Ljava/security/GeneralSecurityException; {:try_start_94 .. :try_end_ae} :catch_18c
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_ae} :catch_187
    .catch Ljava/lang/RuntimeException; {:try_start_94 .. :try_end_ae} :catch_187
    .catchall {:try_start_94 .. :try_end_ae} :catchall_182

    if-eqz v16, :cond_b1

    goto :goto_9e

    .line 468
    :cond_b1
    move-wide/from16 v16, v6

    :try_start_b3
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 469
    const-string v7, "META-INF/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c2

    move-wide/from16 v6, v16

    goto :goto_9e

    .line 470
    :cond_c2
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cb

    move-wide/from16 v6, v16

    goto :goto_9e

    .line 472
    :cond_cb
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    move-wide/from16 v6, v16

    goto :goto_9e

    .line 475
    :cond_d1
    move-wide/from16 v16, v6

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_167

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 477
    nop

    .line 478
    invoke-static {v1, v9, v4}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 479
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_f9

    .line 480
    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_f2
    .catch Ljava/security/GeneralSecurityException; {:try_start_b3 .. :try_end_f2} :catch_180
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_f2} :catch_17e
    .catch Ljava/lang/RuntimeException; {:try_start_b3 .. :try_end_f2} :catch_17e
    .catchall {:try_start_b3 .. :try_end_f2} :catchall_17c

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 480
    return-object v0

    .line 482
    :cond_f9
    :try_start_f9
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/security/cert/Certificate;

    .line 483
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12d

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 486
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-interface {v1, v5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_126
    .catch Ljava/security/GeneralSecurityException; {:try_start_f9 .. :try_end_126} :catch_180
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_126} :catch_17e
    .catch Ljava/lang/RuntimeException; {:try_start_f9 .. :try_end_126} :catch_17e
    .catchall {:try_start_f9 .. :try_end_126} :catchall_17c

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 484
    return-object v0

    .line 490
    :cond_12d
    :try_start_12d
    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v6

    .line 491
    invoke-static {v12, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_163

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " has mismatched certificates at entry "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 495
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    const/16 v4, -0x68

    invoke-interface {v1, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_15c
    .catch Ljava/security/GeneralSecurityException; {:try_start_12d .. :try_end_15c} :catch_180
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_15c} :catch_17e
    .catch Ljava/lang/RuntimeException; {:try_start_12d .. :try_end_15c} :catch_17e
    .catchall {:try_start_12d .. :try_end_15c} :catchall_17c

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 492
    return-object v0

    .line 497
    :cond_163
    goto/16 :goto_d7

    .line 462
    :cond_165
    move-wide/from16 v16, v6

    .line 499
    :cond_167
    :try_start_167
    new-instance v0, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v4, Landroid/content/pm/SigningDetails;

    invoke-direct {v4, v12, v10}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I)V

    invoke-direct {v0, v4, v8}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_175
    .catch Ljava/security/GeneralSecurityException; {:try_start_167 .. :try_end_175} :catch_180
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_175} :catch_17e
    .catch Ljava/lang/RuntimeException; {:try_start_167 .. :try_end_175} :catch_17e
    .catchall {:try_start_167 .. :try_end_175} :catchall_17c

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 499
    return-object v0

    .line 508
    :catchall_17c
    move-exception v0

    goto :goto_185

    .line 504
    :catch_17e
    move-exception v0

    goto :goto_18a

    .line 501
    :catch_180
    move-exception v0

    goto :goto_18f

    .line 508
    :catchall_182
    move-exception v0

    move-wide/from16 v16, v6

    :goto_185
    move-object v8, v9

    goto :goto_1d6

    .line 504
    :catch_187
    move-exception v0

    move-wide/from16 v16, v6

    :goto_18a
    move-object v8, v9

    goto :goto_198

    .line 501
    :catch_18c
    move-exception v0

    move-wide/from16 v16, v6

    :goto_18f
    move-object v8, v9

    goto :goto_1b7

    .line 508
    :catchall_191
    move-exception v0

    move-wide/from16 v16, v6

    goto :goto_1d6

    .line 504
    :catch_195
    move-exception v0

    move-wide/from16 v16, v6

    .line 505
    :goto_198
    :try_start_198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1ad
    .catchall {:try_start_198 .. :try_end_1ad} :catchall_1d5

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v8}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 505
    return-object v0

    .line 501
    :catch_1b4
    move-exception v0

    move-wide/from16 v16, v6

    .line 502
    :goto_1b7
    :try_start_1b7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x69

    invoke-interface {v1, v3, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1ce
    .catchall {:try_start_1b7 .. :try_end_1ce} :catchall_1d5

    .line 508
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v8}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 502
    return-object v0

    .line 508
    :catchall_1d5
    move-exception v0

    :goto_1d6
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    invoke-static {v8}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 510
    throw v0
.end method

.method private static blacklist verifyV2Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
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

    .line 397
    if-eqz p2, :cond_5

    const-string v0, "verifyV2"

    goto :goto_7

    :cond_5
    const-string v0, "certsOnlyV2"

    :goto_7
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 399
    nop

    .line 400
    :try_start_e
    invoke-static {p1, p2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object p2

    .line 401
    iget-object v0, p2, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    .line 402
    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 403
    new-instance v3, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v4, Landroid/content/pm/SigningDetails;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v5}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I)V

    iget-object p2, p2, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v3, v4, p2}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_29
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_e .. :try_end_29} :catch_53
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_2f
    .catchall {:try_start_e .. :try_end_29} :catchall_2d

    .line 413
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 403
    return-object p0

    .line 413
    :catchall_2d
    move-exception p0

    goto :goto_55

    .line 407
    :catch_2f
    move-exception p2

    .line 409
    :try_start_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to collect certificates from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " using APK Signature Scheme v2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x67

    invoke-interface {p0, v0, p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_4f
    .catchall {:try_start_30 .. :try_end_4f} :catchall_2d

    .line 413
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 409
    return-object p0

    .line 405
    :catch_53
    move-exception p0

    .line 406
    :try_start_54
    throw p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_2d

    .line 413
    :goto_55
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 414
    throw p0
.end method

.method private static blacklist verifyV3AndBelowSignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
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

    .line 201
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 202
    :catch_5
    move-exception v0

    .line 204
    const/4 v1, 0x3

    const/16 v2, -0x67

    if-lt p2, v1, :cond_23

    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No APK Signature Scheme v3 signature in package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 211
    :cond_23
    const-string v0, " or newer for package "

    const-string v1, "No signature found in package of version "

    const/4 v3, 0x2

    if-le p2, v3, :cond_48

    .line 213
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 220
    :cond_48
    :try_start_48
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV2Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_4c
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_48 .. :try_end_4c} :catch_4d

    return-object p0

    .line 221
    :catch_4d
    move-exception v4

    .line 223
    if-lt p2, v3, :cond_68

    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No APK Signature Scheme v2 signature in package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 230
    :cond_68
    const/4 v3, 0x1

    if-le p2, v3, :cond_89

    .line 232
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 238
    :cond_89
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist verifyV3Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
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

    .line 356
    if-eqz p2, :cond_5

    const-string v0, "verifyV3"

    goto :goto_7

    :cond_5
    const-string v0, "certsOnlyV3"

    :goto_7
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 359
    if-eqz p2, :cond_14

    :try_start_f
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object p2

    goto :goto_18

    .line 360
    :cond_14
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object p2

    .line 362
    :goto_18
    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/security/cert/Certificate;

    iget-object v3, p2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 363
    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 364
    nop

    .line 365
    iget-object v3, p2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-eqz v3, :cond_61

    .line 367
    iget-object v3, p2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v3, v3, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v5, v3, [Landroid/content/pm/Signature;

    .line 368
    nop

    :goto_34
    if-ge v4, v3, :cond_62

    .line 369
    new-instance v6, Landroid/content/pm/Signature;

    iget-object v7, p2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v7, v7, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v6, v5, v4

    .line 370
    aget-object v6, v5, v4

    iget-object v7, p2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v7, v7, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 368
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 365
    :cond_61
    const/4 v5, 0x0

    .line 373
    :cond_62
    new-instance v3, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v4, Landroid/content/pm/SigningDetails;

    const/4 v6, 0x3

    invoke-direct {v4, v0, v6, v5}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    iget-object p2, p2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v3, v4, p2}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_73
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_f .. :try_end_73} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_73} :catch_79
    .catchall {:try_start_f .. :try_end_73} :catchall_77

    .line 384
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 373
    return-object p0

    .line 384
    :catchall_77
    move-exception p0

    goto :goto_9f

    .line 378
    :catch_79
    move-exception p2

    .line 380
    :try_start_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to collect certificates from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " using APK Signature Scheme v3"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x67

    invoke-interface {p0, v0, p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_99
    .catchall {:try_start_7a .. :try_end_99} :catchall_77

    .line 384
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 380
    return-object p0

    .line 376
    :catch_9d
    move-exception p0

    .line 377
    :try_start_9e
    throw p0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_77

    .line 384
    :goto_9f
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 385
    throw p0
.end method

.method private static blacklist verifyV4Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
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

    .line 251
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz p3, :cond_9

    const-string v0, "verifyV4"

    goto :goto_b

    :cond_9
    const-string v0, "certsOnlyV4"

    :goto_b
    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 253
    nop

    .line 254
    :try_start_12
    invoke-static {v2}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->extractSignature(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 255
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/os/incremental/V4Signature$HashingInfo;

    .line 256
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/incremental/V4Signature$SigningInfos;

    .line 258
    nop

    .line 259
    nop

    .line 260
    nop

    .line 262
    nop

    .line 266
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->alwaysLoadPastCertsV4()Z

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-nez v0, :cond_3b

    if-nez p3, :cond_3b

    iget-object v0, v6, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;

    array-length v0, v0
    :try_end_32
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_12 .. :try_end_32} :catch_17e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_32} :catch_158
    .catchall {:try_start_12 .. :try_end_32} :catchall_154

    if-lez v0, :cond_35

    goto :goto_3b

    :cond_35
    move-wide/from16 v16, v3

    move-object v0, v7

    move-object v3, v0

    goto/16 :goto_a6

    .line 271
    :cond_3b
    :goto_3b
    nop

    .line 272
    :try_start_3c
    invoke-static {v2}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    .line 273
    iget-object v11, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    .line 274
    new-array v12, v8, [[Ljava/security/cert/Certificate;

    iget-object v13, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aput-object v13, v12, v9

    .line 275
    iget-object v13, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-eqz v13, :cond_8b

    .line 277
    iget-object v13, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v13, v13, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v7, v13, [Landroid/content/pm/Signature;

    .line 278
    move v14, v9

    :goto_57
    if-ge v14, v13, :cond_88

    .line 279
    new-instance v15, Landroid/content/pm/Signature;
    :try_end_5b
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_3c .. :try_end_5b} :catch_95
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_5b} :catch_158
    .catchall {:try_start_3c .. :try_end_5b} :catchall_154

    move-wide/from16 v16, v3

    :try_start_5d
    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v3, v3, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    .line 280
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v15, v3}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v15, v7, v14

    .line 281
    aget-object v3, v7, v14

    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v4, v4, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 278
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v3, v16

    goto :goto_57

    :cond_88
    move-wide/from16 v16, v3

    goto :goto_8d

    .line 275
    :cond_8b
    move-wide/from16 v16, v3

    .line 284
    :goto_8d
    iget v10, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->blockId:I
    :try_end_8f
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_5d .. :try_end_8f} :catch_93
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_8f} :catch_138
    .catchall {:try_start_5d .. :try_end_8f} :catchall_182

    .line 296
    move-object v0, v7

    move-object v3, v11

    move-object v7, v12

    goto :goto_a6

    .line 285
    :catch_93
    move-exception v0

    goto :goto_98

    :catch_95
    move-exception v0

    move-wide/from16 v16, v3

    .line 287
    :goto_98
    nop

    .line 288
    :try_start_99
    invoke-static {v2, v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    .line 289
    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    .line 290
    iget-object v0, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;
    :try_end_a1
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_99 .. :try_end_a1} :catch_13a
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a1} :catch_138
    .catchall {:try_start_99 .. :try_end_a1} :catchall_182

    .line 295
    move-object/from16 v18, v7

    move-object v7, v0

    move-object/from16 v0, v18

    .line 299
    :goto_a6
    nop

    .line 300
    :try_start_a7
    invoke-static {v2, v5, v6, v10}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->verify(Ljava/lang/String;Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    move-result-object v4

    .line 302
    new-array v5, v8, [[Ljava/security/cert/Certificate;

    iget-object v6, v4, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->certs:[Ljava/security/cert/Certificate;

    aput-object v6, v5, v9

    .line 303
    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v5

    .line 305
    if-eqz p3, :cond_121

    .line 306
    invoke-static {v7}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v6

    .line 307
    array-length v7, v6

    array-length v10, v5

    if-ne v7, v10, :cond_107

    .line 312
    array-length v7, v5

    move v10, v9

    :goto_c1
    if-ge v10, v7, :cond_d8

    .line 313
    aget-object v11, v6, v10

    aget-object v12, v5, v10

    invoke-virtual {v11, v12}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d0

    .line 312
    add-int/lit8 v10, v10, 0x1

    goto :goto_c1

    .line 314
    :cond_d0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "V4 signature certificate does not match V2/V3"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_d8
    nop

    .line 320
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 321
    iget-object v7, v4, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->apkDigest:[B

    iget-object v10, v4, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->apkDigest:[B

    array-length v10, v10

    invoke-static {v7, v6, v10}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v6

    if-eqz v6, :cond_fa

    .line 323
    nop

    .line 324
    goto :goto_fc

    .line 326
    :cond_fa
    goto :goto_e1

    .line 320
    :cond_fb
    move v8, v9

    .line 327
    :goto_fc
    if-eqz v8, :cond_ff

    goto :goto_121

    .line 328
    :cond_ff
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "APK digest in V4 signature does not match V2/V3"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_107
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid number of certificates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_121
    :goto_121
    new-instance v3, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v6, Landroid/content/pm/SigningDetails;

    const/4 v7, 0x4

    invoke-direct {v6, v5, v7, v0}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    iget-object v0, v4, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v3, v6, v0}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {v1, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_132
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_a7 .. :try_end_132} :catch_136
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_132} :catch_138
    .catchall {:try_start_a7 .. :try_end_132} :catchall_182

    .line 343
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 332
    return-object v0

    .line 335
    :catch_136
    move-exception v0

    goto :goto_181

    .line 337
    :catch_138
    move-exception v0

    goto :goto_15b

    .line 291
    :catch_13a
    move-exception v0

    .line 292
    :try_start_13b
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V4 verification failed to collect V2/V3 certificates from : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_154
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_13b .. :try_end_154} :catch_136
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_154} :catch_138
    .catchall {:try_start_13b .. :try_end_154} :catchall_182

    .line 343
    :catchall_154
    move-exception v0

    move-wide/from16 v16, v3

    goto :goto_183

    .line 337
    :catch_158
    move-exception v0

    move-wide/from16 v16, v3

    .line 339
    :goto_15b
    :try_start_15b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to collect certificates from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using APK Signature Scheme v4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x67

    invoke-interface {v1, v3, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_17a
    .catchall {:try_start_15b .. :try_end_17a} :catchall_182

    .line 343
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 339
    return-object v0

    .line 335
    :catch_17e
    move-exception v0

    move-wide/from16 v16, v3

    .line 336
    :goto_181
    :try_start_181
    throw v0
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_182

    .line 343
    :catchall_182
    move-exception v0

    :goto_183
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 344
    throw v0
.end method
