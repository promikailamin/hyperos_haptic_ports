.class public final Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
.super Ljava/lang/Object;
.source "InstantAppResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/InstantAppResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstantAppDigest"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o DIGEST_MASK:I = -0x1000

.field public static final whitelist UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

.field private static greylist-max-o sRandom:Ljava/util/Random;


# instance fields
.field private final greylist-max-o mDigestBytes:[[B

.field private final greylist-max-o mDigestPrefix:[I

.field private greylist-max-o mDigestPrefixSecure:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDigestBytes(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;)[[B
    .registers 1

    iget-object p0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 241
    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    const/4 v1, 0x0

    new-array v2, v1, [[B

    new-array v1, v1, [I

    invoke-direct {v0, v2, v1}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>([[B[I)V

    sput-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 244
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->sRandom:Ljava/util/Random;

    .line 247
    :try_start_f
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->sRandom:Ljava/util/Random;
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_17} :catch_18

    .line 251
    goto :goto_20

    .line 248
    :catch_18
    move-exception v0

    .line 250
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->sRandom:Ljava/util/Random;

    .line 386
    :goto_20
    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest$1;

    invoke-direct {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest$1;-><init>()V

    sput-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 321
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    goto :goto_20

    .line 324
    :cond_e
    new-array v1, v0, [[B

    iput-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    .line 325
    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_20

    .line 326
    iget-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    aput-object v3, v2, v1

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 329
    :cond_20
    :goto_20
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefix:[I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefixSecure:[I

    .line 331
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3

    .line 261
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>(Ljava/lang/String;I)V

    .line 262
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 7

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    if-eqz p1, :cond_56

    .line 269
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->generateDigest(Ljava/lang/String;I)[[B

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    .line 270
    iget-object p1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefix:[I

    .line 271
    const/4 p1, 0x0

    move p2, p1

    :goto_1a
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    array-length v0, v0

    if-ge p2, v0, :cond_55

    .line 272
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefix:[I

    iget-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    aget-object v1, v1, p2

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    aget-object v2, v2, p2

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    aget-object v2, v2, p2

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    aget-object v2, v2, p2

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, p1

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, -0x1000

    aput v1, v0, p2

    .line 271
    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    .line 279
    :cond_55
    return-void

    .line 267
    :cond_56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private constructor greylist-max-o <init>([[B[I)V
    .registers 3

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefix:[I

    .line 283
    iput-object p1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    .line 284
    return-void
.end method

.method private static greylist-max-o generateDigest(Ljava/lang/String;I)[[B
    .registers 9

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    :try_start_5
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 290
    if-gtz p1, :cond_19

    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 292
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    goto :goto_6b

    .line 294
    :cond_19
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 295
    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 297
    if-gez v3, :cond_33

    .line 298
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 300
    :cond_33
    add-int/lit8 v5, v3, 0x1

    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 302
    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    nop

    .line 304
    :goto_49
    if-ltz v3, :cond_6b

    if-ge v4, p1, :cond_6b

    .line 305
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 306
    add-int/lit8 v5, v3, 0x1

    .line 307
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 308
    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_68} :catch_79

    .line 309
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 315
    :cond_6b
    :goto_6b
    nop

    .line 316
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [[B

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    return-object p0

    .line 313
    :catch_79
    move-exception p0

    .line 314
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "could not find digest algorithm"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDigestBytes()[[B
    .registers 2

    .line 334
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    return-object v0
.end method

.method public whitelist getDigestPrefix()[I
    .registers 2

    .line 338
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefix:[I

    return-object v0
.end method

.method public greylist-max-o getDigestPrefixSecure()[I
    .registers 5

    .line 346
    sget-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    if-ne p0, v0, :cond_9

    .line 347
    invoke-virtual {p0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v0

    return-object v0

    .line 348
    :cond_9
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefixSecure:[I

    if-nez v0, :cond_3e

    .line 350
    invoke-virtual {p0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v0

    array-length v0, v0

    .line 351
    add-int/lit8 v1, v0, 0xa

    sget-object v2, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->sRandom:Ljava/util/Random;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 352
    invoke-virtual {p0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefixSecure:[I

    .line 353
    nop

    :goto_28
    if-ge v0, v1, :cond_39

    .line 354
    iget-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefixSecure:[I

    sget-object v3, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->sRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    and-int/lit16 v3, v3, -0x1000

    aput v3, v2, v0

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 356
    :cond_39
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefixSecure:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 358
    :cond_3e
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefixSecure:[I

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 368
    sget-object p2, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    const/4 v0, 0x0

    if-ne p0, p2, :cond_7

    const/4 p2, 0x1

    goto :goto_8

    :cond_7
    move p2, v0

    .line 369
    :goto_8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 370
    if-eqz p2, :cond_e

    .line 371
    return-void

    .line 373
    :cond_e
    iget-object p2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    if-nez p2, :cond_17

    .line 374
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 376
    :cond_17
    iget-object p2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    nop

    :goto_1e
    iget-object p2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    array-length p2, p2

    if-ge v0, p2, :cond_2d

    .line 378
    iget-object p2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 381
    :cond_2d
    :goto_2d
    iget-object p2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefix:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 382
    iget-object p2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefixSecure:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 383
    return-void
.end method
