.class public abstract Lorg/apache/commons/math/exception/util/ArgUtils;
.super Ljava/lang/Object;
.source "ArgUtils.java"


# direct methods
.method public static flatten([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2a

    .line 46
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_2a

    aget-object v4, p0, v3

    .line 47
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_24

    .line 48
    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Lorg/apache/commons/math/exception/util/ArgUtils;->flatten([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1a
    if-ge v6, v5, :cond_27

    aget-object v7, v4, v6

    .line 49
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 52
    :cond_24
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 56
    :cond_2a
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
