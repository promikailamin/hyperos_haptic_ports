.class public Lorg/apache/miui/commons/lang3/mutable/MutableFloat;
.super Ljava/lang/Number;
.source "MutableFloat.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/miui/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/miui/commons/lang3/mutable/MutableFloat;",
        ">;",
        "Lorg/apache/miui/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x158f131a2L


# instance fields
.field private blacklist value:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(F)V
    .registers 2
    .param p1, "value"    # F

    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Number;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Number;

    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

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
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    .line 79
    return-void
.end method


# virtual methods
.method public blacklist add(F)V
    .registers 3
    .param p1, "operand"    # F

    .line 156
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    .line 157
    return-void
.end method

.method public blacklist add(Ljava/lang/Number;)V
    .registers 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 167
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    .line 168
    return-void
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 29
    check-cast p1, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableFloat;)I

    move-result p1

    return p1
.end method

.method public blacklist compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableFloat;)I
    .registers 4
    .param p1, "other"    # Lorg/apache/miui/commons/lang3/mutable/MutableFloat;

    .line 299
    iget v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    .line 300
    .local v0, "anotherVal":F
    iget v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    return v1
.end method

.method public blacklist decrement()V
    .registers 3

    .line 145
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    .line 146
    return-void
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 230
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 277
    instance-of v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;

    iget v0, v0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    .line 278
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 277
    :goto_18
    return v0
.end method

.method public whitelist test-api floatValue()F
    .registers 2

    .line 220
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    return v0
.end method

.method public blacklist getValue()Ljava/lang/Float;
    .registers 2

    .line 88
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getValue()Ljava/lang/Object;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->getValue()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 288
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public blacklist increment()V
    .registers 3

    .line 136
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    .line 137
    return-void
.end method

.method public whitelist test-api intValue()I
    .registers 2

    .line 200
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public blacklist isInfinite()Z
    .registers 2

    .line 126
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public blacklist isNaN()Z
    .registers 2

    .line 117
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 210
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public blacklist setValue(F)V
    .registers 2
    .param p1, "value"    # F

    .line 97
    iput p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    .line 98
    return-void
.end method

.method public blacklist setValue(Ljava/lang/Number;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Number;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    .line 108
    return-void
.end method

.method public bridge synthetic blacklist setValue(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public blacklist subtract(F)V
    .registers 3
    .param p1, "operand"    # F

    .line 177
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    .line 178
    return-void
.end method

.method public blacklist subtract(Ljava/lang/Number;)V
    .registers 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 188
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    .line 189
    return-void
.end method

.method public blacklist toFloat()Ljava/lang/Float;
    .registers 2

    .line 240
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 311
    iget v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
