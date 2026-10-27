.class public Lorg/apache/miui/commons/lang3/AnnotationUtils;
.super Ljava/lang/Object;
.source "AnnotationUtils.java"


# static fields
.field private static final blacklist TO_STRING_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/AnnotationUtils;->TO_STRING_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method private static blacklist annotationArrayMemberEquals([Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Z
    .registers 6
    .param p0, "a1"    # [Ljava/lang/annotation/Annotation;
    .param p1, "a2"    # [Ljava/lang/annotation/Annotation;

    .line 327
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    .line 328
    return v2

    .line 330
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_18

    .line 331
    aget-object v1, p0, v0

    aget-object v3, p1, v0

    invoke-static {v1, v3}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 332
    return v2

    .line 330
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 335
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist arrayMemberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 289
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 290
    move-object v0, p1

    check-cast v0, [Ljava/lang/annotation/Annotation;

    move-object v1, p2

    check-cast v1, [Ljava/lang/annotation/Annotation;

    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->annotationArrayMemberEquals([Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Z

    move-result v0

    return v0

    .line 292
    :cond_11
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 293
    move-object v0, p1

    check-cast v0, [B

    move-object v1, p2

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 295
    :cond_24
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 296
    move-object v0, p1

    check-cast v0, [S

    move-object v1, p2

    check-cast v1, [S

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    return v0

    .line 298
    :cond_37
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 299
    move-object v0, p1

    check-cast v0, [I

    move-object v1, p2

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    .line 301
    :cond_4a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 302
    move-object v0, p1

    check-cast v0, [C

    move-object v1, p2

    check-cast v1, [C

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    return v0

    .line 304
    :cond_5d
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 305
    move-object v0, p1

    check-cast v0, [J

    move-object v1, p2

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    .line 307
    :cond_70
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 308
    move-object v0, p1

    check-cast v0, [F

    move-object v1, p2

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0

    .line 310
    :cond_83
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 311
    move-object v0, p1

    check-cast v0, [D

    move-object v1, p2

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    return v0

    .line 313
    :cond_96
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 314
    move-object v0, p1

    check-cast v0, [Z

    move-object v1, p2

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0

    .line 316
    :cond_a9
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static blacklist arrayMemberHash(Ljava/lang/Class;Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 346
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 347
    move-object v0, p1

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0

    .line 349
    :cond_10
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 350
    move-object v0, p1

    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([S)I

    move-result v0

    return v0

    .line 352
    :cond_20
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 353
    move-object v0, p1

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0

    .line 355
    :cond_30
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 356
    move-object v0, p1

    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    return v0

    .line 358
    :cond_40
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 359
    move-object v0, p1

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0

    .line 361
    :cond_50
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 362
    move-object v0, p1

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    return v0

    .line 364
    :cond_60
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 365
    move-object v0, p1

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0

    .line 367
    :cond_70
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 368
    move-object v0, p1

    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    return v0

    .line 370
    :cond_80
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static blacklist equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z
    .registers 13
    .param p0, "a1"    # Ljava/lang/annotation/Annotation;
    .param p1, "a2"    # Ljava/lang/annotation/Annotation;

    .line 124
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 125
    return v0

    .line 127
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_64

    if-nez p1, :cond_a

    goto :goto_64

    .line 130
    :cond_a
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    .line 131
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 132
    .local v3, "type2":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-array v4, v0, [Ljava/lang/Object;

    aput-object p0, v4, v1

    const-string v5, "Annotation %s with null annotationType()"

    invoke-static {v2, v5, v4}, Lorg/apache/miui/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v3, v5, v4}, Lorg/apache/miui/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 135
    return v1

    .line 138
    :cond_29
    :try_start_29
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_2f
    if-ge v6, v5, :cond_5e

    aget-object v7, v4, v6

    .line 139
    .local v7, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_5b

    .line 140
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->isValidAnnotationMemberType(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 141
    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v7, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 142
    .local v8, "v1":Ljava/lang/Object;
    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v7, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 143
    .local v9, "v2":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10, v8, v9}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->memberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10
    :try_end_58
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_58} :catch_62
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_58} :catch_60

    if-nez v10, :cond_5b

    .line 144
    return v1

    .line 138
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v8    # "v1":Ljava/lang/Object;
    .end local v9    # "v2":Ljava/lang/Object;
    :cond_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 152
    :cond_5e
    nop

    .line 153
    return v0

    .line 150
    :catch_60
    move-exception v0

    .line 151
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    return v1

    .line 148
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_62
    move-exception v0

    .line 149
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    return v1

    .line 128
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v3    # "type2":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_64
    :goto_64
    return v1
.end method

.method public static blacklist hashCode(Ljava/lang/annotation/Annotation;)I
    .registers 10
    .param p0, "a"    # Ljava/lang/annotation/Annotation;

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "result":I
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    .line 171
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_c
    if-ge v5, v3, :cond_3f

    aget-object v6, v2, v5

    .line 173
    .local v6, "m":Ljava/lang/reflect/Method;
    :try_start_10
    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 174
    .local v7, "value":Ljava/lang/Object;
    if-eqz v7, :cond_25

    .line 178
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->hashMember(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    add-int/2addr v0, v8

    .line 183
    .end local v7    # "value":Ljava/lang/Object;
    nop

    .line 171
    .end local v6    # "m":Ljava/lang/reflect/Method;
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 175
    .restart local v6    # "m":Ljava/lang/reflect/Method;
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_25
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Annotation method %s returned null"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v4

    .line 176
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "result":I
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v6    # "m":Ljava/lang/reflect/Method;
    .end local p0    # "a":Ljava/lang/annotation/Annotation;
    throw v2
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_36} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_36} :catch_36

    .line 181
    .end local v7    # "value":Ljava/lang/Object;
    .restart local v0    # "result":I
    .restart local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .restart local v6    # "m":Ljava/lang/reflect/Method;
    .restart local p0    # "a":Ljava/lang/annotation/Annotation;
    :catch_36
    move-exception v2

    .line 182
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 179
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_3d
    move-exception v2

    .line 180
    .local v2, "ex":Ljava/lang/RuntimeException;
    throw v2

    .line 185
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .end local v6    # "m":Ljava/lang/reflect/Method;
    :cond_3f
    return v0
.end method

.method private static blacklist hashMember(Ljava/lang/String;Ljava/lang/Object;)I
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7f

    .line 245
    .local v0, "part1":I
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 246
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->arrayMemberHash(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v1, v0

    return v1

    .line 248
    :cond_1e
    instance-of v1, p1, Ljava/lang/annotation/Annotation;

    if-eqz v1, :cond_2b

    .line 249
    move-object v1, p1

    check-cast v1, Ljava/lang/annotation/Annotation;

    invoke-static {v1}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->hashCode(Ljava/lang/annotation/Annotation;)I

    move-result v1

    xor-int/2addr v1, v0

    return v1

    .line 251
    :cond_2b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    return v1
.end method

.method public static blacklist isValidAnnotationMemberType(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 225
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 226
    return v0

    .line 228
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 229
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 231
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    if-nez v1, :cond_30

    const-class v1, Ljava/lang/String;

    .line 232
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-class v1, Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    :cond_30
    const/4 v0, 0x1

    .line 231
    :cond_31
    return v0
.end method

.method private static blacklist memberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 265
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne p1, p2, :cond_4

    .line 266
    const/4 v0, 0x1

    return v0

    .line 268
    :cond_4
    if-eqz p1, :cond_2e

    if-nez p2, :cond_9

    goto :goto_2e

    .line 271
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 272
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->arrayMemberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 274
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 275
    move-object v0, p1

    check-cast v0, Ljava/lang/annotation/Annotation;

    move-object v1, p2

    check-cast v1, Ljava/lang/annotation/Annotation;

    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v0

    return v0

    .line 277
    :cond_29
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 269
    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist toString(Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .registers 9
    .param p0, "a"    # Ljava/lang/annotation/Annotation;

    .line 197
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;

    sget-object v1, Lorg/apache/miui/commons/lang3/AnnotationUtils;->TO_STRING_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)V

    .line 198
    .local v0, "builder":Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_38

    aget-object v5, v1, v4

    .line 199
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_1e

    .line 200
    goto :goto_2c

    .line 203
    :cond_1e
    :try_start_1e
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_2b} :catch_36
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b} :catch_2f

    .line 208
    nop

    .line 198
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :goto_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 206
    .restart local v5    # "m":Ljava/lang/reflect/Method;
    :catch_2f
    move-exception v1

    .line 207
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 204
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_36
    move-exception v1

    .line 205
    .local v1, "ex":Ljava/lang/RuntimeException;
    throw v1

    .line 210
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :cond_38
    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
