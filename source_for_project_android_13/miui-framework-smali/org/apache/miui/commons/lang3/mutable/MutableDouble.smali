.class public Lorg/apache/miui/commons/lang3/mutable/MutableDouble;
.super Ljava/lang/Number;
.source "MutableDouble.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/miui/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/miui/commons/lang3/mutable/MutableDouble;",
        ">;",
        "Lorg/apache/miui/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x5e9a330cL


# instance fields
.field private blacklist value:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(D)V
    .registers 3
    .param p1, "value"    # D

    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-wide p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Number;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Number;

    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    .line 79
    return-void
.end method


# virtual methods
.method public blacklist add(D)V
    .registers 5
    .param p1, "operand"    # D

    .line 156
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    .line 157
    return-void
.end method

.method public blacklist add(Ljava/lang/Number;)V
    .registers 6
    .param p1, "operand"    # Ljava/lang/Number;

    .line 167
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    .line 168
    return-void
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 29
    check-cast p1, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableDouble;)I

    move-result p1

    return p1
.end method

.method public blacklist compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableDouble;)I
    .registers 6
    .param p1, "other"    # Lorg/apache/miui/commons/lang3/mutable/MutableDouble;

    .line 298
    iget-wide v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    .line 299
    .local v0, "anotherVal":D
    iget-wide v2, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    return v2
.end method

.method public blacklist decrement()V
    .registers 5

    .line 145
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    .line 146
    return-void
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 230
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 275
    instance-of v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;

    if-eqz v0, :cond_19

    move-object v0, p1

    check-cast v0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;

    iget-wide v0, v0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    .line 276
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 275
    :goto_1a
    return v0
.end method

.method public whitelist test-api floatValue()F
    .registers 3

    .line 220
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public blacklist getValue()Ljava/lang/Double;
    .registers 3

    .line 88
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getValue()Ljava/lang/Object;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->getValue()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 286
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 287
    .local v0, "bits":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public blacklist increment()V
    .registers 5

    .line 136
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    .line 137
    return-void
.end method

.method public whitelist test-api intValue()I
    .registers 3

    .line 200
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public blacklist isInfinite()Z
    .registers 3

    .line 126
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public blacklist isNaN()Z
    .registers 3

    .line 117
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 210
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public blacklist setValue(D)V
    .registers 3
    .param p1, "value"    # D

    .line 97
    iput-wide p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    .line 98
    return-void
.end method

.method public blacklist setValue(Ljava/lang/Number;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Number;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    .line 108
    return-void
.end method

.method public bridge synthetic blacklist setValue(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public blacklist subtract(D)V
    .registers 5
    .param p1, "operand"    # D

    .line 177
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    .line 178
    return-void
.end method

.method public blacklist subtract(Ljava/lang/Number;)V
    .registers 6
    .param p1, "operand"    # Ljava/lang/Number;

    .line 188
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    .line 189
    return-void
.end method

.method public blacklist toDouble()Ljava/lang/Double;
    .registers 3

    .line 240
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 310
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
