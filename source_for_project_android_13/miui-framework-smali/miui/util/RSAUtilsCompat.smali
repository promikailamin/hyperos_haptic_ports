.class public Lmiui/util/RSAUtilsCompat;
.super Ljava/lang/Object;
.source "RSAUtilsCompat.java"


# static fields
.field public static final blacklist CIPHER_RSA:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final blacklist DEFAULT_RADIX:I = 0x10

.field public static final blacklist FLAG_CRLF:I = 0x4

.field public static final blacklist FLAG_DEFAULT:I = 0x0

.field public static final blacklist FLAG_NO_CLOSE:I = 0x10

.field public static final blacklist FLAG_NO_PADDING:I = 0x1

.field public static final blacklist FLAG_NO_WRAP:I = 0x2

.field public static final blacklist FLAG_URL_SAFE:I = 0x8

.field public static final blacklist KEY_RSA:Ljava/lang/String; = "RSA"

.field public static final blacklist SIGNATURE_MD5_WITH_RSA:Ljava/lang/String; = "MD5withRSA"

.field public static final blacklist SIGNATURE_SHA1_WITH_RSA:Ljava/lang/String; = "SHA1withRSA"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static blacklist getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/util/RSAUtilsCompat;->getPublicKey(Ljava/lang/String;I)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPublicKey(Ljava/lang/String;I)Ljava/security/PublicKey;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 55
    .local v0, "keyBytes":[B
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {v1}, Lmiui/util/RSAUtilsCompat;->getPublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 3
    .param p0, "modulus"    # Ljava/lang/String;
    .param p1, "exponent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    const/16 v0, 0x10

    invoke-static {p0, p1, v0}, Lmiui/util/RSAUtilsCompat;->getPublicKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPublicKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/security/PublicKey;
    .registers 6
    .param p0, "modulus"    # Ljava/lang/String;
    .param p1, "exponent"    # Ljava/lang/String;
    .param p2, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 45
    .local v0, "m":Ljava/math/BigInteger;
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 46
    .local v1, "e":Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v2}, Lmiui/util/RSAUtilsCompat;->getPublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getPublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 3
    .param p0, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 39
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v0, p0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    .line 40
    .local v1, "publicKey":Ljava/security/PublicKey;
    return-object v1
.end method

.method public static blacklist verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;)Z
    .registers 4
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sign"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    const-string v0, "SHA1withRSA"

    invoke-static {p0, p1, p2, v0}, Lmiui/util/RSAUtilsCompat;->verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sign"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, p1, v1, p3}, Lmiui/util/RSAUtilsCompat;->verify([BLjava/security/PublicKey;[BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist verify([BLjava/security/PublicKey;[B)Z
    .registers 4
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sign"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    const-string v0, "SHA1withRSA"

    invoke-static {p0, p1, p2, v0}, Lmiui/util/RSAUtilsCompat;->verify([BLjava/security/PublicKey;[BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist verify([BLjava/security/PublicKey;[BLjava/lang/String;)Z
    .registers 6
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sign"    # [B
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-static {p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 64
    .local v0, "signature":Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 65
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 66
    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    return v1
.end method
