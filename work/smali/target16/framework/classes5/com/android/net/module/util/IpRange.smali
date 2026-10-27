.class public final Lcom/android/net/module/util/IpRange;
.super Ljava/lang/Object;
.source "IpRange.java"


# static fields
.field private static final blacklist SIGNUM_POSITIVE:I = 0x1


# instance fields
.field private final blacklist mEndAddr:[B

.field private final blacklist mStartAddr:[B


# direct methods
.method public constructor blacklist <init>(Landroid/net/IpPrefix;)V
    .registers 7

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string/jumbo v0, "prefix must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/net/module/util/IpRange;->mStartAddr:[B

    .line 76
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/net/module/util/IpRange;->mEndAddr:[B

    .line 77
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result p1

    :goto_19
    iget-object v0, p0, Lcom/android/net/module/util/IpRange;->mEndAddr:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    if-ge p1, v0, :cond_34

    .line 78
    iget-object v0, p0, Lcom/android/net/module/util/IpRange;->mEndAddr:[B

    div-int/lit8 v1, p1, 0x8

    aget-byte v2, v0, v1

    rem-int/lit8 v3, p1, 0x8

    const/16 v4, 0x80

    shr-int v3, v4, v3

    int-to-byte v3, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 77
    add-int/lit8 p1, p1, 0x1

    goto :goto_19

    .line 80
    :cond_34
    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .registers 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string/jumbo v0, "startAddr must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    const-string v0, "endAddr must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 58
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v0

    .line 59
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_3f

    .line 64
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/net/module/util/IpRange;->mStartAddr:[B

    .line 65
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/net/module/util/IpRange;->mEndAddr:[B

    .line 66
    return-void

    .line 60
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid range; start address must be before end address"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid range: Address family mismatch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist addrToBigInteger([B)Ljava/math/BigInteger;
    .registers 3

    .line 221
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method private static blacklist getAsInetAddress([B)Ljava/net/InetAddress;
    .registers 2

    .line 84
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 85
    :catch_5
    move-exception p0

    .line 88
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Address is invalid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getSubsetPrefixes(Landroid/net/IpPrefix;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/IpPrefix;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v1

    .line 166
    new-instance v2, Landroid/net/IpPrefix;

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v2, v3, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object p0

    .line 169
    div-int/lit8 v2, v1, 0x8

    aget-byte v3, p0, v2

    const/16 v5, 0x80

    rem-int/lit8 v1, v1, 0x8

    shr-int v1, v5, v1

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p0, v2

    .line 171
    new-instance v1, Landroid/net/IpPrefix;

    invoke-static {p0}, Lcom/android/net/module/util/IpRange;->getAsInetAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    invoke-direct {v1, p0, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-object v0
.end method


# virtual methods
.method public blacklist asIpPrefixes()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/net/module/util/IpRange;->mStartAddr:[B

    array-length v0, v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    move v0, v1

    .line 121
    :goto_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 126
    new-instance v5, Landroid/net/IpPrefix;

    if-eqz v0, :cond_20

    new-array v0, v2, [B

    invoke-static {v0}, Lcom/android/net/module/util/IpRange;->getAsInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_27

    .line 127
    :cond_20
    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/android/net/module/util/IpRange;->getAsInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    :goto_27
    invoke-direct {v5, v0, v1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 126
    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_2d
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    .line 131
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    .line 132
    new-instance v1, Lcom/android/net/module/util/IpRange;

    invoke-direct {v1, v0}, Lcom/android/net/module/util/IpRange;-><init>(Landroid/net/IpPrefix;)V

    .line 136
    invoke-virtual {p0, v1}, Lcom/android/net/module/util/IpRange;->containsRange(Lcom/android/net/module/util/IpRange;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 137
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    goto :goto_2d

    .line 143
    :cond_48
    invoke-virtual {p0, v1}, Lcom/android/net/module/util/IpRange;->overlapsRange(Lcom/android/net/module/util/IpRange;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 144
    invoke-static {v0}, Lcom/android/net/module/util/IpRange;->getSubsetPrefixes(Landroid/net/IpPrefix;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 146
    :cond_55
    goto :goto_2d

    .line 148
    :cond_56
    return-object v3
.end method

.method public blacklist containsRange(Lcom/android/net/module/util/IpRange;)Z
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/android/net/module/util/IpRange;->mStartAddr:[B

    invoke-static {v0}, Lcom/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p1, Lcom/android/net/module/util/IpRange;->mStartAddr:[B

    invoke-static {v1}, Lcom/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_26

    iget-object v0, p0, Lcom/android/net/module/util/IpRange;->mEndAddr:[B

    .line 186
    invoke-static {v0}, Lcom/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v0

    iget-object p1, p1, Lcom/android/net/module/util/IpRange;->mEndAddr:[B

    invoke-static {p1}, Lcom/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-ltz p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    .line 185
    :goto_27
    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 208
    instance-of v0, p1, Lcom/android/net/module/util/IpRange;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 209
    return v1

    .line 212
    :cond_6
    check-cast p1, Lcom/android/net/module/util/IpRange;

    .line 213
    iget-object v0, p0, Lcom/android/net/module/util/IpRange;->mStartAddr:[B

    iget-object v2, p1, Lcom/android/net/module/util/IpRange;->mStartAddr:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/net/module/util/IpRange;->mEndAddr:[B

    iget-object p1, p1, Lcom/android/net/module/util/IpRange;->mEndAddr:[B

    .line 214
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 213
    :goto_1f
    return v1
.end method

.method public blacklist getEndAddr()Ljava/net/InetAddress;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/net/module/util/IpRange;->mEndAddr:[B

    invoke-static {v0}, Lcom/android/net/module/util/IpRange;->getAsInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStartAddr()Ljava/net/InetAddress;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/net/module/util/IpRange;->mStartAddr:[B

    invoke-static {v0}, Lcom/android/net/module/util/IpRange;->getAsInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/android/net/module/util/IpRange;->mStartAddr:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/net/module/util/IpRange;->mEndAddr:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist overlapsRange(Lcom/android/net/module/util/IpRange;)Z
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/android/net/module/util/IpRange;->mStartAddr:[B

    invoke-static {v0}, Lcom/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p1, Lcom/android/net/module/util/IpRange;->mEndAddr:[B

    invoke-static {v1}, Lcom/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_26

    iget-object p1, p1, Lcom/android/net/module/util/IpRange;->mStartAddr:[B

    .line 198
    invoke-static {p1}, Lcom/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lcom/android/net/module/util/IpRange;->mEndAddr:[B

    invoke-static {v0}, Lcom/android/net/module/util/IpRange;->addrToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gtz p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    .line 197
    :goto_27
    return p1
.end method
