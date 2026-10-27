.class public Lorg/apache/miui/commons/lang3/mutable/MutableInt;
.super Ljava/lang/Number;
.source "MutableInt.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/miui/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/miui/commons/lang3/mutable/MutableInt;",
        ">;",
        "Lorg/apache/miui/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x77401786b8L


# instance fields
.field private blacklist value:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Number;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Number;

    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

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
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    .line 79
    return-void
.end method


# virtual methods
.method public blacklist add(I)V
    .registers 3
    .param p1, "operand"    # I

    .line 137
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    .line 138
    return-void
.end method

.method public blacklist add(Ljava/lang/Number;)V
    .registers 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 148
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    .line 149
    return-void
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 29
    check-cast p1, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableInt;)I

    move-result p1

    return p1
.end method

.method public blacklist compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableInt;)I
    .registers 4
    .param p1, "other"    # Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .line 259
    iget v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    .line 260
    .local v0, "anotherVal":I
    iget v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

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
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    .line 127
    return-void
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 211
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 235
    instance-of v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 236
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    move-object v2, p1

    check-cast v2, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v2}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    .line 238
    :cond_12
    return v1
.end method

.method public whitelist test-api floatValue()F
    .registers 2

    .line 201
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public blacklist getValue()Ljava/lang/Integer;
    .registers 2

    .line 88
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getValue()Ljava/lang/Object;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 248
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public blacklist increment()V
    .registers 2

    .line 117
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    .line 118
    return-void
.end method

.method public whitelist test-api intValue()I
    .registers 2

    .line 181
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 191
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist setValue(I)V
    .registers 2
    .param p1, "value"    # I

    .line 97
    iput p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    .line 98
    return-void
.end method

.method public blacklist setValue(Ljava/lang/Number;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Number;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    .line 108
    return-void
.end method

.method public bridge synthetic blacklist setValue(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public blacklist subtract(I)V
    .registers 3
    .param p1, "operand"    # I

    .line 158
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    .line 159
    return-void
.end method

.method public blacklist subtract(Ljava/lang/Number;)V
    .registers 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 169
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    .line 170
    return-void
.end method

.method public blacklist toInteger()Ljava/lang/Integer;
    .registers 2

    .line 221
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 271
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
