.class public Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;
.super Ljava/lang/Object;
.source "AttestationVerificationSelfTrustedVerifierForTesting.java"


# static fields
.field public static final GOLDEN_ALIAS:Ljava/lang/String;

.field public static volatile sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;


# instance fields
.field public final mAndroidKeyStore:Ljava/security/KeyStore;

.field public final mCertPathValidator:Ljava/security/cert/CertPathValidator;

.field public final mCertificateFactory:Ljava/security/cert/CertificateFactory;

.field public mGoldenRootCert:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".Golden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->GOLDEN_ALIAS:Ljava/lang/String;

    const/4 v0, 0x0

    .line 79
    sput-object v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 101
    const-string v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    .line 102
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mAndroidKeyStore:Ljava/security/KeyStore;

    const/4 v2, 0x0

    .line 103
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 104
    sget-object v3, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->GOLDEN_ALIAS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 105
    const-string v4, "EC"

    .line 106
    invoke-static {v4, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 107
    new-instance v4, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v5, 0xc

    invoke-direct {v4, v3, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 109
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    const-string v5, "SHA-256"

    const-string v6, "SHA-512"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4

    .line 111
    invoke-virtual {v0, v4}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 112
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 116
    :cond_52
    invoke-virtual {v1, v3, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 117
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 118
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mGoldenRootCert:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public static getInstance()Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;
    .registers 2

    .line 88
    sget-object v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    if-nez v0, :cond_19

    .line 89
    const-class v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    monitor-enter v0

    .line 90
    :try_start_7
    sget-object v1, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    if-nez v1, :cond_15

    .line 91
    new-instance v1, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    invoke-direct {v1}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;-><init>()V

    sput-object v1, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 94
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 96
    :cond_19
    :goto_19
    sget-object v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    return-object v0
.end method


# virtual methods
.method public final getChallengeFromCert(Ljava/security/cert/X509Certificate;)[B
    .registers 3

    .line 202
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    .line 203
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    .line 202
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object p0

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "1.3.6.1.4.1.11129.2.1.17"

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const/4 p1, 0x4

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    return-object p0
.end method

.method public final getTrustAnchors()Ljava/util/Set;
    .registers 3

    .line 185
    new-instance v0, Ljava/security/cert/TrustAnchor;

    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mGoldenRootCert:Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final validateRequirements(Landroid/os/Bundle;)Z
    .registers 5

    .line 189
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p0

    const/4 v0, 0x0

    const-string v1, "AVF"

    const/4 v2, 0x1

    if-eq p0, v2, :cond_10

    .line 190
    const-string p0, "Requirements does not contain exactly 1 key."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 193
    :cond_10
    const-string p0, "localbinding.challenge"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1e

    .line 194
    const-string p0, "Requirements does not contain key: localbinding.challenge"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1e
    return v2
.end method

.method public verifyAttestation(ILandroid/os/Bundle;[B)I
    .registers 9

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_a
    const/4 p3, 0x4

    .line 126
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_1f

    .line 127
    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_1c} :catch_1d

    goto :goto_a

    :catch_1d
    move-exception p0

    goto :goto_75

    :cond_1f
    const/4 v1, 0x3

    const/16 v2, 0x8

    .line 136
    const-string v3, "AVF"

    if-ne p1, v1, :cond_60

    .line 137
    invoke-virtual {p0, p2}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->validateRequirements(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_60

    :cond_2d
    const/4 p1, 0x0

    .line 145
    :try_start_2e
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v1}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->getChallengeFromCert(Ljava/security/cert/X509Certificate;)[B

    move-result-object v1
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_55

    .line 151
    const-string v4, "localbinding.challenge"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_4a

    .line 152
    const-string p1, "Self-Trusted validation failed; challenge mismatch."

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :cond_4a
    move v2, p1

    .line 156
    :goto_4b
    invoke-virtual {p0, v0}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->verifyCertificateChain(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_54

    or-int/lit8 p0, v2, 0x4

    return p0

    :cond_54
    return v2

    :catchall_55
    move-exception p0

    .line 147
    const-string p1, "Unable to parse challenge from certificate."

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    .line 138
    :cond_60
    :goto_60
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Local binding requirements verification failure."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 130
    :goto_75
    const-string p1, "Unable to parse certificates from attestation"

    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3
.end method

.method public final verifyCertificateChain(Ljava/util/List;)Z
    .registers 6

    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "AVF"

    const/4 v3, 0x0

    if-ge v0, v1, :cond_10

    .line 165
    const-string p0, "Certificate chain less than 2 in size."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 170
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p1

    .line 171
    new-instance v0, Ljava/security/cert/PKIXParameters;

    invoke-virtual {p0}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 174
    invoke-virtual {v0, v3}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 175
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {p0, p1, v0}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_29

    const/4 p0, 0x1

    return p0

    :catchall_29
    move-exception p0

    .line 177
    const-string p1, "Invalid certificate chain"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method
