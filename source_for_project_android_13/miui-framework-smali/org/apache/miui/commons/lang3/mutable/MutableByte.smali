.class public Lorg/apache/miui/commons/lang3/mutable/MutableByte;
.super Ljava/lang/Number;
.source "MutableByte.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/miui/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/miui/commons/lang3/mutable/MutableByte;",
        ">;",
        "Lorg/apache/miui/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x5e85be21L


# instance fields
.field private blacklist value:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(B)V
    .registers 2
    .param p1, "value"    # B

    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-byte p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Number;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Number;

    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 79
    return-void
.end method


# virtual methods
.method public blacklist add(B)V
    .registers 3
    .param p1, "operand"    # B

    .line 137
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 138
    return-void
.end method

.method public blacklist add(Ljava/lang/Number;)V
    .registers 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 148
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 149
    return-void
.end method

.method public whitelist test-api byteValue()B
    .registers 2

    .line 181
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 29
    check-cast p1, Lorg/apache/miui/commons/lang3/mutable/MutableByte;

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableByte;)I

    move-result p1

    return p1
.end method

.method public blacklist compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableByte;)I
    .registers 4
    .param p1, "other"    # Lorg/apache/miui/commons/lang3/mutable/MutableByte;

    .line 269
    iget-byte v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 270
    .local v0, "anotherVal":B
    iget-byte v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    if-ge v1, v0, :cond_8

    const/4 v1, -0x1

    goto :goto_d

    :cond_8
    if-ne v1, v0, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1
.end method

.method public blacklist decrement()V
    .registers 2

    .line 126
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 127
    return-void
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 221
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    int-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 245
    instance-of v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableByte;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 246
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    move-object v2, p1

    check-cast v2, Lorg/apache/miui/commons/lang3/mutable/MutableByte;

    invoke-virtual {v2}, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->byteValue()B

    move-result v2

    if-ne v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    .line 248
    :cond_12
    return v1
.end method

.method public whitelist test-api floatValue()F
    .registers 2

    .line 211
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    int-to-float v0, v0

    return v0
.end method

.method public blacklist getValue()Ljava/lang/Byte;
    .registers 2

    .line 88
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getValue()Ljava/lang/Object;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->getValue()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 258
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    return v0
.end method

.method public blacklist increment()V
    .registers 2

    .line 117
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 118
    return-void
.end method

.method public whitelist test-api intValue()I
    .registers 2

    .line 191
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 201
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist setValue(B)V
    .registers 2
    .param p1, "value"    # B

    .line 97
    iput-byte p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 98
    return-void
.end method

.method public blacklist setValue(Ljava/lang/Number;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Number;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 108
    return-void
.end method

.method public bridge synthetic blacklist setValue(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public blacklist subtract(B)V
    .registers 3
    .param p1, "operand"    # B

    .line 158
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 159
    return-void
.end method

.method public blacklist subtract(Ljava/lang/Number;)V
    .registers 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 169
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 170
    return-void
.end method

.method public blacklist toByte()Ljava/lang/Byte;
    .registers 2

    .line 231
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 281
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
