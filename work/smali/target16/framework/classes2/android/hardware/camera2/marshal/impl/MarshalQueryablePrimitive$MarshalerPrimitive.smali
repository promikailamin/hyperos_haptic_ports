.class Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryablePrimitive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;Landroid/hardware/camera2/utils/TypeReference;I)V
    .registers 4
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
            "TT;>;I)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 60
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/camera2/marshal/MarshalHelpers;->wrapClassIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mClass:Ljava/lang/Class;

    .line 61
    return-void
.end method

.method private blacklist marshalPrimitive(BLjava/nio/ByteBuffer;)V
    .registers 3

    .line 126
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 127
    return-void
.end method

.method private blacklist marshalPrimitive(DLjava/nio/ByteBuffer;)V
    .registers 4

    .line 113
    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 114
    return-void
.end method

.method private blacklist marshalPrimitive(FLjava/nio/ByteBuffer;)V
    .registers 3

    .line 109
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 110
    return-void
.end method

.method private blacklist marshalPrimitive(ILjava/nio/ByteBuffer;)V
    .registers 3

    .line 105
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 106
    return-void
.end method

.method private blacklist marshalPrimitive(JLjava/nio/ByteBuffer;)V
    .registers 4

    .line 117
    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 118
    return-void
.end method

.method private blacklist marshalPrimitive(Landroid/util/Rational;Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 121
    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 123
    return-void
.end method

.method private blacklist unmarshalObject(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 4

    .line 130
    iget v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    packed-switch v0, :pswitch_data_5c

    .line 146
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t unmarshal native type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :pswitch_20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 139
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 140
    new-instance v1, Landroid/util/Rational;

    invoke-direct {v1, v0, p1}, Landroid/util/Rational;-><init>(II)V

    return-object v1

    .line 142
    :pswitch_2e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 136
    :pswitch_37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 134
    :pswitch_40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 132
    :pswitch_49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 144
    :pswitch_52
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_52
        :pswitch_49
        :pswitch_40
        :pswitch_37
        :pswitch_2e
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public blacklist calculateMarshalSize(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 70
    iget p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    invoke-static {p1}, Landroid/hardware/camera2/marshal/MarshalHelpers;->getPrimitiveTypeSize(I)I

    move-result p1

    return p1
.end method

.method public blacklist getNativeSize()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalHelpers;->getPrimitiveTypeSize(I)I

    move-result v0

    return v0
.end method

.method public blacklist marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .line 75
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_14

    .line 76
    const/4 v0, 0x1

    iget v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    invoke-static {v0, v1}, Landroid/hardware/camera2/marshal/MarshalHelpers;->checkNativeTypeEquals(II)I

    .line 77
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->marshalPrimitive(ILjava/nio/ByteBuffer;)V

    .line 79
    goto :goto_74

    :cond_14
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_28

    .line 80
    const/4 v0, 0x2

    iget v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    invoke-static {v0, v1}, Landroid/hardware/camera2/marshal/MarshalHelpers;->checkNativeTypeEquals(II)I

    .line 81
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->marshalPrimitive(FLjava/nio/ByteBuffer;)V

    .line 83
    goto :goto_74

    :cond_28
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3c

    .line 84
    const/4 v0, 0x3

    iget v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    invoke-static {v0, v1}, Landroid/hardware/camera2/marshal/MarshalHelpers;->checkNativeTypeEquals(II)I

    .line 85
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 86
    invoke-direct {p0, v0, v1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->marshalPrimitive(JLjava/nio/ByteBuffer;)V

    .line 87
    goto :goto_74

    :cond_3c
    instance-of v0, p1, Landroid/util/Rational;

    if-eqz v0, :cond_4c

    .line 88
    const/4 v0, 0x5

    iget v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    invoke-static {v0, v1}, Landroid/hardware/camera2/marshal/MarshalHelpers;->checkNativeTypeEquals(II)I

    .line 89
    check-cast p1, Landroid/util/Rational;

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->marshalPrimitive(Landroid/util/Rational;Ljava/nio/ByteBuffer;)V

    goto :goto_74

    .line 90
    :cond_4c
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_60

    .line 91
    const/4 v0, 0x4

    iget v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    invoke-static {v0, v1}, Landroid/hardware/camera2/marshal/MarshalHelpers;->checkNativeTypeEquals(II)I

    .line 92
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 93
    invoke-direct {p0, v0, v1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->marshalPrimitive(DLjava/nio/ByteBuffer;)V

    .line 94
    goto :goto_74

    :cond_60
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_75

    .line 95
    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    invoke-static {v0, v1}, Landroid/hardware/camera2/marshal/MarshalHelpers;->checkNativeTypeEquals(II)I

    .line 96
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->marshalPrimitive(BLjava/nio/ByteBuffer;)V

    .line 98
    nop

    .line 102
    :goto_74
    return-void

    .line 99
    :cond_75
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t marshal managed type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mClass:Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->unmarshalObject(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
