.class public Landroid/content/pm/Signature;
.super Ljava/lang/Object;
.source "Signature.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCertificateChain:[Ljava/security/cert/Certificate;

.field private blacklist mFlags:I

.field private greylist-max-o mHashCode:I

.field private greylist-max-o mHaveHashCode:Z

.field private final greylist-max-o mSignature:[B

.field private greylist-max-o mStringRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 289
    new-instance v0, Landroid/content/pm/Signature$1;

    invoke-direct {v0}, Landroid/content/pm/Signature$1;-><init>()V

    sput-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/Signature;)V
    .registers 5

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iget-object v0, p1, Landroid/content/pm/Signature;->mSignature:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 137
    iget-object v0, p1, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    .line 138
    if-eqz v0, :cond_1e

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1e

    .line 139
    array-length v1, v0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    iput-object v0, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    .line 142
    :cond_1e
    iget p1, p1, Landroid/content/pm/Signature;->mFlags:I

    iput p1, p0, Landroid/content/pm/Signature;->mFlags:I

    .line 143
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 308
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/Signature-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/Signature;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 9

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 112
    array-length v0, p1

    .line 114
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_33

    .line 118
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 119
    nop

    .line 121
    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v2, v0, :cond_30

    .line 122
    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    invoke-static {v2}, Landroid/content/pm/Signature;->parseHexDigit(I)I

    move-result v2

    .line 123
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    invoke-static {v4}, Landroid/content/pm/Signature;->parseHexDigit(I)I

    move-result v4

    .line 124
    add-int/lit8 v6, v3, 0x1

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 125
    move v2, v5

    move v3, v6

    goto :goto_13

    .line 127
    :cond_30
    iput-object v1, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 128
    return-void

    .line 115
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "text size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not even"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>([B)V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 73
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    .line 74
    return-void
.end method

.method public constructor greylist-max-o <init>([Ljava/security/cert/Certificate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 85
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    .line 86
    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/Certificate;

    iput-object p1, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    .line 88
    :cond_19
    return-void
.end method

.method static blacklist areEffectiveArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 356
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 358
    array-length v1, p0

    new-array v1, v1, [Landroid/content/pm/Signature;

    .line 359
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    array-length v4, p0

    if-ge v3, v4, :cond_19

    .line 360
    aget-object v4, p0, v3

    invoke-static {v0, v4}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    move-result-object v4

    aput-object v4, v1, v3

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 362
    :cond_19
    array-length p0, p1

    new-array p0, p0, [Landroid/content/pm/Signature;

    .line 363
    nop

    :goto_1d
    array-length v3, p1

    if-ge v2, v3, :cond_2b

    .line 364
    aget-object v3, p1, v2

    invoke-static {v0, v3}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    move-result-object v3

    aput-object v3, p0, v2

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 367
    :cond_2b
    invoke-static {v1, p0}, Landroid/content/pm/Signature;->areExactArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-o areEffectiveMatch(Landroid/content/pm/Signature;Landroid/content/pm/Signature;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 385
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 387
    invoke-static {v0, p0}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    move-result-object p0

    .line 388
    invoke-static {v0, p1}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    move-result-object p1

    .line 390
    invoke-virtual {p0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist areEffectiveMatch(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 351
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/content/pm/Signature;->areEffectiveArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p0

    return p0
.end method

.method static blacklist areExactArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .registers 4

    .line 332
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_18

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 333
    invoke-static {p1, p0}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    .line 332
    :goto_19
    return p0
.end method

.method public static blacklist areExactMatch(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z
    .registers 2

    .line 315
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/content/pm/Signature;->areExactArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p0

    return p0
.end method

.method public static blacklist areExactMatch(Landroid/content/pm/SigningDetails;[Landroid/content/pm/Signature;)Z
    .registers 2

    .line 323
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/content/pm/Signature;->areExactArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-o bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Landroid/content/pm/Signature;->mSignature:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 402
    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 403
    new-instance v0, Landroid/content/pm/Signature;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/Signature;-><init>([B)V

    .line 405
    iget-object p0, v0, Landroid/content/pm/Signature;->mSignature:[B

    array-length p0, p0

    iget-object v1, p1, Landroid/content/pm/Signature;->mSignature:[B

    array-length v1, v1

    sub-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 v1, 0x2

    if-gt p0, v1, :cond_25

    .line 410
    return-object v0

    .line 406
    :cond_25
    new-instance p0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bounced cert length looks fishy; before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/content/pm/Signature;->mSignature:[B

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", after "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, v0, Landroid/content/pm/Signature;->mSignature:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final greylist-max-o parseHexDigit(I)I
    .registers 4

    .line 91
    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    .line 92
    sub-int/2addr p0, v0

    return p0

    .line 93
    :cond_a
    const/16 v0, 0x61

    if-gt v0, p0, :cond_16

    const/16 v1, 0x66

    if-gt p0, v1, :cond_16

    .line 94
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 95
    :cond_16
    const/16 v0, 0x41

    if-gt v0, p0, :cond_22

    const/16 v1, 0x46

    if-gt p0, v1, :cond_22

    .line 96
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 98
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " in hex string"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 258
    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 259
    :try_start_3
    check-cast p1, Landroid/content/pm/Signature;

    .line 262
    if-eq p0, p1, :cond_11

    iget-object v1, p0, Landroid/content/pm/Signature;->mSignature:[B

    iget-object p1, p1, Landroid/content/pm/Signature;->mSignature:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_f} :catch_13

    if-eqz p1, :cond_12

    :cond_11
    const/4 v0, 0x1

    :cond_12
    return v0

    .line 264
    :catch_13
    move-exception p1

    goto :goto_16

    .line 265
    :cond_15
    nop

    .line 266
    :goto_16
    return v0
.end method

.method public greylist-max-o getChainSignatures()[Landroid/content/pm/Signature;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    if-nez v0, :cond_9

    .line 241
    filled-new-array {p0}, [Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0

    .line 244
    :cond_9
    iget-object v0, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Landroid/content/pm/Signature;

    .line 245
    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 247
    nop

    .line 248
    iget-object v3, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    array-length v4, v3

    :goto_17
    if-ge v2, v4, :cond_2c

    aget-object v5, v3, v2

    .line 249
    add-int/lit8 v6, v1, 0x1

    new-instance v7, Landroid/content/pm/Signature;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    invoke-direct {v7, v5}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v7, v0, v1

    .line 248
    add-int/lit8 v2, v2, 0x1

    move v1, v6

    goto :goto_17

    .line 252
    :cond_2c
    return-object v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 158
    iget v0, p0, Landroid/content/pm/Signature;->mFlags:I

    return v0
.end method

.method public greylist getPublicKey()Ljava/security/PublicKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 226
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 228
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 271
    iget-boolean v0, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    if-eqz v0, :cond_7

    .line 272
    iget v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    return v0

    .line 276
    :cond_7
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    .line 278
    iget v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    return v0
.end method

.method public blacklist setFlags(I)V
    .registers 2

    .line 150
    iput p1, p0, Landroid/content/pm/Signature;->mFlags:I

    .line 151
    return-void
.end method

.method public whitelist toByteArray()[B
    .registers 5

    .line 212
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 213
    iget-object v1, p0, Landroid/content/pm/Signature;->mSignature:[B

    iget-object v2, p0, Landroid/content/pm/Signature;->mSignature:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    return-object v0
.end method

.method public whitelist toChars()[C
    .registers 2

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/content/pm/Signature;->toChars([C[I)[C

    move-result-object v0

    return-object v0
.end method

.method public whitelist toChars([C[I)[C
    .registers 11

    .line 179
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 180
    array-length v1, v0

    .line 181
    mul-int/lit8 v2, v1, 0x2

    .line 182
    if-eqz p1, :cond_c

    array-length v3, p1

    if-le v2, v3, :cond_b

    goto :goto_c

    .line 183
    :cond_b
    goto :goto_e

    :cond_c
    :goto_c
    new-array p1, v2, [C

    .line 184
    :goto_e
    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_39

    .line 185
    aget-byte v4, v0, v3

    .line 186
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    .line 187
    mul-int/lit8 v6, v3, 0x2

    const/16 v7, 0xa

    if-lt v5, v7, :cond_22

    add-int/lit8 v5, v5, 0x61

    sub-int/2addr v5, v7

    goto :goto_24

    :cond_22
    add-int/lit8 v5, v5, 0x30

    :goto_24
    int-to-char v5, v5

    aput-char v5, p1, v6

    .line 188
    and-int/lit8 v4, v4, 0xf

    .line 189
    add-int/lit8 v6, v6, 0x1

    if-lt v4, v7, :cond_31

    add-int/lit8 v4, v4, 0x61

    sub-int/2addr v4, v7

    goto :goto_33

    :cond_31
    add-int/lit8 v4, v4, 0x30

    :goto_33
    int-to-char v4, v4

    aput-char v4, p1, v6

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 191
    :cond_39
    if-eqz p2, :cond_3d

    aput v1, p2, v2

    .line 192
    :cond_3d
    return-object p1
.end method

.method public whitelist toCharsString()Ljava/lang/String;
    .registers 3

    .line 199
    iget-object v0, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    :goto_e
    if-eqz v0, :cond_11

    .line 201
    return-object v0

    .line 203
    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 204
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    .line 205
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 286
    iget-object p2, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 287
    return-void
.end method

.method public blacklist writeToXmlAttributeBytesHex(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-interface {p1, p2, p3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBytesHex(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;

    .line 304
    return-void
.end method
