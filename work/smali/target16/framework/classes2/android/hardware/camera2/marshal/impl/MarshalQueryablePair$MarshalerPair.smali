.class Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryablePair.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Landroid/util/Pair<",
        "TT1;TT2;>;>;"
    }
.end annotation


# instance fields
.field private final blacklist mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-",
            "Landroid/util/Pair<",
            "TT1;TT2;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/util/Pair<",
            "TT1;TT2;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT1;>;"
        }
    .end annotation
.end field

.field private final blacklist mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;Landroid/hardware/camera2/utils/TypeReference;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Landroid/util/Pair<",
            "TT1;TT2;>;>;I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 49
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mClass:Ljava/lang/Class;

    .line 57
    :try_start_9
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_f} :catch_54

    .line 60
    nop

    .line 64
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 p3, 0x0

    aget-object p2, p2, p3

    .line 66
    nop

    .line 67
    invoke-static {p2}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    move-result-object p2

    .line 69
    iget v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNativeType:I

    invoke-static {p2, v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object p2

    iput-object p2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    .line 74
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 p2, 0x1

    aget-object p1, p1, p2

    .line 76
    nop

    .line 77
    invoke-static {p1}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    move-result-object p1

    .line 79
    iget v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNativeType:I

    invoke-static {p1, v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    .line 83
    :try_start_38
    iget-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mClass:Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v0, p3

    const-class p3, Ljava/lang/Object;

    aput-object p3, v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mConstructor:Ljava/lang/reflect/Constructor;
    :try_end_4b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_38 .. :try_end_4b} :catch_4d

    .line 87
    nop

    .line 88
    return-void

    .line 85
    :catch_4d
    move-exception p1

    .line 86
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 58
    :catch_54
    move-exception p1

    .line 59
    new-instance p2, Ljava/lang/AssertionError;

    const-string p3, "Raw use of Pair is not supported"

    invoke-direct {p2, p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public blacklist calculateMarshalSize(Landroid/util/Pair;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "TT1;TT2;>;)I"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->getNativeSize()I

    move-result v0

    .line 136
    sget v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->NATIVE_SIZE_DYNAMIC:I

    if-eq v0, v1, :cond_9

    .line 137
    return v0

    .line 139
    :cond_9
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result v0

    .line 140
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result p1

    .line 142
    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic blacklist calculateMarshalSize(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 36
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->calculateMarshalSize(Landroid/util/Pair;)I

    move-result p1

    return p1
.end method

.method public blacklist getNativeSize()I
    .registers 4

    .line 122
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v0}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    move-result v0

    .line 123
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v1}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    move-result v1

    .line 125
    sget v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->NATIVE_SIZE_DYNAMIC:I

    if-eq v0, v2, :cond_16

    sget v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->NATIVE_SIZE_DYNAMIC:I

    if-eq v1, v2, :cond_16

    .line 126
    add-int/2addr v0, v1

    return v0

    .line 128
    :cond_16
    sget v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->NATIVE_SIZE_DYNAMIC:I

    return v0
.end method

.method public blacklist marshal(Landroid/util/Pair;Ljava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "TT1;TT2;>;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .line 92
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1f

    .line 94
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_17

    .line 98
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    .line 99
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    .line 100
    return-void

    .line 95
    :cond_17
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Pair#second must not be null"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_1f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Pair#first must not be null"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic blacklist marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 36
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->marshal(Landroid/util/Pair;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public blacklist unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Landroid/util/Pair<",
            "TT1;TT2;>;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    .line 108
    :try_start_c
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mConstructor:Ljava/lang/reflect/Constructor;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;
    :try_end_18
    .catch Ljava/lang/InstantiationException; {:try_start_c .. :try_end_18} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_18} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_18} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_18} :catch_19

    return-object p1

    .line 115
    :catch_19
    move-exception p1

    .line 116
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 113
    :catch_20
    move-exception p1

    .line 114
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 111
    :catch_27
    move-exception p1

    .line 112
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 109
    :catch_2e
    move-exception p1

    .line 110
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic blacklist unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
