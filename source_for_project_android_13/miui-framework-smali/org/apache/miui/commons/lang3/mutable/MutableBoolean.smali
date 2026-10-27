.class public Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;
.super Ljava/lang/Object;
.source "MutableBoolean.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/mutable/Mutable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/miui/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x430a31a5c56f1c87L


# instance fields
.field private blacklist value:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist booleanValue()Z
    .registers 2

    .line 129
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 32
    check-cast p1, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;)I

    move-result p1

    return p1
.end method

.method public blacklist compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;)I
    .registers 4
    .param p1, "other"    # Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;

    .line 179
    iget-boolean v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    .line 180
    .local v0, "anotherVal":Z
    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    if-ne v1, v0, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, -0x1

    :goto_d
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 154
    instance-of v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 155
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    move-object v2, p1

    check-cast v2, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;

    invoke-virtual {v2}, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->booleanValue()Z

    move-result v2

    if-ne v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    .line 157
    :cond_12
    return v1
.end method

.method public blacklist getValue()Ljava/lang/Boolean;
    .registers 2

    .line 79
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getValue()Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 167
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isFalse()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist isTrue()Z
    .registers 3

    .line 109
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist setValue(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 98
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    .line 99
    return-void
.end method

.method public bridge synthetic blacklist setValue(Ljava/lang/Object;)V
    .registers 2

    .line 32
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public blacklist setValue(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 88
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    .line 89
    return-void
.end method

.method public blacklist toBoolean()Ljava/lang/Boolean;
    .registers 2

    .line 140
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 191
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
