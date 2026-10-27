.class public abstract synthetic Lco/nstant/in/cbor/decoder/SpecialDecoder$1;
.super Ljava/lang/Object;
.source "SpecialDecoder.java"


# static fields
.field public static final synthetic $SwitchMap$co$nstant$in$cbor$model$SimpleValueType:[I

.field public static final synthetic $SwitchMap$co$nstant$in$cbor$model$SpecialType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 27
    invoke-static {}, Lco/nstant/in/cbor/model/SpecialType;->values()[Lco/nstant/in/cbor/model/SpecialType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lco/nstant/in/cbor/decoder/SpecialDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$SpecialType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lco/nstant/in/cbor/model/SpecialType;->BREAK:Lco/nstant/in/cbor/model/SpecialType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lco/nstant/in/cbor/decoder/SpecialDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$SpecialType:[I

    sget-object v3, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE:Lco/nstant/in/cbor/model/SpecialType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lco/nstant/in/cbor/decoder/SpecialDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$SpecialType:[I

    sget-object v4, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_HALF_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lco/nstant/in/cbor/decoder/SpecialDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$SpecialType:[I

    sget-object v5, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_SINGLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Lco/nstant/in/cbor/decoder/SpecialDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$SpecialType:[I

    sget-object v6, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_DOUBLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    const/4 v5, 0x6

    :try_start_3f
    sget-object v6, Lco/nstant/in/cbor/decoder/SpecialDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$SpecialType:[I

    sget-object v7, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE_NEXT_BYTE:Lco/nstant/in/cbor/model/SpecialType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v6, Lco/nstant/in/cbor/decoder/SpecialDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$SpecialType:[I

    sget-object v7, Lco/nstant/in/cbor/model/SpecialType;->UNALLOCATED:Lco/nstant/in/cbor/model/SpecialType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/4 v8, 0x7

    aput v8, v6, v7
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    .line 31
    :catch_54
    invoke-static {}, Lco/nstant/in/cbor/model/SimpleValueType;->values()[Lco/nstant/in/cbor/model/SimpleValueType;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lco/nstant/in/cbor/decoder/SpecialDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$SimpleValueType:[I

    :try_start_5d
    sget-object v7, Lco/nstant/in/cbor/model/SimpleValueType;->FALSE:Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_65} :catch_65

    :catch_65
    :try_start_65
    sget-object v1, Lco/nstant/in/cbor/decoder/SpecialDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$SimpleValueType:[I

    sget-object v6, Lco/nstant/in/cbor/model/SimpleValueType;->TRUE:Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v1, v6
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_6f
    sget-object v0, Lco/nstant/in/cbor/decoder/SpecialDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$SimpleValueType:[I

    sget-object v1, Lco/nstant/in/cbor/model/SimpleValueType;->NULL:Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_79

    :catch_79
    :try_start_79
    sget-object v0, Lco/nstant/in/cbor/decoder/SpecialDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$SimpleValueType:[I

    sget-object v1, Lco/nstant/in/cbor/model/SimpleValueType;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_83

    :catch_83
    :try_start_83
    sget-object v0, Lco/nstant/in/cbor/decoder/SpecialDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$SimpleValueType:[I

    sget-object v1, Lco/nstant/in/cbor/model/SimpleValueType;->UNALLOCATED:Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8d} :catch_8d

    :catch_8d
    :try_start_8d
    sget-object v0, Lco/nstant/in/cbor/decoder/SpecialDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$SimpleValueType:[I

    sget-object v1, Lco/nstant/in/cbor/model/SimpleValueType;->RESERVED:Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_97} :catch_97

    :catch_97
    return-void
.end method
