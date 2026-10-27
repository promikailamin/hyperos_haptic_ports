.class final Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "AttestationVerificationPeerDeviceVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AndroidRevocationStatusListChecker"
.end annotation


# static fields
.field private static final REASON_PROPERTY_KEY:Ljava/lang/String; = "reason"

.field private static final STATUS_PROPERTY_KEY:Ljava/lang/String; = "status"

.field private static final TOP_LEVEL_JSON_PROPERTY_KEY:Ljava/lang/String; = "entries"


# instance fields
.field private mJsonStatusMap:Lorg/json/JSONObject;

.field private mStatusUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;


# direct methods
.method private constructor <init>(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;)V
    .registers 2

    .line 427
    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->this$0:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;-><init>(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;)V

    return-void
.end method

.method private getRevocationListUrl()Ljava/lang/String;
    .registers 3

    .line 506
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->this$0:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->-$$Nest$fgetmContext(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104098e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStatusMap(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8
    .param p1, "stringUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 489
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_4e

    .line 493
    .local v0, "url":Ljava/net/URL;
    nop

    .line 495
    :try_start_6
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_32

    .line 496
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_a
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    .line 497
    invoke-virtual {v1}, Ljava/io/InputStream;->readAllBytes()[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 498
    .local v2, "statusListJson":Lorg/json/JSONObject;
    const-string v3, "entries"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_26

    .line 499
    if-eqz v1, :cond_25

    :try_start_22
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_32

    .line 498
    :cond_25
    return-object v3

    .line 495
    .end local v2    # "statusListJson":Lorg/json/JSONObject;
    :catchall_26
    move-exception v2

    if-eqz v1, :cond_31

    :try_start_29
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception v3

    :try_start_2e
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "url":Ljava/net/URL;
    .end local p0    # "this":Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;
    .end local p1    # "stringUrl":Ljava/lang/String;
    :cond_31
    :goto_31
    throw v2
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_32

    .line 499
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "url":Ljava/net/URL;
    .restart local p0    # "this":Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;
    .restart local p1    # "stringUrl":Ljava/lang/String;
    :catchall_32
    move-exception v1

    .line 500
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse revocation status from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mStatusUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 490
    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_4e
    move-exception v0

    .line 491
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get revocation status from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mStatusUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .registers 11
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 459
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 461
    .local v0, "x509Certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "serialNumber":Ljava/lang/String;
    if-eqz v1, :cond_74

    .line 467
    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mJsonStatusMap:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 484
    return-void

    .line 472
    :cond_18
    :try_start_18
    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mJsonStatusMap:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 473
    .local v2, "revocationStatus":Lorg/json/JSONObject;
    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "status":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_5a

    .line 478
    .local v4, "reason":Ljava/lang/String;
    nop

    .line 479
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid certificate with serial number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has status "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because reason "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 475
    .end local v2    # "revocationStatus":Lorg/json/JSONObject;
    .end local v3    # "status":Ljava/lang/String;
    .end local v4    # "reason":Ljava/lang/String;
    :catchall_5a
    move-exception v2

    .line 476
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable get properties for certificate with serial number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 464
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_74
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Certificate serial number can not be null."

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 453
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Z)V
    .registers 4
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 436
    invoke-direct {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->getRevocationListUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mStatusUrl:Ljava/lang/String;

    .line 437
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 443
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mStatusUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->getStatusMap(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mJsonStatusMap:Lorg/json/JSONObject;

    .line 444
    return-void

    .line 438
    :cond_17
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "R.string.vendor_required_attestation_revocation_list_url is empty."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isForwardCheckingSupported()Z
    .registers 2

    .line 448
    const/4 v0, 0x0

    return v0
.end method
