.class public Lcom/android/internal/widget/LockscreenCredential;
.super Ljava/lang/Object;
.source "LockscreenCredential.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCredential:[B

.field private final blacklist mHasInvalidChars:Z

.field private final blacklist mIsFromParcel:Z

.field private final blacklist mIsUnifiedProfilePassword:Z

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 422
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential$1;

    invoke-direct {v0}, Lcom/android/internal/widget/LockscreenCredential$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/CharSequence;)V
    .registers 9

    .line 126
    nop

    .line 128
    invoke-static {p2}, Lcom/android/internal/widget/LockscreenCredential;->charsToBytesTruncating(Ljava/lang/CharSequence;)[B

    move-result-object v2

    .line 129
    invoke-static {p2}, Lcom/android/internal/widget/LockscreenCredential;->hasInvalidChars(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 126
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZZZ)V

    .line 132
    return-void
.end method

.method private constructor blacklist <init>(I[BZZZ)V
    .registers 10

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const/4 v0, -0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_16

    .line 103
    array-length v0, p2

    if-nez v0, :cond_11

    move v0, v3

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    goto :goto_24

    .line 106
    :cond_16
    const/4 v0, 0x3

    if-eq p1, v0, :cond_20

    if-eq p1, v1, :cond_20

    if-ne p1, v3, :cond_1e

    goto :goto_20

    :cond_1e
    move v0, v2

    goto :goto_21

    :cond_20
    :goto_20
    move v0, v3

    :goto_21
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 117
    :goto_24
    if-eqz p4, :cond_28

    if-ne p1, v1, :cond_29

    :cond_28
    move v2, v3

    :cond_29
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 118
    iput p1, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    .line 119
    iput-object p2, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    .line 120
    iput-boolean p3, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    .line 121
    iput-boolean p4, p0, Lcom/android/internal/widget/LockscreenCredential;->mIsUnifiedProfilePassword:Z

    .line 122
    iput-boolean p5, p0, Lcom/android/internal/widget/LockscreenCredential;->mIsFromParcel:Z

    .line 123
    return-void
.end method

.method synthetic constructor blacklist <init>(I[BZZZLcom/android/internal/widget/LockscreenCredential-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZZZ)V

    return-void
.end method

.method private static blacklist charsToBytesTruncating(Ljava/lang/CharSequence;)[B
    .registers 4

    .line 509
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newNonMovableByteArray(I)[B

    move-result-object v0

    .line 510
    const/4 v1, 0x0

    :goto_9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 511
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 510
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 513
    :cond_19
    return-object v0
.end method

.method private static blacklist copyOfArrayNonMovable([B)[B
    .registers 4

    .line 307
    array-length v0, p0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newNonMovableByteArray(I)[B

    move-result-object v0

    .line 308
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    return-object v0
.end method

.method public static blacklist createNone()Lcom/android/internal/widget/LockscreenCredential;
    .registers 6

    .line 138
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x0

    new-array v2, v1, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZZZ)V

    return-object v0
.end method

.method public static blacklist createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 3

    .line 158
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/android/internal/widget/LockscreenCredential;-><init>(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public static blacklist createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 2

    .line 188
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 189
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    .line 191
    :cond_b
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createPattern(Ljava/util/List;B)Lcom/android/internal/widget/LockscreenCredential;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;B)",
            "Lcom/android/internal/widget/LockscreenCredential;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 148
    invoke-static {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;B)[B

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZZZ)V

    .line 146
    return-object v0
.end method

.method public static blacklist createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 3

    .line 180
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/android/internal/widget/LockscreenCredential;-><init>(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public static blacklist createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 2

    .line 200
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 201
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    .line 203
    :cond_b
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createUnifiedProfilePassword([B)Lcom/android/internal/widget/LockscreenCredential;
    .registers 7

    .line 168
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 170
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->copyOfArrayNonMovable([B)[B

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZZZ)V

    .line 168
    return-object v0
.end method

.method private blacklist ensureNotZeroized()V
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Credential is already zeroized"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 209
    return-void
.end method

.method private static blacklist hasInvalidChars(Ljava/lang/CharSequence;)Z
    .registers 5

    .line 492
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 493
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 494
    const/16 v3, 0x20

    if-lt v2, v3, :cond_18

    const/16 v3, 0x7f

    if-le v2, v3, :cond_15

    goto :goto_18

    .line 492
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 495
    :cond_18
    :goto_18
    const/4 p0, 0x1

    return p0

    .line 498
    :cond_1a
    return v0
.end method

.method public static blacklist legacyPasswordToHash([B[B)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 398
    if-eqz p0, :cond_3d

    array-length v0, p0

    if-eqz v0, :cond_3d

    if-nez p1, :cond_8

    goto :goto_3d

    .line 403
    :cond_8
    :try_start_8
    filled-new-array {p0, p1}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object p0

    .line 404
    const-string p1, "SHA-1"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 405
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 407
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 408
    filled-new-array {p1, v0}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object p0

    invoke-static {p0}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_33} :catch_34

    return-object p0

    .line 409
    :catch_34
    move-exception p0

    .line 410
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Missing digest algorithm: "

    invoke-direct {p1, v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 399
    :cond_3d
    :goto_3d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist passwordToHistoryHash([B[B[B)Ljava/lang/String;
    .registers 4

    .line 372
    if-eqz p0, :cond_2b

    array-length v0, p0

    if-eqz v0, :cond_2b

    if-eqz p2, :cond_2b

    if-nez p1, :cond_a

    goto :goto_2b

    .line 377
    :cond_a
    :try_start_a
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 378
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 379
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 380
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 381
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_21} :catch_22

    return-object p0

    .line 382
    :catch_22
    move-exception p0

    .line 383
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Missing digest algorithm: "

    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 374
    :cond_2b
    :goto_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist zeroizeIfFromParcel(Lcom/android/internal/widget/LockscreenCredential;)V
    .registers 2

    .line 298
    if-eqz p0, :cond_9

    iget-boolean v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mIsFromParcel:Z

    if-eqz v0, :cond_9

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 301
    :cond_9
    return-void
.end method


# virtual methods
.method public blacklist checkAgainstStoredType(I)Z
    .registers 5

    .line 354
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_16

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :cond_15
    :goto_15
    return v1

    .line 357
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    if-ne v0, p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 448
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 449
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist duplicate()Lcom/android/internal/widget/LockscreenCredential;
    .registers 7

    .line 279
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    iget v1, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    .line 281
    iget-object v2, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v2}, Lcom/android/internal/widget/LockscreenCredential;->copyOfArrayNonMovable([B)[B

    move-result-object v2

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    iget-boolean v3, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    iget-boolean v4, p0, Lcom/android/internal/widget/LockscreenCredential;->mIsUnifiedProfilePassword:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZZZ)V

    .line 279
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 465
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 466
    :cond_4
    instance-of v1, p1, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 467
    :cond_a
    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    .line 468
    iget v1, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    iget v3, p1, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    if-ne v1, v3, :cond_29

    iget-object v1, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    iget-object v3, p1, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    .line 469
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-boolean v1, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    iget-boolean v3, p1, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    if-ne v1, v3, :cond_29

    iget-boolean v1, p0, Lcom/android/internal/widget/LockscreenCredential;->mIsUnifiedProfilePassword:Z

    iget-boolean p1, p1, Lcom/android/internal/widget/LockscreenCredential;->mIsUnifiedProfilePassword:Z

    if-ne v1, p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v2

    .line 468
    :goto_2a
    return v0
.end method

.method public whitelist test-api finalize()V
    .registers 1

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 454
    return-void
.end method

.method public blacklist getCredential()[B
    .registers 2

    .line 226
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 227
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 216
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 217
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    return v0
.end method

.method public blacklist hasInvalidChars()Z
    .registers 2

    .line 262
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 263
    iget-boolean v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 459
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    .line 460
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/widget/LockscreenCredential;->mIsUnifiedProfilePassword:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 459
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isNone()Z
    .registers 3

    .line 232
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 233
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isPassword()Z
    .registers 3

    .line 250
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 251
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isPattern()Z
    .registers 3

    .line 238
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 239
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public blacklist isPin()Z
    .registers 3

    .line 244
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 245
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isUnifiedProfilePassword()Z
    .registers 2

    .line 273
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 274
    iget-boolean v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mIsUnifiedProfilePassword:Z

    return v0
.end method

.method public blacklist passwordToHistoryHash([B[B)Ljava/lang/String;
    .registers 4

    .line 364
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/LockscreenCredential;->passwordToHistoryHash([B[B[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist size()I
    .registers 2

    .line 256
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 257
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    array-length v0, v0

    return v0
.end method

.method public blacklist validateBasicRequirements()V
    .registers 3

    .line 322
    iget-boolean v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    if-nez v0, :cond_3d

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_46

    :pswitch_c
    goto :goto_3c

    .line 339
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-lt v0, v1, :cond_14

    goto :goto_3c

    .line 340
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password must be at least 4 characters long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-lt v0, v1, :cond_24

    goto :goto_3c

    .line 334
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PIN must be at least 4 digits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-lt v0, v1, :cond_33

    goto :goto_3c

    .line 328
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pattern must be at least 4 dots long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :goto_3c
    return-void

    .line 323
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "credential contains invalid characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_c
        :pswitch_1d
        :pswitch_d
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 416
    iget p2, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget-object p2, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 418
    iget-boolean p2, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 419
    iget-boolean p2, p0, Lcom/android/internal/widget/LockscreenCredential;->mIsUnifiedProfilePassword:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 420
    return-void
.end method

.method public blacklist zeroize()V
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v0, :cond_c

    .line 291
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    .line 294
    :cond_c
    return-void
.end method
