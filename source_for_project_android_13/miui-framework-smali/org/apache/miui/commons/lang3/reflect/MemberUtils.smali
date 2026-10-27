.class public abstract Lorg/apache/miui/commons/lang3/reflect/MemberUtils;
.super Ljava/lang/Object;
.source "MemberUtils.java"


# static fields
.field private static final blacklist ACCESS_TEST:I = 0x7

.field private static final blacklist ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 40
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist compareParameterTypes([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 101
    .local p0, "left":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "right":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p2, "actual":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p2, p0}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v0

    .line 102
    .local v0, "leftCost":F
    invoke-static {p2, p1}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v1

    .line 103
    .local v1, "rightCost":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_e

    const/4 v2, -0x1

    goto :goto_15

    :cond_e
    cmpg-float v2, v1, v0

    if-gez v2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2
.end method

.method private static blacklist getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)F"
        }
    .end annotation

    .line 133
    .local p0, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v0

    return v0

    .line 136
    :cond_b
    const/4 v0, 0x0

    .line 137
    .local v0, "cost":F
    :goto_c
    if-eqz p0, :cond_2c

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 138
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 144
    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v0, v1

    .line 145
    goto :goto_2c

    .line 147
    :cond_24
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 148
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_c

    .line 154
    :cond_2c
    :goto_2c
    if-nez p0, :cond_31

    .line 155
    const/high16 v1, 0x3fc00000    # 1.5f

    add-float/2addr v0, v1

    .line 157
    :cond_31
    return v0
.end method

.method private static blacklist getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)F"
        }
    .end annotation

    .line 168
    .local p0, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 169
    .local v0, "cost":F
    move-object v1, p0

    .line 170
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    if-nez v2, :cond_10

    .line 172
    add-float/2addr v0, v3

    .line 173
    invoke-static {v1}, Lorg/apache/miui/commons/lang3/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 175
    :cond_10
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-eq v1, p1, :cond_29

    sget-object v4, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v5, v4

    if-ge v2, v5, :cond_29

    .line 176
    aget-object v5, v4, v2

    if-ne v1, v5, :cond_26

    .line 177
    add-float/2addr v0, v3

    .line 178
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_26

    .line 179
    add-int/lit8 v5, v2, 0x1

    aget-object v1, v4, v5

    .line 175
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 183
    .end local v2    # "i":I
    :cond_29
    return v0
.end method

.method private static blacklist getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)F"
        }
    .end annotation

    .line 114
    .local p0, "srcArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "destArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 115
    .local v0, "totalCost":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_11

    .line 117
    aget-object v2, p0, v1

    .line 118
    .local v2, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v3, p1, v1

    .line 119
    .local v3, "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2, v3}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v4

    add-float/2addr v0, v4

    .line 115
    .end local v2    # "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 121
    .end local v1    # "i":I
    :cond_11
    return v0
.end method

.method static blacklist isAccessible(Ljava/lang/reflect/Member;)Z
    .registers 2
    .param p0, "m"    # Ljava/lang/reflect/Member;

    .line 85
    if-eqz p0, :cond_14

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/lang/reflect/Member;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method static blacklist isPackageAccess(I)Z
    .registers 2
    .param p0, "modifiers"    # I

    .line 76
    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static blacklist setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)V
    .registers 3
    .param p0, "o"    # Ljava/lang/reflect/AccessibleObject;

    .line 56
    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2b

    .line 59
    :cond_9
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Member;

    .line 60
    .local v0, "m":Ljava/lang/reflect/Member;
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 61
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->isPackageAccess(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 63
    const/4 v1, 0x1

    :try_start_25
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_28} :catch_29

    .line 66
    goto :goto_2a

    .line 64
    :catch_29
    move-exception v1

    .line 68
    :cond_2a
    :goto_2a
    return-void

    .line 57
    .end local v0    # "m":Ljava/lang/reflect/Member;
    :cond_2b
    :goto_2b
    return-void
.end method
