.class public Lorg/apache/miui/commons/lang3/mutable/MutableObject;
.super Ljava/lang/Object;
.source "MutableObject.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/mutable/Mutable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/miui/commons/lang3/mutable/Mutable<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x14146a94f5L


# instance fields
.field private blacklist value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 45
    .local p0, "this":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    .line 56
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 92
    .local p0, "this":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<TT;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 93
    return v0

    .line 95
    :cond_4
    if-ne p0, p1, :cond_8

    .line 96
    const/4 v0, 0x1

    return v0

    .line 98
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1e

    .line 99
    move-object v0, p1

    check-cast v0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;

    .line 100
    .local v0, "that":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<*>;"
    iget-object v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 102
    .end local v0    # "that":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<*>;"
    :cond_1e
    return v0
.end method

.method public blacklist getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<TT;>;"
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 113
    .local p0, "this":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<TT;>;"
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public blacklist setValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 124
    .local p0, "this":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<TT;>;"
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    if-nez v0, :cond_7

    const-string v0, "null"

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method
