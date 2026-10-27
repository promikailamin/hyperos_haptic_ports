.class public Landroid/hardware/camera2/utils/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ArrayUtils"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static greylist-max-o contains([II)Z
    .registers 2

    .line 167
    invoke-static {p0, p1}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([II)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static greylist-max-o contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 178
    invoke-static {p0, p1}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static greylist-max-o convertStringListToIntArray(Ljava/util/List;[Ljava/lang/String;[I)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[I)[I"
        }
    .end annotation

    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_4
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    move-result-object p0

    .line 85
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p2, p1, [I

    .line 86
    const/4 v0, 0x0

    :goto_f
    if-ge v0, p1, :cond_20

    .line 87
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p2, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 90
    :cond_20
    return-object p2
.end method

.method public static greylist-max-o convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 109
    if-nez p0, :cond_4

    .line 110
    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    invoke-static {p1, v1}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 119
    if-gez v1, :cond_24

    .line 121
    goto :goto_11

    .line 125
    :cond_24
    array-length v2, p2

    if-ge v1, v2, :cond_30

    .line 126
    aget v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_30
    goto :goto_11

    .line 130
    :cond_31
    return-object v0
.end method

.method public static greylist-max-o getArrayIndex([II)I
    .registers 5

    .line 52
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 53
    return v0

    .line 55
    :cond_4
    const/4 v1, 0x0

    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_10

    .line 56
    aget v2, p0, v1

    if-ne v2, p1, :cond_d

    .line 57
    return v1

    .line 55
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 60
    :cond_10
    return v0
.end method

.method public static greylist-max-o getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 35
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 36
    return v0

    .line 39
    :cond_4
    nop

    .line 40
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v2, v1, :cond_18

    aget-object v4, p0, v2

    .line 41
    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 42
    return v3

    .line 44
    :cond_13
    add-int/lit8 v3, v3, 0x1

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 47
    :cond_18
    return v0
.end method

.method public static greylist-max-o toIntArray(Ljava/util/List;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 145
    if-nez p0, :cond_4

    .line 146
    const/4 p0, 0x0

    return-object p0

    .line 149
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 150
    nop

    .line 151
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 152
    aput v2, v0, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 154
    goto :goto_10

    .line 156
    :cond_25
    return-object v0
.end method
