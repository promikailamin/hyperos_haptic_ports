.class public Landroid/content/pm/VerifierDeviceIdentity;
.super Ljava/lang/Object;
.source "VerifierDeviceIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/VerifierDeviceIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o ENCODE:[C

.field private static final greylist-max-o GROUP_SIZE:I = 0x4

.field private static final greylist-max-o LONG_SIZE:I = 0xd

.field private static final greylist-max-o SEPARATOR:C = '-'


# instance fields
.field private final greylist-max-o mIdentity:J

.field private final greylist-max-o mIdentityString:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Landroid/content/pm/VerifierDeviceIdentity;->ENCODE:[C

    .line 234
    new-instance v0, Landroid/content/pm/VerifierDeviceIdentity$1;

    invoke-direct {v0}, Landroid/content/pm/VerifierDeviceIdentity$1;-><init>()V

    sput-object v0, Landroid/content/pm/VerifierDeviceIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_12
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
    .end array-data
.end method

.method public constructor greylist-max-o <init>(J)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    .line 64
    invoke-static {p1, p2}, Landroid/content/pm/VerifierDeviceIdentity;->encodeBase32(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 70
    iput-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    .line 71
    invoke-static {v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;->encodeBase32(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    .line 72
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/VerifierDeviceIdentity-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static final greylist-max-o decodeBase32([B)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 142
    nop

    .line 143
    nop

    .line 145
    array-length v0, p0

    .line 146
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    const/16 v5, 0xd

    if-ge v3, v0, :cond_7d

    .line 147
    aget-byte v6, p0, v3

    .line 154
    const/16 v7, 0x41

    if-gt v7, v6, :cond_18

    const/16 v7, 0x5a

    if-gt v6, v7, :cond_18

    .line 155
    add-int/lit8 v6, v6, -0x41

    goto :goto_40

    .line 156
    :cond_18
    const/16 v7, 0x32

    if-gt v7, v6, :cond_23

    const/16 v7, 0x37

    if-gt v6, v7, :cond_23

    .line 157
    add-int/lit8 v6, v6, -0x18

    goto :goto_40

    .line 158
    :cond_23
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_28

    .line 159
    goto :goto_58

    .line 160
    :cond_28
    const/16 v7, 0x61

    if-gt v7, v6, :cond_33

    const/16 v7, 0x7a

    if-gt v6, v7, :cond_33

    .line 162
    add-int/lit8 v6, v6, -0x61

    goto :goto_40

    .line 163
    :cond_33
    const/16 v7, 0x30

    if-ne v6, v7, :cond_3a

    .line 165
    const/16 v6, 0xe

    goto :goto_40

    .line 166
    :cond_3a
    const/16 v7, 0x31

    if-ne v6, v7, :cond_64

    .line 168
    const/16 v6, 0x8

    .line 173
    :goto_40
    const/4 v7, 0x5

    shl-long/2addr v1, v7

    int-to-long v7, v6

    or-long/2addr v1, v7

    .line 174
    add-int/lit8 v4, v4, 0x1

    .line 176
    const/4 v7, 0x1

    if-ne v4, v7, :cond_56

    .line 177
    and-int/lit8 v5, v6, 0xf

    if-ne v5, v6, :cond_4e

    goto :goto_58

    .line 178
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal start character; will overflow"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_56
    if-gt v4, v5, :cond_5b

    .line 146
    :goto_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 181
    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "too long; should have 13 characters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 170
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base base-32 character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 185
    :cond_7d
    if-ne v4, v5, :cond_80

    .line 189
    return-wide v1

    .line 186
    :cond_80
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "too short; should have 13 characters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final greylist-max-o encodeBase32(J)Ljava/lang/String;
    .registers 8

    .line 108
    sget-object v0, Landroid/content/pm/VerifierDeviceIdentity;->ENCODE:[C

    .line 114
    const/16 v1, 0x10

    new-array v2, v1, [C

    .line 116
    nop

    .line 117
    const/4 v3, 0x0

    :goto_8
    const/16 v4, 0xd

    if-ge v3, v4, :cond_28

    .line 124
    if-lez v3, :cond_19

    rem-int/lit8 v4, v3, 0x4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    .line 125
    add-int/lit8 v1, v1, -0x1

    const/16 v4, 0x2d

    aput-char v4, v2, v1

    .line 131
    :cond_19
    const-wide/16 v4, 0x1f

    and-long/2addr v4, p0

    long-to-int v4, v4

    .line 132
    const/4 v5, 0x5

    ushr-long/2addr p0, v5

    .line 134
    add-int/lit8 v1, v1, -0x1

    aget-char v4, v0, v4

    aput-char v4, v2, v1

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 137
    :cond_28
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o generate()Landroid/content/pm/VerifierDeviceIdentity;
    .registers 1

    .line 80
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 81
    invoke-static {v0}, Landroid/content/pm/VerifierDeviceIdentity;->generate(Ljava/util/Random;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o generate(Ljava/util/Random;)Landroid/content/pm/VerifierDeviceIdentity;
    .registers 3

    .line 94
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    .line 95
    new-instance p0, Landroid/content/pm/VerifierDeviceIdentity;

    invoke-direct {p0, v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    return-object p0
.end method

.method public static greylist-max-o parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 216
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_11

    .line 219
    nop

    .line 221
    new-instance v0, Landroid/content/pm/VerifierDeviceIdentity;

    invoke-static {p0}, Landroid/content/pm/VerifierDeviceIdentity;->decodeBase32([B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    return-object v0

    .line 217
    :catch_11
    move-exception p0

    .line 218
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad base-32 characters in input"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 199
    instance-of v0, p1, Landroid/content/pm/VerifierDeviceIdentity;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 200
    return v1

    .line 203
    :cond_6
    check-cast p1, Landroid/content/pm/VerifierDeviceIdentity;

    .line 204
    iget-wide v2, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    iget-wide v4, p1, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 194
    iget-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 231
    iget-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 232
    return-void
.end method
