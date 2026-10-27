.class public abstract Lco/nstant/in/cbor/model/DataItem;
.super Ljava/lang/Object;
.source "DataItem.java"


# instance fields
.field public final majorType:Lco/nstant/in/cbor/model/MajorType;

.field public tag:Lco/nstant/in/cbor/model/Tag;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/model/MajorType;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    .line 12
    const-string/jumbo p0, "majorType is null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public assertTrue(ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    .line 65
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 46
    instance-of v0, p1, Lco/nstant/in/cbor/model/DataItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 47
    check-cast p1, Lco/nstant/in/cbor/model/DataItem;

    .line 48
    iget-object v0, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    .line 49
    iget-object v3, p1, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    invoke-virtual {v0, v3}, Lco/nstant/in/cbor/model/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    iget-object p1, p1, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    if-ne p0, p1, :cond_1b

    return v2

    :cond_1b
    return v1

    .line 51
    :cond_1c
    iget-object v0, p1, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    if-nez v0, :cond_27

    iget-object p0, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    iget-object p1, p1, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    if-ne p0, p1, :cond_27

    return v2

    :cond_27
    return v1
.end method

.method public getMajorType()Lco/nstant/in/cbor/model/MajorType;
    .registers 1

    .line 16
    iget-object p0, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    return-object p0
.end method

.method public getTag()Lco/nstant/in/cbor/model/Tag;
    .registers 1

    .line 37
    iget-object p0, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    return-object p0
.end method

.method public hasTag()Z
    .registers 1

    .line 41
    iget-object p0, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 2

    .line 60
    iget-object v0, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    iget-object p0, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setTag(I)V
    .registers 5

    if-ltz p1, :cond_b

    .line 24
    new-instance v0, Lco/nstant/in/cbor/model/Tag;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    iput-object v0, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    return-void

    .line 21
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "tag number must be 0 or greater"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTag(Lco/nstant/in/cbor/model/Tag;)V
    .registers 3

    .line 28
    const-string/jumbo v0, "tag is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    return-void
.end method
