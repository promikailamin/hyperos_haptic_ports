.class public Lco/nstant/in/cbor/model/LanguageTaggedString;
.super Lco/nstant/in/cbor/model/Array;
.source "LanguageTaggedString.java"


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/model/UnicodeString;Lco/nstant/in/cbor/model/UnicodeString;)V
    .registers 4

    .line 14
    invoke-direct {p0}, Lco/nstant/in/cbor/model/Array;-><init>()V

    const/16 v0, 0x26

    .line 15
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/model/DataItem;->setTag(I)V

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    .line 17
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {p0, p2}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    return-void
.end method
