.class public Landroid/filterfw/format/ObjectFormat;
.super Ljava/lang/Object;
.source "ObjectFormat.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o bytesPerSampleForClass(Ljava/lang/Class;I)I
    .registers 4

    .line 59
    const/4 v0, 0x2

    if-ne p1, v0, :cond_55

    .line 60
    const-class p1, Landroid/filterfw/core/NativeBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 65
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/filterfw/core/NativeBuffer;

    invoke-virtual {p1}, Landroid/filterfw/core/NativeBuffer;->getElementSize()I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    return p0

    .line 66
    :catch_16
    move-exception p1

    .line 67
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not determine the size of an element in a native object-based frame of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "! Perhaps it is missing a default constructor?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Native object-based formats must be of a NativeBuffer subclass! (Received class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_55
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist-max-o fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;
    .registers 3

    .line 41
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;
    .registers 5

    .line 31
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p2}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 32
    invoke-static {p0}, Landroid/filterfw/format/ObjectFormat;->getBoxedClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    .line 33
    if-eqz p1, :cond_13

    .line 34
    invoke-virtual {v0, p1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(I)V

    .line 36
    :cond_13
    invoke-static {p0, p2}, Landroid/filterfw/format/ObjectFormat;->bytesPerSampleForClass(Ljava/lang/Class;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 37
    return-object v0
.end method

.method public static greylist-max-o fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;
    .registers 3

    .line 45
    if-nez p0, :cond_a

    .line 46
    new-instance p0, Landroid/filterfw/core/MutableFrameFormat;

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    goto :goto_13

    .line 47
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p0

    .line 45
    :goto_13
    return-object p0
.end method

.method public static greylist-max-o fromObject(Ljava/lang/Object;II)Landroid/filterfw/core/MutableFrameFormat;
    .registers 3

    .line 51
    if-nez p0, :cond_a

    .line 52
    new-instance p0, Landroid/filterfw/core/MutableFrameFormat;

    const/16 p1, 0x8

    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    goto :goto_12

    .line 53
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p0

    .line 51
    :goto_12
    return-object p0
.end method

.method private static greylist-max-o getBoxedClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4

    .line 78
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 80
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_d

    .line 81
    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 82
    :cond_d
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_14

    .line 83
    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 84
    :cond_14
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1b

    .line 85
    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 86
    :cond_1b
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_22

    .line 87
    const-class p0, Ljava/lang/Short;

    return-object p0

    .line 88
    :cond_22
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_29

    .line 89
    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 90
    :cond_29
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_30

    .line 91
    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 92
    :cond_30
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_37

    .line 93
    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 94
    :cond_37
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3e

    .line 95
    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 97
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown primitive type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_61
    return-object p0
.end method
