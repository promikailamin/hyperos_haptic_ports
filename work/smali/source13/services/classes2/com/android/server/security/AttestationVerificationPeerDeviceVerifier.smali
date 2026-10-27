.class Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;
.super Ljava/lang/Object;
.source "AttestationVerificationPeerDeviceVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_PATCH_AGE_MONTHS:I = 0xc

.field private static final TAG:Ljava/lang/String; = "AVF"


# instance fields
.field private mCertPathValidator:Ljava/security/cert/CertPathValidator;

.field private mCertificateFactory:Ljava/security/cert/CertificateFactory;

.field private final mContext:Landroid/content/Context;

.field private final mRevocationEnabled:Z

.field private final mTestLocalPatchDate:Ljava/time/LocalDate;

.field private final mTestSystemDate:Ljava/time/LocalDate;

.field private final mTrustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 82
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    const-string v1, "AVF"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    sput-boolean v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    .line 107
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 108
    const-string v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    .line 109
    invoke-direct {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    .line 112
    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    .line 113
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Set;ZLjava/time/LocalDate;Ljava/time/LocalDate;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "revocationEnabled"    # Z
    .param p4, "systemDate"    # Ljava/time/LocalDate;
    .param p5, "localPatchDate"    # Ljava/time/LocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;Z",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    .local p2, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    .line 121
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 122
    const-string v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    .line 123
    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    .line 124
    iput-boolean p3, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    .line 125
    iput-object p4, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    .line 126
    iput-object p5, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    .line 127
    return-void
.end method

.method private checkCertificateAttributes(Ljava/security/cert/X509Certificate;ILandroid/os/Bundle;)Z
    .registers 9
    .param p1, "leafCertificate"    # Ljava/security/cert/X509Certificate;
    .param p2, "localBindingType"    # I
    .param p3, "requirements"    # Landroid/os/Bundle;

    .line 274
    nop

    .line 275
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_e3

    .line 280
    .local v1, "attestationAttributes":Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
    nop

    .line 283
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getAttestationVersion()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_14

    .line 284
    const-string v2, "Attestation version is not at least 3 (Keymaster 4)."

    invoke-static {v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 285
    return v0

    .line 289
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeymasterVersion()I

    move-result v2

    const/4 v4, 0x4

    if-ge v2, v4, :cond_21

    .line 290
    const-string v2, "Keymaster version is not at least 4."

    invoke-static {v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 291
    return v0

    .line 295
    :cond_21
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyOsVersion()I

    move-result v2

    const v4, 0x186a0

    if-ge v2, v4, :cond_30

    .line 296
    const-string v2, "Android OS version is not 10+."

    invoke-static {v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 297
    return v0

    .line 300
    :cond_30
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->isAttestationHardwareBacked()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 301
    const-string v2, "Key is not HW backed."

    invoke-static {v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 302
    return v0

    .line 305
    :cond_3c
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->isKeymasterHardwareBacked()Z

    move-result v2

    if-nez v2, :cond_48

    .line 306
    const-string v2, "Keymaster is not HW backed."

    invoke-static {v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 307
    return v0

    .line 310
    :cond_48
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getVerifiedBootState()Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    move-result-object v2

    sget-object v4, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->VERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    if-eq v2, v4, :cond_56

    .line 311
    const-string v2, "Boot state not Verified."

    invoke-static {v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 312
    return v0

    .line 316
    :cond_56
    :try_start_56
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->isVerifiedBootLocked()Z

    move-result v2

    if-nez v2, :cond_62

    .line 317
    const-string v2, "Verified boot state is not locked."

    invoke-static {v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/IllegalStateException; {:try_start_56 .. :try_end_61} :catch_dc

    .line 318
    return v0

    .line 323
    :cond_62
    nop

    .line 326
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyOsPatchLevel()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(I)Z

    move-result v2

    if-nez v2, :cond_73

    .line 327
    const-string v2, "OS patch level is not within valid range."

    invoke-static {v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 328
    return v0

    .line 332
    :cond_73
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyBootPatchLevel()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(I)Z

    move-result v2

    const-string v4, "Boot patch level is not within valid range."

    if-nez v2, :cond_83

    .line 333
    invoke-static {v4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 334
    return v0

    .line 337
    :cond_83
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyVendorPatchLevel()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(I)Z

    move-result v2

    if-nez v2, :cond_93

    .line 338
    const-string v2, "Vendor patch level is not within valid range."

    invoke-static {v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 339
    return v0

    .line 342
    :cond_93
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyBootPatchLevel()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(I)Z

    move-result v2

    if-nez v2, :cond_a1

    .line 343
    invoke-static {v4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 344
    return v0

    .line 348
    :cond_a1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_be

    .line 349
    const-string v2, "localbinding.public_key"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 350
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    .line 349
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_be

    .line 351
    const-string v2, "Provided public key does not match leaf certificate public key."

    invoke-static {v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 352
    return v0

    .line 356
    :cond_be
    if-ne p2, v3, :cond_da

    .line 357
    const-string v2, "localbinding.challenge"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 358
    invoke-virtual {v1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getAttestationChallenge()Lcom/android/framework/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/framework/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    .line 357
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_da

    .line 359
    const-string v2, "Provided challenge does not match leaf certificate challenge."

    invoke-static {v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 360
    return v0

    .line 363
    :cond_da
    const/4 v0, 0x1

    return v0

    .line 320
    :catch_dc
    move-exception v2

    .line 321
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "VerifiedBootLocked is not set."

    invoke-static {v3, v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    return v0

    .line 277
    .end local v1    # "attestationAttributes":Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catchall_e3
    move-exception v1

    .line 278
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "Could not get ParsedAttestationAttributes from Certificate."

    invoke-static {v2, v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    return v0
.end method

.method private static debugVerboseLog(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 100
    sget-boolean v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 101
    const-string v0, "AVF"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_9
    return-void
.end method

.method private static debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 94
    sget-boolean v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 95
    const-string v0, "AVF"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :cond_9
    return-void
.end method

.method private getCertificateBytes(Ljava/lang/String;)[B
    .registers 5
    .param p1, "certString"    # Ljava/lang/String;

    .line 257
    const-string v0, "\\s+"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "formattedCertString":Ljava/lang/String;
    const-string v1, "-BEGIN\\nCERTIFICATE-"

    const-string v2, "-BEGIN CERTIFICATE-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    const-string v1, "-END\\nCERTIFICATE-"

    const-string v2, "-END CERTIFICATE-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method private getCertificates([B)Ljava/util/List;
    .registers 5
    .param p1, "attestation"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 185
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    :goto_a
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_1c

    .line 186
    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 189
    :cond_1c
    return-object v0
.end method

.method private getTrustAnchorResources()[Ljava/lang/String;
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTrustAnchors()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 244
    .local v0, "modifiableSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getTrustAnchorResources()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_2d

    aget-object v4, v1, v3

    .line 245
    .local v4, "certString":Ljava/lang/String;
    new-instance v5, Ljava/security/cert/TrustAnchor;

    iget-object v6, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    .line 247
    invoke-direct {p0, v4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getCertificateBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 246
    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 245
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_29} :catch_33

    .line 244
    nop

    .end local v4    # "certString":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 252
    :cond_2d
    nop

    .line 253
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 249
    :catch_33
    move-exception v1

    .line 250
    .local v1, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 251
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Invalid trust anchor certificate."

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private isValidPatchLevel(I)Z
    .registers 14
    .param p1, "patchLevel"    # I

    .line 373
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    if-eqz v0, :cond_5

    .line 374
    goto :goto_d

    :cond_5
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDate;->now(Ljava/time/ZoneId;)Ljava/time/LocalDate;

    move-result-object v0

    .line 379
    .local v0, "currentDate":Ljava/time/LocalDate;
    :goto_d
    const/4 v1, 0x0

    :try_start_e
    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    if-eqz v2, :cond_14

    .line 380
    nop

    .local v2, "localPatchDate":Ljava/time/LocalDate;
    goto :goto_1a

    .line 382
    .end local v2    # "localPatchDate":Ljava/time/LocalDate;
    :cond_14
    sget-object v2, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-static {v2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v2
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_7d

    .line 388
    .restart local v2    # "localPatchDate":Ljava/time/LocalDate;
    :goto_1a
    nop

    .line 391
    sget-object v3, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v3, v2, v0}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v3

    const-wide/16 v5, 0xc

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-lez v3, :cond_29

    .line 392
    return v4

    .line 396
    :cond_29
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, "remoteDeviceDateStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_42

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v9, 0x8

    if-eq v7, v9, :cond_42

    .line 398
    const-string v4, "Patch level is not in format YYYYMM or YYYYMMDD"

    invoke-static {v4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 399
    return v1

    .line 402
    :cond_42
    const/4 v7, 0x4

    invoke-virtual {v3, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 403
    .local v9, "patchYear":I
    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 404
    .local v7, "patchMonth":I
    invoke-static {v9, v7, v4}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v8

    .line 408
    .local v8, "remotePatchDate":Ljava/time/LocalDate;
    invoke-virtual {v8, v2}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v10

    if-lez v10, :cond_69

    .line 409
    sget-object v10, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v10, v2, v8}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v10

    cmp-long v5, v10, v5

    if-gtz v5, :cond_68

    move v1, v4

    .local v1, "IsRemotePatchWithinOneYearOfLocalPatch":Z
    :cond_68
    goto :goto_7c

    .line 411
    .end local v1    # "IsRemotePatchWithinOneYearOfLocalPatch":Z
    :cond_69
    invoke-virtual {v8, v2}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v10

    if-gez v10, :cond_7b

    .line 412
    sget-object v10, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v10, v8, v2}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v10

    cmp-long v5, v10, v5

    if-gtz v5, :cond_7a

    move v1, v4

    .restart local v1    # "IsRemotePatchWithinOneYearOfLocalPatch":Z
    :cond_7a
    goto :goto_7c

    .line 415
    .end local v1    # "IsRemotePatchWithinOneYearOfLocalPatch":Z
    :cond_7b
    const/4 v1, 0x1

    .line 418
    .restart local v1    # "IsRemotePatchWithinOneYearOfLocalPatch":Z
    :goto_7c
    return v1

    .line 384
    .end local v1    # "IsRemotePatchWithinOneYearOfLocalPatch":Z
    .end local v2    # "localPatchDate":Ljava/time/LocalDate;
    .end local v3    # "remoteDeviceDateStr":Ljava/lang/String;
    .end local v7    # "patchMonth":I
    .end local v8    # "remotePatchDate":Ljava/time/LocalDate;
    .end local v9    # "patchYear":I
    :catchall_7d
    move-exception v2

    .line 385
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build.VERSION.SECURITY_PATCH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not in format YYYY-MM-DD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 387
    return v1
.end method

.method private validateCertificateChain(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .line 217
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_e

    .line 218
    const-string v0, "Certificate chain less than 2 in size."

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 219
    return v1

    .line 223
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 224
    .local v0, "certificatePath":Ljava/security/cert/CertPath;
    new-instance v2, Ljava/security/cert/PKIXParameters;

    iget-object v3, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 225
    .local v2, "validationParams":Ljava/security/cert/PKIXParameters;
    iget-boolean v3, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    if-eqz v3, :cond_28

    .line 228
    new-instance v3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;-><init>(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker-IA;)V

    .line 229
    .local v3, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v2, v3}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    .line 232
    .end local v3    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_28
    invoke-virtual {v2, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 233
    iget-object v3, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v3, v0, v2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_30
    .catchall {:try_start_e .. :try_end_30} :catchall_33

    .line 237
    nop

    .line 238
    .end local v0    # "certificatePath":Ljava/security/cert/CertPath;
    .end local v2    # "validationParams":Ljava/security/cert/PKIXParameters;
    const/4 v0, 0x1

    return v0

    .line 234
    :catchall_33
    move-exception v0

    .line 235
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "Invalid certificate chain."

    invoke-static {v2, v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    return v1
.end method

.method private validateRequirements(ILandroid/os/Bundle;)Z
    .registers 7
    .param p1, "localBindingType"    # I
    .param p2, "requirements"    # Landroid/os/Bundle;

    .line 193
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    .line 194
    const-string v0, "Requirements does not contain exactly 1 key."

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 195
    return v2

    .line 198
    :cond_e
    const/4 v0, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2b

    if-eq p1, v0, :cond_2b

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding type is not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 200
    return v2

    .line 203
    :cond_2b
    if-ne p1, v3, :cond_3b

    const-string v3, "localbinding.public_key"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 204
    const-string v0, "Requirements does not contain key: localbinding.public_key"

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 205
    return v2

    .line 208
    :cond_3b
    if-ne p1, v0, :cond_4b

    const-string v0, "localbinding.challenge"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 209
    const-string v0, "Requirements does not contain key: localbinding.challenge"

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 210
    return v2

    .line 213
    :cond_4b
    return v1
.end method


# virtual methods
.method verifyAttestation(ILandroid/os/Bundle;[B)I
    .registers 8
    .param p1, "localBindingType"    # I
    .param p2, "requirements"    # Landroid/os/Bundle;
    .param p3, "attestation"    # [B

    .line 144
    const/4 v0, 0x2

    .line 146
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    if-nez v1, :cond_b

    .line 147
    const-string v1, "Was unable to initialize CertificateFactory onCreate."

    invoke-static {v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 148
    return v0

    .line 151
    :cond_b
    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    if-nez v1, :cond_15

    .line 152
    const-string v1, "Was unable to initialize CertPathValidator onCreate."

    invoke-static {v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 153
    return v0

    .line 158
    :cond_15
    :try_start_15
    invoke-direct {p0, p3}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getCertificates([B)Ljava/util/List;

    move-result-object v1
    :try_end_19
    .catch Ljava/security/cert/CertificateException; {:try_start_15 .. :try_end_19} :catch_43

    .line 162
    .local v1, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    nop

    .line 164
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 165
    const-string v2, "Attestation contains no certificates."

    invoke-static {v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 166
    return v0

    .line 169
    :cond_26
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 170
    .local v2, "leafNode":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, p1, p2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->validateRequirements(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 171
    invoke-direct {p0, v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->validateCertificateChain(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 172
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkCertificateAttributes(Ljava/security/cert/X509Certificate;ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 173
    const/4 v0, 0x1

    goto :goto_42

    .line 175
    :cond_41
    const/4 v0, 0x2

    .line 177
    :goto_42
    return v0

    .line 159
    .end local v1    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "leafNode":Ljava/security/cert/X509Certificate;
    :catch_43
    move-exception v1

    .line 160
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string v2, "Unable to parse attestation certificates."

    invoke-static {v2, v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    return v0
.end method
