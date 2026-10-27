.class public final Lcom/android/internal/util/custom/KeyboxChainGenerator;
.super Ljava/lang/Object;
.source "KeyboxChainGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;,
        Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;
    }
.end annotation


# static fields
.field private static final blacklist ATTESTATION_APPLICATION_ID_PACKAGE_INFOS_INDEX:I = 0x0

.field private static final blacklist ATTESTATION_APPLICATION_ID_SIGNATURE_DIGESTS_INDEX:I = 0x1

.field private static final blacklist ATTESTATION_PACKAGE_INFO_PACKAGE_NAME_INDEX:I = 0x0

.field private static final blacklist ATTESTATION_PACKAGE_INFO_VERSION_INDEX:I = 0x1

.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "KeyboxChainGenerator"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 74
    const-string v0, "KeyboxChainGenerator"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/util/custom/KeyboxChainGenerator;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist buildECKeyPair(Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;)Ljava/security/KeyPair;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 346
    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 347
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 348
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    iget-object p0, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->ecCurveName:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 349
    const-string p0, "EC"

    invoke-static {p0, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    .line 350
    invoke-virtual {p0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 351
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildRSAKeyPair(Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;)Ljava/security/KeyPair;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 355
    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 356
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 357
    new-instance v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    iget v2, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->keySize:I

    iget-object p0, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->rsaPublicExponent:Ljava/math/BigInteger;

    invoke-direct {v1, v2, p0}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    .line 359
    const-string p0, "RSA"

    invoke-static {p0, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    .line 360
    invoke-virtual {p0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 361
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertPatchLevel(Ljava/lang/String;Z)I
    .registers 5

    .line 247
    :try_start_0
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 248
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 249
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 250
    if-eqz p1, :cond_24

    .line 251
    const/4 p1, 0x2

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_28

    .line 252
    mul-int/lit16 v1, v1, 0x2710

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    add-int/2addr v1, p0

    return v1

    .line 254
    :cond_24
    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v1, v2

    return v1

    .line 256
    :catch_28
    move-exception p1

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid patch level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyboxChainGenerator"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    const p0, 0x316a4

    return p0
.end method

.method private static blacklist createApplicationId(I)Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 281
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_d7

    .line 286
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_cf

    .line 291
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 292
    if-eqz v1, :cond_b6

    array-length v2, v1

    if-eqz v2, :cond_b6

    .line 296
    array-length p0, v1

    .line 297
    new-array v2, p0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 298
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 299
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 301
    const/4 v5, 0x0

    move v6, v5

    :goto_25
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v6, p0, :cond_70

    .line 302
    aget-object v9, v1, v6

    .line 303
    const/16 v10, 0x40

    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 304
    new-array v7, v7, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 305
    new-instance v11, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 306
    invoke-virtual {v9, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-direct {v11, v9}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    aput-object v11, v7, v5

    .line 307
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 308
    invoke-virtual {v10}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v11

    invoke-direct {v9, v11, v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    aput-object v9, v7, v8

    .line 309
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v7}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v8, v2, v6

    .line 311
    iget-object v7, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v7

    move v9, v5

    :goto_56
    if-ge v9, v8, :cond_6d

    aget-object v10, v7, v9

    .line 312
    new-instance v11, Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;

    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    invoke-direct {v11, v10}, Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;-><init>([B)V

    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v9, v9, 0x1

    goto :goto_56

    .line 301
    :cond_6d
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 316
    :cond_70
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 317
    nop

    .line 318
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v5

    :goto_7c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;

    .line 319
    add-int/lit8 v4, v1, 0x1

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-static {v3}, Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;->-$$Nest$fgetdigest(Lcom/android/internal/util/custom/KeyboxChainGenerator$Digest;)[B

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    aput-object v6, p0, v1

    .line 320
    move v1, v4

    goto :goto_7c

    .line 322
    :cond_97
    new-array v0, v7, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 323
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v1, v0, v5

    .line 325
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v1, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v1, v0, v8

    .line 328
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object p0

    .line 293
    :cond_b6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No packages found for UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_cf
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "createApplicationId: PackageManager not found!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 283
    :cond_d7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "createApplicationId: context not available from ActivityThread!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist createExtension(Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;I)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .registers 37

    .line 144
    move-object/from16 v0, p0

    :try_start_2
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 146
    const/16 v2, 0x20

    new-array v3, v2, [B

    .line 147
    new-array v2, v2, [B

    .line 149
    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 150
    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 152
    const/4 v1, 0x4

    new-array v4, v1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v3, 0x0

    aput-object v5, v4, v3

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v5, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x3

    aput-object v5, v4, v2

    .line 155
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 157
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    iget-object v8, v0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->purpose:Ljava/util/List;

    invoke-static {v8}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->fromIntList(Ljava/util/List;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 158
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget v9, v0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->algorithm:I

    int-to-long v9, v9

    invoke-direct {v8, v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 159
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget v10, v0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->keySize:I

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 160
    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    iget-object v11, v0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->digest:Ljava/util/List;

    invoke-static {v11}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->fromIntList(Ljava/util/List;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 161
    new-instance v11, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget v12, v0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->ecCurve:I

    int-to-long v12, v12

    invoke-direct {v11, v12, v13}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 162
    sget-object v12, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    .line 165
    new-instance v13, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-static {}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->getOsVersion()I

    move-result v14

    int-to-long v14, v14

    invoke-direct {v13, v14, v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 166
    new-instance v14, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-static {}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->getPatchLevel()I

    move-result v15

    move/from16 v16, v1

    int-to-long v1, v15

    invoke-direct {v14, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 168
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->createApplicationId(I)Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    move-result-object v1

    .line 169
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-static {}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->getPatchLevelLong()I

    move-result v15

    move-object/from16 v19, v8

    int-to-long v7, v15

    invoke-direct {v2, v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 170
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-static {}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->getPatchLevelLong()I

    move-result v8

    move v15, v3

    move-object/from16 v20, v4

    int-to-long v3, v8

    invoke-direct {v7, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 172
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-object/from16 p1, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 173
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 175
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    move-object/from16 v4, v20

    const/4 v8, 0x1

    invoke-direct {v7, v8, v8, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 176
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    move/from16 v20, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v7

    const/4 v7, 0x2

    invoke-direct {v4, v8, v7, v15}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 177
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v15, 0x3

    invoke-direct {v7, v8, v15, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 178
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v15, 0x5

    invoke-direct {v9, v8, v15, v10}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 179
    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    move/from16 v21, v15

    const/16 v15, 0xa

    invoke-direct {v10, v8, v15, v11}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 180
    new-instance v11, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    move/from16 v22, v15

    const/16 v15, 0x1f7

    invoke-direct {v11, v8, v15, v12}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 181
    new-instance v12, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/16 v15, 0x2bd

    invoke-direct {v12, v8, v15, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 182
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/16 v15, 0x2be

    invoke-direct {v3, v8, v15, v6}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 183
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/16 v15, 0x2c0

    invoke-direct {v6, v8, v15, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 184
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/16 v15, 0x2c1

    invoke-direct {v5, v8, v15, v13}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 185
    new-instance v13, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/16 v15, 0x2c2

    invoke-direct {v13, v8, v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 186
    new-instance v14, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/16 v15, 0x2c5

    invoke-direct {v14, v8, v15, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 187
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/16 v15, 0x2ce

    move-object/from16 v23, v3

    move-object/from16 v3, p1

    invoke-direct {v1, v8, v15, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 188
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/16 v15, 0x2cf

    invoke-direct {v3, v8, v15, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object v2, v4

    .line 193
    iget-object v8, v0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->brand:[B

    const/16 v24, 0x9

    const/16 v25, 0x8

    const/16 v26, 0x7

    const/16 v27, 0x6

    if-eqz v8, :cond_1b0

    .line 194
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    const/16 v28, 0xb

    iget-object v15, v0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->brand:[B

    invoke-direct {v8, v15}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 195
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    const/16 v29, 0xc

    iget-object v4, v0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->device:[B

    invoke-direct {v15, v4}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 196
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->product:[B

    invoke-direct {v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 197
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    move-object/from16 v31, v2

    iget-object v2, v0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->manufacturer:[B

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 198
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    move-object/from16 v32, v3

    iget-object v3, v0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->model:[B

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 199
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    move-object/from16 v33, v5

    const/16 v5, 0x2c6

    move-object/from16 v34, v6

    const/4 v6, 0x1

    invoke-direct {v3, v6, v5, v8}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 200
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/16 v8, 0x2c7

    invoke-direct {v5, v6, v8, v15}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 201
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/16 v15, 0x2c8

    invoke-direct {v8, v6, v15, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 202
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/16 v15, 0x2cc

    invoke-direct {v4, v6, v15, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 203
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/16 v15, 0x2cd

    invoke-direct {v1, v6, v15, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 205
    const/16 v2, 0x11

    new-array v2, v2, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aput-object v19, v2, v20

    aput-object v31, v2, v6

    const/16 v18, 0x2

    aput-object v7, v2, v18

    const/16 v17, 0x3

    aput-object v9, v2, v17

    aput-object v10, v2, v16

    aput-object v11, v2, v21

    aput-object v23, v2, v27

    aput-object v34, v2, v26

    aput-object v33, v2, v25

    aput-object v13, v2, v24

    aput-object v30, v2, v22

    aput-object v32, v2, v28

    aput-object v3, v2, v29

    const/16 v3, 0xd

    aput-object v5, v2, v3

    const/16 v3, 0xe

    aput-object v8, v2, v3

    const/16 v3, 0xf

    aput-object v4, v2, v3

    const/16 v3, 0x10

    aput-object v1, v2, v3

    .line 208
    goto :goto_1df

    .line 209
    :cond_1b0
    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v33, v5

    move-object/from16 v34, v6

    const/16 v28, 0xb

    const/16 v29, 0xc

    move/from16 v1, v29

    new-array v2, v1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aput-object v19, v2, v20

    const/4 v4, 0x1

    aput-object v31, v2, v4

    const/16 v18, 0x2

    aput-object v7, v2, v18

    const/16 v17, 0x3

    aput-object v9, v2, v17

    aput-object v10, v2, v16

    aput-object v11, v2, v21

    aput-object v23, v2, v27

    aput-object v34, v2, v26

    aput-object v33, v2, v25

    aput-object v13, v2, v24

    aput-object v30, v2, v22

    aput-object v32, v2, v28

    .line 214
    :goto_1df
    const/4 v7, 0x2

    new-array v1, v7, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aput-object v14, v1, v20

    const/4 v4, 0x1

    aput-object v12, v1, v4

    .line 216
    invoke-static {v2, v1, v0}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->getAsn1OctetString([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    .line 218
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "1.3.6.1.4.1.11129.2.1.17"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move/from16 v15, v20

    invoke-direct {v1, v2, v15, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    :try_end_1f9
    .catchall {:try_start_2 .. :try_end_1f9} :catchall_1fa

    return-object v1

    .line 219
    :catchall_1fa
    move-exception v0

    .line 220
    const-string v1, "KeyboxChainGenerator"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist dlog(Ljava/lang/String;)V
    .registers 2

    .line 365
    sget-boolean v0, Lcom/android/internal/util/custom/KeyboxChainGenerator;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "KeyboxChainGenerator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_9
    return-void
.end method

.method private static blacklist fromIntList(Ljava/util/List;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;"
        }
    .end annotation

    .line 135
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 136
    const/4 v1, 0x0

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 137
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    aput-object v2, v0, v1

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 139
    :cond_22
    return-object v0
.end method

.method public static blacklist generateCertChain(ILandroid/system/keystore2/KeyDescriptor;Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 82
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested KeyPair with alias: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->dlog(Ljava/lang/String;)V

    .line 83
    iget v2, v1, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->keySize:I

    .line 86
    const/4 v3, 0x0

    :try_start_1f
    iget v4, v1, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->algorithm:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_4c

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Generating EC keypair of size "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->dlog(Ljava/lang/String;)V

    .line 88
    invoke-static {v1}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->buildECKeyPair(Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;)Ljava/security/KeyPair;

    move-result-object v2

    goto :goto_76

    .line 89
    :cond_4c
    iget v4, v1, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->algorithm:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_130

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Generating RSA keypair of size "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->dlog(Ljava/lang/String;)V

    .line 91
    invoke-static {v1}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->buildRSAKeyPair(Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;)Ljava/security/KeyPair;

    move-result-object v2

    .line 97
    :goto_76
    new-instance v7, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;

    .line 99
    iget v4, v1, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->algorithm:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_86
    .catchall {:try_start_1f .. :try_end_86} :catchall_136

    const-string v14, "EC"

    const-string v15, "RSA"

    if-eqz v4, :cond_8e

    .line 100
    move-object v4, v14

    goto :goto_8f

    .line 101
    :cond_8e
    move-object v4, v15

    .line 98
    :goto_8f
    :try_start_8f
    invoke-static {v4}, Lcom/android/internal/util/custom/KeyboxUtils;->getCertificateHolder(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    move-result-object v4

    .line 102
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->certificateSerial:Ljava/math/BigInteger;

    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    iget-object v4, v1, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->certificateNotBefore:Ljava/util/Date;

    invoke-direct {v10, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    new-instance v11, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    iget-object v4, v1, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->certificateNotAfter:Ljava/util/Date;

    invoke-direct {v11, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    iget-object v12, v1, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->certificateSubject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 108
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 107
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v13

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/x509/Time;Lcom/android/internal/org/bouncycastle/asn1/x509/Time;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 112
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;-><init>(I)V

    .line 113
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v4, v6, v2}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;

    .line 114
    move/from16 v2, p0

    invoke-static {v1, v2}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->createExtension(Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;I)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;

    .line 117
    iget v1, v1, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->algorithm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 118
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    const-string v2, "SHA256withECDSA"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/android/internal/util/custom/KeyboxUtils;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    move-result-object v1

    goto :goto_ff

    .line 120
    :cond_f0
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    const-string v2, "SHA256withRSA"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/android/internal/util/custom/KeyboxUtils;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    move-result-object v1

    .line 122
    :goto_ff
    invoke-virtual {v7, v1}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;)Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    move-result-object v1

    .line 123
    invoke-static {v1}, Lcom/android/internal/util/custom/KeyboxUtils;->getCertificateFromHolder(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/custom/KeyboxUtils;->getCertificateChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 125
    const/4 v4, 0x0

    invoke-interface {v2, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully generated X500 Cert for alias: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->dlog(Ljava/lang/String;)V

    .line 127
    return-object v2

    .line 93
    :cond_130
    const-string v0, "Unsupported algorithm"

    invoke-static {v0}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->dlog(Ljava/lang/String;)V
    :try_end_135
    .catchall {:try_start_8f .. :try_end_135} :catchall_136

    .line 94
    return-object v3

    .line 128
    :catchall_136
    move-exception v0

    .line 129
    const-string v1, "KeyboxChainGenerator"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-object v3
.end method

.method private static blacklist getAsn1OctetString([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x64

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 264
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    .line 265
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v5, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 266
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    .line 267
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    iget-object p2, p2, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->attestationChallenge:[B

    invoke-direct {v2, p2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 268
    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    const-string v6, ""

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {p2, v6}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 269
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 270
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 272
    const/16 p0, 0x8

    new-array p0, p0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v7, 0x0

    aput-object v0, p0, v7

    aput-object v3, p0, v4

    const/4 v0, 0x2

    aput-object v5, p0, v0

    const/4 v0, 0x3

    aput-object v1, p0, v0

    const/4 v0, 0x4

    aput-object v2, p0, v0

    const/4 v0, 0x5

    aput-object p2, p0, v0

    const/4 p2, 0x6

    aput-object v6, p0, p2

    const/4 p2, 0x7

    aput-object p1, p0, p2

    .line 275
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 277
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0
.end method

.method private static blacklist getOsVersion()I
    .registers 6

    .line 226
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 227
    nop

    .line 229
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 230
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_14

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_15

    :cond_14
    move v1, v2

    .line 231
    :goto_15
    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_20

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_21

    :cond_20
    move v3, v2

    .line 232
    :goto_21
    array-length v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_2b

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 234
    :cond_2b
    mul-int/lit16 v1, v1, 0x2710

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    return v1
.end method

.method private static blacklist getPatchLevel()I
    .registers 2

    .line 238
    sget-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->convertPatchLevel(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private static blacklist getPatchLevelLong()I
    .registers 2

    .line 242
    sget-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/util/custom/KeyboxChainGenerator;->convertPatchLevel(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method
