.class public Lco/nstant/in/cbor/encoder/MapEncoder$1;
.super Ljava/lang/Object;
.source "MapEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/encoder/MapEncoder;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 59
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/encoder/MapEncoder$1;->compare([B[B)I

    move-result p0

    return p0
.end method

.method public compare([B[B)I
    .registers 8

    .line 63
    array-length p0, p1

    array-length v0, p2

    const/4 v1, -0x1

    if-ge p0, v0, :cond_6

    return v1

    .line 66
    :cond_6
    array-length p0, p1

    array-length v0, p2

    const/4 v2, 0x1

    if-le p0, v0, :cond_c

    return v2

    :cond_c
    const/4 p0, 0x0

    move v0, p0

    .line 69
    :goto_e
    array-length v3, p1

    if-ge v0, v3, :cond_1e

    .line 70
    aget-byte v3, p1, v0

    aget-byte v4, p2, v0

    if-ge v3, v4, :cond_18

    return v1

    :cond_18
    if-le v3, v4, :cond_1b

    return v2

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1e
    return p0
.end method
