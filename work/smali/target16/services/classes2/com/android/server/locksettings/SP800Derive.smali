.class public Lcom/android/server/locksettings/SP800Derive;
.super Ljava/lang/Object;
.source "SP800Derive.java"


# instance fields
.field public final mKeyBytes:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/locksettings/SP800Derive;->mKeyBytes:[B

    return-void
.end method

.method public static update32(Ljavax/crypto/Mac;I)V
    .registers 3

    const/4 v0, 0x4

    .line 62
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-void
.end method


# virtual methods
.method public final doFinal(Ljavax/crypto/Mac;)[B
    .registers 3

    const/16 p0, 0x20

    .line 93
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newNonMovableByteArray(I)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 95
    :try_start_7
    invoke-virtual {p1, p0, v0}, Ljavax/crypto/Mac;->doFinal([BI)V
    :try_end_a
    .catch Ljavax/crypto/ShortBufferException; {:try_start_7 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 98
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getMac()Ljavax/crypto/Mac;
    .registers 4

    .line 50
    :try_start_0
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 51
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object p0, p0, Lcom/android/server/locksettings/SP800Derive;->mKeyBytes:[B

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 52
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result p0

    const/16 v1, 0x20

    if-ne p0, v1, :cond_1d

    return-object v0

    .line 53
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Wrong output length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_25
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_25} :catch_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_25} :catch_25

    :catch_25
    move-exception p0

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public withContext([B[B)[B
    .registers 5

    .line 80
    invoke-virtual {p0}, Lcom/android/server/locksettings/SP800Derive;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    const/4 v1, 0x1

    .line 82
    invoke-static {v0, v1}, Lcom/android/server/locksettings/SP800Derive;->update32(Ljavax/crypto/Mac;I)V

    .line 83
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    const/4 p1, 0x0

    .line 84
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(B)V

    .line 85
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 86
    array-length p1, p2

    mul-int/lit8 p1, p1, 0x8

    invoke-static {v0, p1}, Lcom/android/server/locksettings/SP800Derive;->update32(Ljavax/crypto/Mac;I)V

    const/16 p1, 0x100

    .line 87
    invoke-static {v0, p1}, Lcom/android/server/locksettings/SP800Derive;->update32(Ljavax/crypto/Mac;I)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SP800Derive;->doFinal(Ljavax/crypto/Mac;)[B

    move-result-object p0

    return-object p0
.end method
