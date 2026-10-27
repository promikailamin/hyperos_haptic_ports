.class public abstract Lco/nstant/in/cbor/model/Number;
.super Lco/nstant/in/cbor/model/DataItem;
.source "Number.java"


# instance fields
.field public final value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/model/MajorType;Ljava/math/BigInteger;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/model/DataItem;-><init>(Lco/nstant/in/cbor/model/MajorType;)V

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Ljava/math/BigInteger;

    iput-object p2, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 21
    instance-of v0, p1, Lco/nstant/in/cbor/model/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 22
    move-object v0, p1

    check-cast v0, Lco/nstant/in/cbor/model/Number;

    .line 23
    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/DataItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    iget-object p1, v0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v1
.end method

.method public getValue()Ljava/math/BigInteger;
    .registers 1

    .line 16
    iget-object p0, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 30
    invoke-super {p0}, Lco/nstant/in/cbor/model/DataItem;->hashCode()I

    move-result v0

    iget-object p0, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
