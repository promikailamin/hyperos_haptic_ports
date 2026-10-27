.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerEnum"
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
.method protected constructor blacklist <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;Landroid/hardware/camera2/utils/TypeReference;I)V
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

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 55
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->mClass:Ljava/lang/Class;

    .line 56
    return-void
.end method


# virtual methods
.method public blacklist getNativeSize()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->mNativeType:I

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalHelpers;->getPrimitiveTypeSize(I)I

    move-result v0

    return v0
.end method

.method public blacklist marshal(Ljava/lang/Enum;Ljava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-static {p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->-$$Nest$smgetEnumValue(Ljava/lang/Enum;)I

    move-result p1

    .line 62
    iget v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->mNativeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 63
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1b

    .line 64
    :cond_d
    iget v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->mNativeType:I

    if-nez v0, :cond_30

    .line 65
    if-ltz p1, :cond_1c

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1c

    .line 69
    int-to-byte p1, p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 73
    :goto_1b
    return-void

    .line 66
    :cond_1c
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 66
    const-string v0, "Enum value %x too large to fit into unsigned byte"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 71
    :cond_30
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

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

    .line 47
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->marshal(Ljava/lang/Enum;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public blacklist unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Enum;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .line 79
    iget v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->mNativeType:I

    packed-switch v0, :pswitch_data_20

    .line 88
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected native type; impossible since its not supported"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 81
    :pswitch_d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 82
    goto :goto_19

    .line 85
    :pswitch_12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    .line 86
    nop

    .line 92
    :goto_19
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->mClass:Ljava/lang/Class;

    invoke-static {v0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->-$$Nest$smgetEnumFromValue(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object p1

    return-object p1

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_12
        :pswitch_d
    .end packed-switch
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

    .line 47
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method
