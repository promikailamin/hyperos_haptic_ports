.class public Lco/nstant/in/cbor/decoder/SpecialDecoder;
.super Lco/nstant/in/cbor/decoder/AbstractDecoder;
.source "SpecialDecoder.java"


# instance fields
.field public final doublePrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;

.field public final halfPrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/HalfPrecisionFloatDecoder;

.field public final singlePrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V
    .registers 4

    .line 19
    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    .line 20
    new-instance v0, Lco/nstant/in/cbor/decoder/HalfPrecisionFloatDecoder;

    invoke-direct {v0, p1, p2}, Lco/nstant/in/cbor/decoder/HalfPrecisionFloatDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->halfPrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/HalfPrecisionFloatDecoder;

    .line 21
    new-instance v0, Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;

    invoke-direct {v0, p1, p2}, Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->singlePrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;

    .line 22
    new-instance v0, Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;

    invoke-direct {v0, p1, p2}, Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->doublePrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;

    return-void
.end method


# virtual methods
.method public decode(I)Lco/nstant/in/cbor/model/Special;
    .registers 4

    .line 27
    sget-object v0, Lco/nstant/in/cbor/decoder/SpecialDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$SpecialType:[I

    invoke-static {p1}, Lco/nstant/in/cbor/model/SpecialType;->ofByte(I)Lco/nstant/in/cbor/model/SpecialType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Not implemented"

    packed-switch v0, :pswitch_data_6e

    .line 56
    new-instance p0, Lco/nstant/in/cbor/CborException;

    invoke-direct {p0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :pswitch_17
    new-instance p1, Lco/nstant/in/cbor/model/SimpleValue;

    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p0

    invoke-direct {p1, p0}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(I)V

    return-object p1

    .line 51
    :pswitch_21
    iget-object p0, p0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->doublePrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;->decode(I)Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    move-result-object p0

    return-object p0

    .line 49
    :pswitch_28
    iget-object p0, p0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->singlePrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;->decode(I)Lco/nstant/in/cbor/model/SinglePrecisionFloat;

    move-result-object p0

    return-object p0

    .line 47
    :pswitch_2f
    iget-object p0, p0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->halfPrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/HalfPrecisionFloatDecoder;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/HalfPrecisionFloatDecoder;->decode(I)Lco/nstant/in/cbor/model/HalfPrecisionFloat;

    move-result-object p0

    return-object p0

    .line 31
    :pswitch_36
    sget-object p0, Lco/nstant/in/cbor/decoder/SpecialDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$SimpleValueType:[I

    invoke-static {p1}, Lco/nstant/in/cbor/model/SimpleValueType;->ofByte(I)Lco/nstant/in/cbor/model/SimpleValueType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_68

    const/4 v0, 0x2

    if-eq p0, v0, :cond_65

    const/4 v0, 0x3

    if-eq p0, v0, :cond_62

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5f

    const/4 v0, 0x5

    if-ne p0, v0, :cond_59

    .line 41
    new-instance p0, Lco/nstant/in/cbor/model/SimpleValue;

    and-int/lit8 p1, p1, 0x1f

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(I)V

    return-object p0

    .line 44
    :cond_59
    new-instance p0, Lco/nstant/in/cbor/CborException;

    invoke-direct {p0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_5f
    sget-object p0, Lco/nstant/in/cbor/model/SimpleValue;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValue;

    return-object p0

    .line 37
    :cond_62
    sget-object p0, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    return-object p0

    .line 35
    :cond_65
    sget-object p0, Lco/nstant/in/cbor/model/SimpleValue;->TRUE:Lco/nstant/in/cbor/model/SimpleValue;

    return-object p0

    .line 33
    :cond_68
    sget-object p0, Lco/nstant/in/cbor/model/SimpleValue;->FALSE:Lco/nstant/in/cbor/model/SimpleValue;

    return-object p0

    .line 29
    :pswitch_6b
    sget-object p0, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    return-object p0

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_36
        :pswitch_2f
        :pswitch_28
        :pswitch_21
        :pswitch_17
    .end packed-switch
.end method
