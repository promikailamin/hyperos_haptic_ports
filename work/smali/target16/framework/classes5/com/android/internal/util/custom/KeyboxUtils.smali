.class public Lcom/android/internal/util/custom/KeyboxUtils;
.super Ljava/lang/Object;
.source "KeyboxUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/custom/KeyboxUtils$Key;
    }
.end annotation


# static fields
.field private static final blacklist response:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/internal/util/custom/KeyboxUtils$Key;",
            "Landroid/system/keystore2/KeyEntryResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/custom/KeyboxUtils;->response:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist append(ILjava/lang/String;Landroid/system/keystore2/KeyEntryResponse;)V
    .registers 5

    .line 148
    sget-object v0, Lcom/android/internal/util/custom/KeyboxUtils;->response:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/internal/util/custom/KeyboxUtils$Key;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/util/custom/KeyboxUtils$Key;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public static blacklist decodePemOrBase64(Ljava/lang/String;)[B
    .registers 3

    .line 45
    nop

    .line 46
    const-string v0, "-----BEGIN [^-]+-----"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 47
    const-string v0, "-----END [^-]+-----"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 48
    const-string v0, "\\s+"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getCertificateChain(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/android/internal/util/custom/KeyProviderManager;->getProvider()Lcom/android/internal/util/custom/IKeyboxProvider;

    move-result-object v0

    .line 95
    const-string v1, "EC"

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 96
    invoke-interface {v0}, Lcom/android/internal/util/custom/IKeyboxProvider;->getEcCertificateChain()[Ljava/lang/String;

    move-result-object p0

    goto :goto_15

    .line 97
    :cond_11
    invoke-interface {v0}, Lcom/android/internal/util/custom/IKeyboxProvider;->getRsaCertificateChain()[Ljava/lang/String;

    move-result-object p0

    .line 99
    :goto_15
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    array-length v1, p0

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_2f

    aget-object v3, p0, v2

    .line 103
    invoke-static {v3}, Lcom/android/internal/util/custom/KeyboxUtils;->parseCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 106
    :cond_2f
    return-object v0
.end method

.method public static blacklist getCertificateFromHolder(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 125
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public static blacklist getCertificateHolder(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    invoke-static {}, Lcom/android/internal/util/custom/KeyProviderManager;->getProvider()Lcom/android/internal/util/custom/IKeyboxProvider;

    move-result-object v0

    .line 139
    const-string v1, "EC"

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_14

    .line 140
    invoke-interface {v0}, Lcom/android/internal/util/custom/IKeyboxProvider;->getEcCertificateChain()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    goto :goto_1a

    .line 141
    :cond_14
    invoke-interface {v0}, Lcom/android/internal/util/custom/IKeyboxProvider;->getRsaCertificateChain()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    .line 143
    :goto_1a
    invoke-static {p0}, Lcom/android/internal/util/custom/KeyboxUtils;->parseCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    .line 144
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>([B)V

    return-object v0
.end method

.method public static blacklist getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    invoke-static {}, Lcom/android/internal/util/custom/KeyProviderManager;->getProvider()Lcom/android/internal/util/custom/IKeyboxProvider;

    move-result-object v0

    .line 130
    const-string v1, "EC"

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 131
    invoke-interface {v0}, Lcom/android/internal/util/custom/IKeyboxProvider;->getEcPrivateKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 132
    :cond_11
    invoke-interface {v0}, Lcom/android/internal/util/custom/IKeyboxProvider;->getRsaPrivateKey()Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_15
    invoke-static {v0, p0}, Lcom/android/internal/util/custom/KeyboxUtils;->parsePrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    invoke-static {p0}, Lcom/android/internal/util/custom/KeyboxUtils;->decodePemOrBase64(Ljava/lang/String;)[B

    move-result-object p0

    .line 88
    nop

    .line 89
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 90
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 88
    return-object p0
.end method

.method public static blacklist parsePrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-static {p0}, Lcom/android/internal/util/custom/KeyboxUtils;->decodePemOrBase64(Ljava/lang/String;)[B

    move-result-object p0

    .line 54
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 55
    const-string v1, "EC"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 58
    :try_start_10
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p0

    .line 59
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_25} :catch_26

    return-object p0

    .line 60
    :catch_26
    move-exception p0

    .line 62
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    .line 63
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    move-result-object p0

    .line 64
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 65
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 66
    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 67
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    .line 69
    :cond_51
    const-string v1, "RSA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 72
    :try_start_59
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_66} :catch_67

    return-object p0

    .line 73
    :catch_67
    move-exception p0

    .line 75
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    move-result-object p0

    .line 76
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {p1, v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 77
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 78
    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 79
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    .line 82
    :cond_8c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist putCertificateChain(Landroid/system/keystore2/KeyEntryResponse;[Ljava/security/cert/Certificate;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    iget-object p0, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    invoke-static {p0, p1}, Lcom/android/internal/util/custom/KeyboxUtils;->putCertificateChain(Landroid/system/keystore2/KeyMetadata;[Ljava/security/cert/Certificate;)V

    .line 111
    return-void
.end method

.method public static blacklist putCertificateChain(Landroid/system/keystore2/KeyMetadata;[Ljava/security/cert/Certificate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    .line 115
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    const/4 v1, 0x1

    :goto_f
    array-length v2, p1

    if-ge v1, v2, :cond_1e

    .line 117
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 119
    :cond_1e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    .line 120
    return-void
.end method

.method public static blacklist retrieve(ILjava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 4

    .line 152
    sget-object v0, Lcom/android/internal/util/custom/KeyboxUtils;->response:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/internal/util/custom/KeyboxUtils$Key;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/util/custom/KeyboxUtils$Key;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/system/keystore2/KeyEntryResponse;

    return-object p0
.end method
