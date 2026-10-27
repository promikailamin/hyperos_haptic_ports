.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableString$MarshalerString;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerString"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;Landroid/hardware/camera2/utils/TypeReference;I)V
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
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 45
    return-void
.end method


# virtual methods
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

    .line 41
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString$MarshalerString;->calculateMarshalSize(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist calculateMarshalSize(Ljava/lang/String;)I
    .registers 3

    .line 57
    sget-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString$PreloadHolder;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 59
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public blacklist getNativeSize()I
    .registers 2

    .line 98
    sget v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString$MarshalerString;->NATIVE_SIZE_DYNAMIC:I

    return v0
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

    .line 41
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString$MarshalerString;->marshal(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public blacklist marshal(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 49
    sget-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString$PreloadHolder;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 51
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 52
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 53
    return-void
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

    .line 41
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString$MarshalerString;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 6

    .line 64
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 66
    nop

    .line 67
    const/4 v0, 0x0

    move v1, v0

    .line 68
    :goto_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 69
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-nez v2, :cond_15

    .line 70
    nop

    .line 71
    const/4 v2, 0x1

    goto :goto_19

    .line 74
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 68
    :cond_18
    move v2, v0

    .line 83
    :goto_19
    if-eqz v2, :cond_2d

    .line 87
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 89
    add-int/lit8 v2, v1, 0x1

    new-array v3, v2, [B

    .line 90
    invoke-virtual {p1, v3, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 93
    new-instance p1, Ljava/lang/String;

    sget-object v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString$PreloadHolder;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p1, v3, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p1

    .line 84
    :cond_2d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Strings must be null-terminated"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
