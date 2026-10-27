.class public Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;
.super Ljava/lang/Object;
.source "KeyboxChainGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/custom/KeyboxChainGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenParameters"
.end annotation


# instance fields
.field public blacklist algorithm:I

.field public blacklist attestationChallenge:[B

.field public blacklist brand:[B

.field public blacklist certificateNotAfter:Ljava/util/Date;

.field public blacklist certificateNotBefore:Ljava/util/Date;

.field public blacklist certificateSerial:Ljava/math/BigInteger;

.field public blacklist certificateSubject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field public blacklist device:[B

.field public blacklist digest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist ecCurve:I

.field public blacklist ecCurveName:Ljava/lang/String;

.field public blacklist keySize:I

.field public blacklist manufacturer:[B

.field public blacklist model:[B

.field public blacklist product:[B

.field public blacklist purpose:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist rsaPublicExponent:Ljava/math/BigInteger;

.field public blacklist securityLevel:I


# direct methods
.method public constructor blacklist <init>([Landroid/hardware/security/keymint/KeyParameter;)V
    .registers 8

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->purpose:Ljava/util/List;

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->digest:Ljava/util/List;

    .line 393
    array-length v0, p1

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_f8

    aget-object v2, p1, v1

    .line 394
    iget v3, v2, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    sparse-switch v3, :sswitch_data_fa

    goto/16 :goto_f4

    .line 399
    :sswitch_1e
    new-instance v3, Ljava/util/Date;

    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getDateTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->certificateNotAfter:Ljava/util/Date;

    goto/16 :goto_f4

    .line 398
    :sswitch_2d
    new-instance v3, Ljava/util/Date;

    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getDateTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->certificateNotBefore:Ljava/util/Date;

    goto/16 :goto_f4

    .line 402
    :sswitch_3c
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getLongInteger()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->rsaPublicExponent:Ljava/math/BigInteger;

    goto/16 :goto_f4

    .line 395
    :sswitch_4a
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getInteger()I

    move-result v2

    iput v2, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->keySize:I

    goto/16 :goto_f4

    .line 411
    :sswitch_54
    iget-object v3, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->digest:Ljava/util/List;

    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getDigest()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    goto/16 :goto_f4

    .line 408
    :sswitch_65
    iget-object v3, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->purpose:Ljava/util/List;

    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getKeyPurpose()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    goto/16 :goto_f4

    .line 419
    :sswitch_76
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getSecurityLevel()I

    move-result v2

    iput v2, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->securityLevel:I

    goto/16 :goto_f4

    .line 404
    :sswitch_80
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getEcCurve()I

    move-result v2

    iput v2, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->ecCurve:I

    .line 405
    iget v2, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->ecCurve:I

    invoke-static {v2}, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->getEcCurveName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->ecCurveName:Ljava/lang/String;

    .line 406
    goto :goto_f4

    .line 396
    :sswitch_91
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getAlgorithm()I

    move-result v2

    iput v2, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->algorithm:I

    goto :goto_f4

    .line 400
    :sswitch_9a
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 401
    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->certificateSubject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 400
    goto :goto_f4

    .line 418
    :sswitch_b1
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->model:[B

    goto :goto_f4

    .line 417
    :sswitch_ba
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->manufacturer:[B

    goto :goto_f4

    .line 416
    :sswitch_c3
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->product:[B

    goto :goto_f4

    .line 415
    :sswitch_cc
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->device:[B

    goto :goto_f4

    .line 414
    :sswitch_d5
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->brand:[B

    goto :goto_f4

    .line 413
    :sswitch_de
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->attestationChallenge:[B

    goto :goto_f4

    .line 397
    :sswitch_e7
    new-instance v3, Ljava/math/BigInteger;

    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v3, p0, Lcom/android/internal/util/custom/KeyboxChainGenerator$KeyGenParameters;->certificateSerial:Ljava/math/BigInteger;

    .line 393
    :goto_f4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    .line 422
    :cond_f8
    return-void

    nop

    :sswitch_data_fa
    .sparse-switch
        -0x7ffffc12 -> :sswitch_e7
        -0x6ffffd3c -> :sswitch_de
        -0x6ffffd3a -> :sswitch_d5
        -0x6ffffd39 -> :sswitch_cc
        -0x6ffffd38 -> :sswitch_c3
        -0x6ffffd34 -> :sswitch_ba
        -0x6ffffd33 -> :sswitch_b1
        -0x6ffffc11 -> :sswitch_9a
        0x10000002 -> :sswitch_91
        0x1000000a -> :sswitch_80
        0x10000130 -> :sswitch_76
        0x20000001 -> :sswitch_65
        0x20000005 -> :sswitch_54
        0x30000003 -> :sswitch_4a
        0x500000c8 -> :sswitch_3c
        0x600003f0 -> :sswitch_2d
        0x600003f1 -> :sswitch_1e
    .end sparse-switch
.end method

.method private static blacklist getEcCurveName(I)Ljava/lang/String;
    .registers 2

    .line 426
    packed-switch p0, :pswitch_data_20

    .line 432
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unknown curve"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 427
    :pswitch_c
    const-string p0, "CURVE_25519"

    goto :goto_1e

    .line 431
    :pswitch_f
    const-string/jumbo p0, "secp521r1"

    goto :goto_1e

    .line 430
    :pswitch_13
    const-string/jumbo p0, "secp384r1"

    goto :goto_1e

    .line 429
    :pswitch_17
    const-string/jumbo p0, "secp256r1"

    goto :goto_1e

    .line 428
    :pswitch_1b
    const-string/jumbo p0, "secp224r1"

    .line 434
    :goto_1e
    return-object p0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method
