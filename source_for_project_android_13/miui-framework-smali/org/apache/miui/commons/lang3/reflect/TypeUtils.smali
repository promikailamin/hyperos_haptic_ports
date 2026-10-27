.class public Lorg/apache/miui/commons/lang3/reflect/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static blacklist determineTypeArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;
    .registers 7
    .param p1, "superType"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 700
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    .line 703
    .local v0, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 704
    return-object v2

    .line 707
    :cond_c
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 708
    invoke-static {p1, v0, v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 712
    :cond_17
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 715
    .local v1, "midType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_27

    .line 716
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-static {v2, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->determineTypeArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 719
    :cond_27
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 720
    .local v2, "midParameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v3

    .line 723
    .local v3, "midClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->determineTypeArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;

    move-result-object v4

    .line 725
    .local v4, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-static {p0, v2, v4}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V

    .line 727
    return-object v4
.end method

.method public static blacklist getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 1079
    instance-of v0, p0, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1080
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 1081
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    :cond_12
    return-object v1

    .line 1083
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_13
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_1f

    .line 1084
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 1086
    :cond_1f
    return-object v1
.end method

.method private static blacklist getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 787
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 789
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 791
    .local v0, "interfaceTypes":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .line 794
    .local v1, "genericInterface":Ljava/lang/reflect/Type;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_4e

    aget-object v4, v0, v3

    .line 795
    .local v4, "midType":Ljava/lang/reflect/Type;
    const/4 v5, 0x0

    .line 797
    .local v5, "midClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v6, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_1e

    .line 798
    move-object v6, v4

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v6}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v5

    goto :goto_25

    .line 799
    :cond_1e
    instance-of v6, v4, Ljava/lang/Class;

    if-eqz v6, :cond_35

    .line 800
    move-object v5, v4

    check-cast v5, Ljava/lang/Class;

    .line 808
    :goto_25
    invoke-static {v5, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 809
    invoke-static {v1, v5}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 810
    move-object v1, v4

    .line 794
    .end local v4    # "midType":Ljava/lang/reflect/Type;
    .end local v5    # "midClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 802
    .restart local v4    # "midType":Ljava/lang/reflect/Type;
    .restart local v5    # "midClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_35
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected generic interface type found: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 815
    .end local v4    # "midType":Ljava/lang/reflect/Type;
    .end local v5    # "midClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4e
    if-eqz v1, :cond_51

    .line 816
    return-object v1

    .line 822
    .end local v0    # "interfaceTypes":[Ljava/lang/reflect/Type;
    .end local v1    # "genericInterface":Ljava/lang/reflect/Type;
    :cond_51
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 899
    .local p0, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 901
    .local v0, "bounds":[Ljava/lang/reflect/Type;
    array-length v1, v0

    if-nez v1, :cond_10

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    goto :goto_14

    :cond_10
    invoke-static {v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    :goto_14
    return-object v1
.end method

.method public static blacklist getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .registers 5
    .param p0, "wildcardType"    # Ljava/lang/reflect/WildcardType;

    .line 930
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 932
    .local v0, "bounds":[Ljava/lang/reflect/Type;
    array-length v1, v0

    if-nez v1, :cond_f

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    return-object v1
.end method

.method public static blacklist getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .registers 5
    .param p0, "wildcardType"    # Ljava/lang/reflect/WildcardType;

    .line 915
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 917
    .local v0, "bounds":[Ljava/lang/reflect/Type;
    array-length v1, v0

    if-nez v1, :cond_10

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    goto :goto_14

    :cond_10
    invoke-static {v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    :goto_14
    return-object v1
.end method

.method private static blacklist getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;
    .registers 5
    .param p0, "parameterizedType"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 974
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 981
    .local v0, "rawType":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_c

    .line 985
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    return-object v1

    .line 982
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait... What!? Type of rawType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getRawType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 6
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "assigningType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1001
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_8

    .line 1003
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 1006
    :cond_8
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_14

    .line 1008
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 1011
    :cond_14
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 1012
    if-nez p1, :cond_1c

    .line 1013
    return-object v1

    .line 1017
    :cond_1c
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 1021
    .local v0, "genericDeclaration":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Class;

    if-nez v2, :cond_28

    .line 1022
    return-object v1

    .line 1027
    :cond_28
    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    invoke-static {p1, v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    .line 1032
    .local v2, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    if-nez v2, :cond_32

    .line 1033
    return-object v1

    .line 1037
    :cond_32
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    .line 1039
    .local v3, "typeArgument":Ljava/lang/reflect/Type;
    if-nez v3, :cond_3b

    .line 1040
    return-object v1

    .line 1044
    :cond_3b
    invoke-static {v3, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 1047
    .end local v0    # "genericDeclaration":Ljava/lang/Object;
    .end local v2    # "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    .end local v3    # "typeArgument":Ljava/lang/reflect/Type;
    :cond_40
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_59

    .line 1049
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 1050
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1049
    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 1053
    .local v0, "rawComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 1057
    .end local v0    # "rawComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_59
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_5e

    .line 1058
    return-object v1

    .line 1061
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getTypeArguments(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 641
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "subtypeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 642
    const/4 v0, 0x0

    return-object v0

    .line 646
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 648
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 651
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 655
    :cond_1a
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 659
    :cond_1e
    if-nez p2, :cond_26

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_2b

    .line 660
    :cond_26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_2b
    nop

    .line 663
    .local v0, "typeVarAssigns":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_43

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_43

    .line 668
    :cond_3a
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 664
    :cond_43
    :goto_43
    return-object v0
.end method

.method public static blacklist getTypeArguments(Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;
    .registers 3
    .param p0, "type"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 486
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .registers 12
    .param p0, "parameterizedType"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 588
    .local p1, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "subtypeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    .line 591
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 592
    const/4 v1, 0x0

    return-object v1

    .line 595
    :cond_c
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 598
    .local v1, "ownerType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_21

    .line 600
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 601
    .local v2, "parameterizedOwnerType":Ljava/lang/reflect/ParameterizedType;
    nop

    .line 602
    invoke-static {v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v3

    .line 601
    invoke-static {v2, v3, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 603
    .local v2, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    goto :goto_2f

    .line 605
    .end local v2    # "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    :cond_21
    if-nez p2, :cond_29

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_2e

    .line 606
    :cond_29
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_2e
    nop

    .line 610
    .restart local v2    # "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    :goto_2f
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 612
    .local v3, "typeArgs":[Ljava/lang/reflect/Type;
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 615
    .local v4, "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_38
    array-length v6, v4

    if-ge v5, v6, :cond_53

    .line 616
    aget-object v6, v3, v5

    .line 617
    .local v6, "typeArg":Ljava/lang/reflect/Type;
    aget-object v7, v4, v5

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    .line 618
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Type;

    goto :goto_4d

    :cond_4c
    move-object v8, v6

    .line 617
    :goto_4d
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    .end local v6    # "typeArg":Ljava/lang/reflect/Type;
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 621
    .end local v5    # "i":I
    :cond_53
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 623
    return-object v2

    .line 627
    :cond_5a
    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v5, p1, v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    return-object v5
.end method

.method public static blacklist getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/util/Map;
    .registers 3
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 522
    .local p1, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .registers 9
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 535
    .local p1, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "subtypeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_c

    .line 536
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 539
    :cond_c
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_18

    .line 540
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 543
    :cond_18
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_34

    .line 544
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 545
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2f

    :cond_2e
    move-object v1, p1

    .line 544
    :goto_2f
    invoke-static {v0, v1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 550
    :cond_34
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_55

    .line 551
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v3, v0

    :goto_42
    if-ge v2, v3, :cond_54

    aget-object v4, v0, v2

    .line 553
    .local v4, "bound":Ljava/lang/reflect/Type;
    invoke-static {v4, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 554
    invoke-static {v4, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 551
    .end local v4    # "bound":Ljava/lang/reflect/Type;
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 558
    :cond_54
    return-object v1

    .line 562
    :cond_55
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_74

    .line 563
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v3, v0

    :goto_61
    if-ge v2, v3, :cond_73

    aget-object v4, v0, v2

    .line 565
    .restart local v4    # "bound":Ljava/lang/reflect/Type;
    invoke-static {v4, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 566
    invoke-static {v4, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 563
    .end local v4    # "bound":Ljava/lang/reflect/Type;
    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 570
    :cond_73
    return-object v1

    .line 574
    :cond_74
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found an unhandled type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist isArrayType(Ljava/lang/reflect/Type;)Z
    .registers 2
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 1070
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_14

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_12

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method private static blacklist isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z
    .registers 9
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 114
    .local p1, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_f

    .line 116
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :cond_e
    :goto_e
    return v0

    .line 121
    :cond_f
    if-nez p1, :cond_12

    .line 122
    return v1

    .line 126
    :cond_12
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 127
    return v0

    .line 130
    :cond_19
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_25

    .line 132
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 135
    :cond_25
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_35

    .line 137
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 141
    :cond_35
    instance-of v2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_51

    .line 144
    move-object v2, p0

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_42
    if-ge v4, v3, :cond_50

    aget-object v5, v2, v4

    .line 145
    .local v5, "bound":Ljava/lang/reflect/Type;
    invoke-static {v5, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 146
    return v0

    .line 144
    .end local v5    # "bound":Ljava/lang/reflect/Type;
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 150
    :cond_50
    return v1

    .line 155
    :cond_51
    instance-of v2, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_79

    .line 156
    const-class v2, Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    .line 157
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_75

    move-object v2, p0

    check-cast v2, Ljava/lang/reflect/GenericArrayType;

    .line 158
    invoke-interface {v2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 159
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 158
    invoke-static {v2, v3}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_75

    goto :goto_77

    :cond_75
    move v0, v1

    goto :goto_78

    :cond_77
    :goto_77
    nop

    .line 156
    :goto_78
    return v0

    .line 164
    :cond_79
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_7e

    .line 165
    return v1

    .line 168
    :cond_7e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found an unhandled type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;Ljava/util/Map;)Z
    .registers 11
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "toGenericArrayType"    # Ljava/lang/reflect/GenericArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/GenericArrayType;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .line 250
    .local p2, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 251
    return v0

    .line 256
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 257
    return v1

    .line 261
    :cond_8
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 262
    return v0

    .line 265
    :cond_f
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 267
    .local v2, "toComponentType":Ljava/lang/reflect/Type;
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_2d

    .line 268
    move-object v3, p0

    check-cast v3, Ljava/lang/Class;

    .line 271
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 272
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v2, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    .line 271
    :goto_2c
    return v0

    .line 275
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2d
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_3d

    .line 277
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, v2, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v0

    return v0

    .line 281
    :cond_3d
    instance-of v3, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_59

    .line 283
    move-object v3, p0

    check-cast v3, Ljava/lang/reflect/WildcardType;

    invoke-static {v3}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_4a
    if-ge v5, v4, :cond_58

    aget-object v6, v3, v5

    .line 284
    .local v6, "bound":Ljava/lang/reflect/Type;
    invoke-static {v6, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 285
    return v0

    .line 283
    .end local v6    # "bound":Ljava/lang/reflect/Type;
    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 289
    :cond_58
    return v1

    .line 292
    :cond_59
    instance-of v3, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_75

    .line 295
    move-object v3, p0

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    invoke-static {v3}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_66
    if-ge v5, v4, :cond_74

    aget-object v6, v3, v5

    .line 296
    .restart local v6    # "bound":Ljava/lang/reflect/Type;
    invoke-static {v6, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 297
    return v0

    .line 295
    .end local v6    # "bound":Ljava/lang/reflect/Type;
    :cond_71
    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    .line 301
    :cond_74
    return v1

    .line 304
    :cond_75
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_7a

    .line 308
    return v1

    .line 311
    :cond_7a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found an unhandled type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .registers 13
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "toParameterizedType"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .line 182
    .local p2, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 183
    return v0

    .line 188
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 189
    return v1

    .line 193
    :cond_8
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 194
    return v0

    .line 198
    :cond_f
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v2

    .line 201
    .local v2, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 204
    .local v3, "fromTypeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    if-nez v3, :cond_1b

    .line 205
    return v1

    .line 211
    :cond_1b
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 212
    return v0

    .line 216
    :cond_22
    invoke-static {p1, v2, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 220
    .local v4, "toTypeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 221
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Type;

    .line 222
    .local v7, "toTypeArg":Ljava/lang/reflect/Type;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Type;

    .line 227
    .local v8, "fromTypeArg":Ljava/lang/reflect/Type;
    if-eqz v8, :cond_5d

    .line 228
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5d

    instance-of v9, v7, Ljava/lang/reflect/WildcardType;

    if-eqz v9, :cond_5c

    .line 229
    invoke-static {v8, v7, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_5d

    .line 231
    :cond_5c
    return v1

    .line 233
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    .end local v7    # "toTypeArg":Ljava/lang/reflect/Type;
    .end local v8    # "fromTypeArg":Ljava/lang/reflect/Type;
    :cond_5d
    goto :goto_2e

    .line 235
    :cond_5e
    return v0
.end method

.method public static blacklist isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .registers 3
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "toType"    # Ljava/lang/reflect/Type;

    .line 66
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .registers 6
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "toType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .line 80
    .local p2, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    if-eqz p1, :cond_50

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_7

    goto :goto_50

    .line 84
    :cond_7
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_13

    .line 85
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, v0, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v0

    return v0

    .line 88
    :cond_13
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_1f

    .line 89
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p0, v0, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;Ljava/util/Map;)Z

    move-result v0

    return v0

    .line 92
    :cond_1f
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2b

    .line 93
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, v0, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/WildcardType;Ljava/util/Map;)Z

    move-result v0

    return v0

    .line 97
    :cond_2b
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_37

    .line 98
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, v0, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z

    move-result v0

    return v0

    .line 102
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found an unhandled type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_50
    :goto_50
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z
    .registers 10
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .line 415
    .local p1, "toTypeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .local p2, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 416
    return v0

    .line 421
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 422
    return v1

    .line 426
    :cond_8
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 427
    return v0

    .line 430
    :cond_f
    instance-of v2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_2a

    .line 434
    move-object v2, p0

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    invoke-static {v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 436
    .local v2, "bounds":[Ljava/lang/reflect/Type;
    array-length v3, v2

    move v4, v1

    :goto_1c
    if-ge v4, v3, :cond_2a

    aget-object v5, v2, v4

    .line 437
    .local v5, "bound":Ljava/lang/reflect/Type;
    invoke-static {v5, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 438
    return v0

    .line 436
    .end local v5    # "bound":Ljava/lang/reflect/Type;
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 443
    .end local v2    # "bounds":[Ljava/lang/reflect/Type;
    :cond_2a
    instance-of v0, p0, Ljava/lang/Class;

    if-nez v0, :cond_54

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_54

    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_54

    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3b

    goto :goto_54

    .line 448
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found an unhandled type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_54
    :goto_54
    return v1
.end method

.method private static blacklist isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/WildcardType;Ljava/util/Map;)Z
    .registers 20
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "toWildcardType"    # Ljava/lang/reflect/WildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/WildcardType;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .line 326
    .local p2, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    if-nez v0, :cond_a

    .line 327
    return v3

    .line 332
    :cond_a
    const/4 v4, 0x0

    if-nez v1, :cond_e

    .line 333
    return v4

    .line 337
    :cond_e
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 338
    return v3

    .line 341
    :cond_15
    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 342
    .local v5, "toUpperBounds":[Ljava/lang/reflect/Type;
    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v6

    .line 344
    .local v6, "toLowerBounds":[Ljava/lang/reflect/Type;
    instance-of v7, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v7, :cond_67

    .line 345
    move-object v7, v0

    check-cast v7, Ljava/lang/reflect/WildcardType;

    .line 346
    .local v7, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-static {v7}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 347
    .local v8, "upperBounds":[Ljava/lang/reflect/Type;
    invoke-static {v7}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v9

    .line 349
    .local v9, "lowerBounds":[Ljava/lang/reflect/Type;
    array-length v10, v5

    move v11, v4

    :goto_2e
    if-ge v11, v10, :cond_49

    aget-object v12, v5, v11

    .line 352
    .local v12, "toBound":Ljava/lang/reflect/Type;
    invoke-static {v12, v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 357
    array-length v13, v8

    move v14, v4

    :goto_38
    if-ge v14, v13, :cond_46

    aget-object v15, v8, v14

    .line 358
    .local v15, "bound":Ljava/lang/reflect/Type;
    invoke-static {v15, v12, v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v16

    if-nez v16, :cond_43

    .line 359
    return v4

    .line 357
    .end local v15    # "bound":Ljava/lang/reflect/Type;
    :cond_43
    add-int/lit8 v14, v14, 0x1

    goto :goto_38

    .line 349
    .end local v12    # "toBound":Ljava/lang/reflect/Type;
    :cond_46
    add-int/lit8 v11, v11, 0x1

    goto :goto_2e

    .line 364
    :cond_49
    array-length v10, v6

    move v11, v4

    :goto_4b
    if-ge v11, v10, :cond_66

    aget-object v12, v6, v11

    .line 367
    .restart local v12    # "toBound":Ljava/lang/reflect/Type;
    invoke-static {v12, v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 372
    array-length v13, v9

    move v14, v4

    :goto_55
    if-ge v14, v13, :cond_63

    aget-object v15, v9, v14

    .line 373
    .restart local v15    # "bound":Ljava/lang/reflect/Type;
    invoke-static {v12, v15, v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v16

    if-nez v16, :cond_60

    .line 374
    return v4

    .line 372
    .end local v15    # "bound":Ljava/lang/reflect/Type;
    :cond_60
    add-int/lit8 v14, v14, 0x1

    goto :goto_55

    .line 364
    .end local v12    # "toBound":Ljava/lang/reflect/Type;
    :cond_63
    add-int/lit8 v11, v11, 0x1

    goto :goto_4b

    .line 379
    :cond_66
    return v3

    .line 382
    .end local v7    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v8    # "upperBounds":[Ljava/lang/reflect/Type;
    .end local v9    # "lowerBounds":[Ljava/lang/reflect/Type;
    :cond_67
    array-length v7, v5

    move v8, v4

    :goto_69
    if-ge v8, v7, :cond_7b

    aget-object v9, v5, v8

    .line 385
    .local v9, "toBound":Ljava/lang/reflect/Type;
    invoke-static {v9, v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-static {v0, v10, v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v10

    if-nez v10, :cond_78

    .line 387
    return v4

    .line 382
    .end local v9    # "toBound":Ljava/lang/reflect/Type;
    :cond_78
    add-int/lit8 v8, v8, 0x1

    goto :goto_69

    .line 391
    :cond_7b
    array-length v7, v6

    move v8, v4

    :goto_7d
    if-ge v8, v7, :cond_8f

    aget-object v9, v6, v8

    .line 394
    .restart local v9    # "toBound":Ljava/lang/reflect/Type;
    invoke-static {v9, v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-static {v10, v0, v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v10

    if-nez v10, :cond_8c

    .line 396
    return v4

    .line 391
    .end local v9    # "toBound":Ljava/lang/reflect/Type;
    :cond_8c
    add-int/lit8 v8, v8, 0x1

    goto :goto_7d

    .line 400
    :cond_8f
    return v3
.end method

.method public static blacklist isInstance(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 834
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 835
    return v0

    .line 838
    :cond_4
    if-nez p0, :cond_15

    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_13

    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1e

    :cond_13
    const/4 v0, 0x1

    goto :goto_1e

    .line 839
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v0

    .line 838
    :cond_1e
    :goto_1e
    return v0
.end method

.method private static blacklist mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V
    .registers 12
    .param p1, "parameterizedType"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .line 741
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 743
    .local v0, "ownerType":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_e

    .line 745
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, v1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V

    .line 752
    :cond_e
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 756
    .local v1, "typeArgs":[Ljava/lang/reflect/Type;
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    .line 759
    .local v2, "typeVars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    nop

    .line 760
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 759
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 762
    .local v3, "typeVarList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    array-length v5, v1

    if-ge v4, v5, :cond_46

    .line 763
    aget-object v5, v2, v4

    .line 764
    .local v5, "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    aget-object v6, v1, v4

    .line 767
    .local v6, "typeArg":Ljava/lang/reflect/Type;
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 770
    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 772
    move-object v7, v6

    check-cast v7, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Type;

    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    .end local v5    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v6    # "typeArg":Ljava/lang/reflect/Type;
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 775
    .end local v4    # "i":I
    :cond_46
    return-void
.end method

.method public static blacklist normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .registers 11
    .param p0, "bounds"    # [Ljava/lang/reflect/Type;

    .line 865
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    .line 866
    return-object p0

    .line 869
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 871
    .local v0, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Type;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_2f

    aget-object v4, p0, v3

    .line 872
    .local v4, "type1":Ljava/lang/reflect/Type;
    const/4 v5, 0x0

    .line 874
    .local v5, "subtypeFound":Z
    array-length v6, p0

    move v7, v2

    :goto_15
    if-ge v7, v6, :cond_27

    aget-object v8, p0, v7

    .line 875
    .local v8, "type2":Ljava/lang/reflect/Type;
    if-eq v4, v8, :cond_24

    const/4 v9, 0x0

    invoke-static {v8, v4, v9}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 876
    const/4 v5, 0x1

    .line 877
    goto :goto_27

    .line 874
    .end local v8    # "type2":Ljava/lang/reflect/Type;
    :cond_24
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 881
    :cond_27
    :goto_27
    if-nez v5, :cond_2c

    .line 882
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 871
    .end local v4    # "type1":Ljava/lang/reflect/Type;
    .end local v5    # "subtypeFound":Z
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 886
    :cond_2f
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Type;

    return-object v1
.end method

.method private static blacklist substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .registers 6
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 460
    .local p1, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    .line 461
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 463
    .local v0, "replacementType":Ljava/lang/reflect/Type;
    if-eqz v0, :cond_f

    .line 468
    return-object v0

    .line 464
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing assignment type for type variable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 471
    .end local v0    # "replacementType":Ljava/lang/reflect/Type;
    :cond_28
    return-object p0
.end method

.method public static blacklist typesSatisfyVariables(Ljava/util/Map;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .line 951
    .local p0, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 952
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    .line 953
    .local v2, "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    .line 955
    .local v3, "type":Ljava/lang/reflect/Type;
    invoke-static {v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_27
    if-ge v7, v5, :cond_39

    aget-object v8, v4, v7

    .line 956
    .local v8, "bound":Ljava/lang/reflect/Type;
    invoke-static {v8, p0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v3, v9, p0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_36

    .line 958
    return v6

    .line 955
    .end local v8    # "bound":Ljava/lang/reflect/Type;
    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 961
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    .end local v2    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v3    # "type":Ljava/lang/reflect/Type;
    :cond_39
    goto :goto_8

    .line 963
    :cond_3a
    const/4 v0, 0x1

    return v0
.end method
