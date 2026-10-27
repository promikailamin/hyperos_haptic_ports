.class public Lorg/apache/miui/commons/lang3/mutable/MutableLong;
.super Ljava/lang/Number;
.source "MutableLong.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/miui/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/miui/commons/lang3/mutable/MutableLong;",
        ">;",
        "Lorg/apache/miui/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0xeaa4a2677L


# instance fields
.field private blacklist value:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 3
    .param p1, "value"    # J

    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-wide p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Number;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Number;

    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

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
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    .line 79
    return-void
.end method


# virtual methods
.method public blacklist add(J)V
    .registers 5
    .param p1, "operand"    # J

    .line 137
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    .line 138
    return-void
.end method

.method public blacklist add(Ljava/lang/Number;)V
    .registers 6
    .param p1, "operand"    # Ljava/lang/Number;

    .line 148
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    .line 149
    return-void
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 29
    check-cast p1, Lorg/apache/miui/commons/lang3/mutable/MutableLong;

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableLong;)I

    move-result p1

    return p1
.end method

.method public blacklist compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableLong;)I
    .registers 7
    .param p1, "other"    # Lorg/apache/miui/commons/lang3/mutable/MutableLong;

    .line 259
    iget-wide v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    .line 260
    .local v0, "anotherVal":J
    iget-wide v2, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_a

    const/4 v2, -0x1

    goto :goto_11

    :cond_a
    cmp-long v2, v2, v0

    if-nez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_11

    :cond_10
    const/4 v2, 0x1

    :goto_11
    return v2
.end method

.method public blacklist decrement()V
    .registers 5

    .line 126
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    .line 127
    return-void
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 211
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 235
    instance-of v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableLong;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 236
    iget-wide v2, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    move-object v0, p1

    check-cast v0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1

    .line 238
    :cond_14
    return v1
.end method

.method public whitelist test-api floatValue()F
    .registers 3

    .line 201
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public blacklist getValue()Ljava/lang/Long;
    .registers 3

    .line 88
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getValue()Ljava/lang/Object;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->getValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 248
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public blacklist increment()V
    .registers 5

    .line 117
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    .line 118
    return-void
.end method

.method public whitelist test-api intValue()I
    .registers 3

    .line 181
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 191
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public blacklist setValue(J)V
    .registers 3
    .param p1, "value"    # J

    .line 97
    iput-wide p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    .line 98
    return-void
.end method

.method public blacklist setValue(Ljava/lang/Number;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Number;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    .line 108
    return-void
.end method

.method public bridge synthetic blacklist setValue(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public blacklist subtract(J)V
    .registers 5
    .param p1, "operand"    # J

    .line 158
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    .line 159
    return-void
.end method

.method public blacklist subtract(Ljava/lang/Number;)V
    .registers 6
    .param p1, "operand"    # Ljava/lang/Number;

    .line 169
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    .line 170
    return-void
.end method

.method public blacklist toLong()Ljava/lang/Long;
    .registers 3

    .line 221
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 271
    iget-wide v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
