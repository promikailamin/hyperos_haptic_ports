.class public Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/miui/commons/lang3/builder/Builder<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lorg/apache/miui/commons/lang3/tuple/Pair<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist isEquals:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 93
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 225
    return-void
.end method

.method static blacklist getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;
    .registers 5
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/miui/commons/lang3/tuple/Pair<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v0, p0}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 137
    .local v0, "left":Lorg/apache/miui/commons/lang3/builder/IDKey;
    new-instance v1, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v1, p1}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 138
    .local v1, "right":Lorg/apache/miui/commons/lang3/builder/IDKey;
    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v2

    return-object v2
.end method

.method static blacklist getRegistry()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/miui/commons/lang3/tuple/Pair<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation

    .line 122
    sget-object v0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static blacklist isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 155
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 156
    .local v0, "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;>;"
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v1

    .line 157
    .local v1, "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    invoke-virtual {v1}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-virtual {v1}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-static {v2, v3}, Lorg/apache/miui/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v2

    .line 159
    .local v2, "swappedPair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    if-eqz v0, :cond_28

    .line 160
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    :cond_26
    const/4 v3, 0x1

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    .line 159
    :goto_29
    return v3
.end method

.method private static blacklist reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    .registers 12
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p3, "builder"    # Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .param p4, "useTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 393
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 394
    return-void

    .line 398
    :cond_7
    :try_start_7
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->register(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 399
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 400
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 401
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v2, v0

    if-ge v1, v2, :cond_61

    iget-boolean v2, p3, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v2, :cond_61

    .line 402
    aget-object v2, v0, v1

    .line 403
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, v3}, Lorg/apache/miui/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 404
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5e

    if-nez p4, :cond_3f

    .line 405
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 406
    :cond_3f
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_66

    if-nez v3, :cond_5e

    .line 408
    :try_start_49
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    :try_end_54
    .catch Ljava/lang/IllegalAccessException; {:try_start_49 .. :try_end_54} :catch_55
    .catchall {:try_start_49 .. :try_end_54} :catchall_66

    .line 413
    goto :goto_5e

    .line 409
    :catch_55
    move-exception v3

    .line 412
    .local v3, "e":Ljava/lang/IllegalAccessException;
    :try_start_56
    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    .end local p0    # "lhs":Ljava/lang/Object;
    .end local p1    # "rhs":Ljava/lang/Object;
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p3    # "builder":Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .end local p4    # "useTransients":Z
    .end local p5    # "excludeFields":[Ljava/lang/String;
    throw v4
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_66

    .line 401
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .restart local p0    # "lhs":Ljava/lang/Object;
    .restart local p1    # "rhs":Ljava/lang/Object;
    .restart local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p3    # "builder":Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .restart local p4    # "useTransients":Z
    .restart local p5    # "excludeFields":[Ljava/lang/String;
    :cond_5e
    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 417
    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    .end local v1    # "i":I
    :cond_61
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 418
    nop

    .line 419
    return-void

    .line 417
    :catchall_66
    move-exception v0

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 418
    throw v0
.end method

.method public static blacklist reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 4
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 249
    .local p2, "excludeFields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .registers 5
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z

    .line 296
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs blacklist reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .registers 21
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z
    .param p4, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 327
    .local p3, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    if-ne v11, v12, :cond_8

    .line 328
    const/4 v0, 0x1

    return v0

    .line 330
    :cond_8
    const/4 v13, 0x0

    if-eqz v11, :cond_7a

    if-nez v12, :cond_11

    move-object/from16 v1, p3

    goto/16 :goto_7c

    .line 337
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 338
    .local v14, "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 340
    .local v15, "rhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v14, v12}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 341
    move-object v0, v14

    .line 342
    .local v0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v15, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 344
    move-object v0, v15

    move-object v7, v0

    goto :goto_3c

    .line 342
    :cond_29
    move-object v7, v0

    goto :goto_3c

    .line 346
    .end local v0    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2b
    invoke-virtual {v15, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 347
    move-object v0, v15

    .line 348
    .restart local v0    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v14, v12}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 350
    move-object v0, v14

    move-object v7, v0

    goto :goto_3c

    .line 348
    :cond_3b
    move-object v7, v0

    .line 356
    .end local v0    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v7, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3c
    new-instance v4, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v4}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;-><init>()V

    .line 358
    .local v4, "equalsBuilder":Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move/from16 v5, p2

    move-object/from16 v6, p4

    :try_start_4a
    invoke-static/range {v1 .. v6}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V

    .line 359
    :goto_4d
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_51} :catch_73

    if-eqz v0, :cond_6b

    move-object/from16 v1, p3

    if-eq v7, v1, :cond_6d

    .line 360
    :try_start_57
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v7, v0

    .line 361
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v8, v4

    move/from16 v9, p2

    move-object/from16 v10, p4

    invoke-static/range {v5 .. v10}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_68} :catch_69

    goto :goto_4d

    .line 363
    :catch_69
    move-exception v0

    goto :goto_76

    .line 359
    :cond_6b
    move-object/from16 v1, p3

    .line 370
    :cond_6d
    nop

    .line 371
    invoke-virtual {v4}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0

    .line 363
    :catch_73
    move-exception v0

    move-object/from16 v1, p3

    .line 369
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_76
    return v13

    .line 354
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "equalsBuilder":Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .end local v7    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_77
    move-object/from16 v1, p3

    return v13

    .line 330
    .end local v14    # "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "rhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7a
    move-object/from16 v1, p3

    .line 331
    :goto_7c
    return v13
.end method

.method public static varargs blacklist reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .registers 5
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # [Ljava/lang/String;

    .line 272
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static blacklist register(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 173
    const-class v0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    monitor-enter v0

    .line 174
    :try_start_3
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_13

    .line 175
    sget-object v1, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 177
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_20

    .line 179
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 180
    .local v0, "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;>;"
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v1

    .line 181
    .local v1, "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    return-void

    .line 177
    .end local v0    # "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;>;"
    .end local v1    # "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method static blacklist unregister(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 197
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 198
    .local v0, "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;>;"
    if-eqz v0, :cond_27

    .line 199
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v1

    .line 200
    .local v1, "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 201
    const-class v2, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    monitor-enter v2

    .line 203
    :try_start_10
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v3

    move-object v0, v3

    .line 204
    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 205
    sget-object v3, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 207
    :cond_22
    monitor-exit v2

    goto :goto_27

    :catchall_24
    move-exception v3

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_24

    throw v3

    .line 209
    .end local v1    # "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    :cond_27
    :goto_27
    return-void
.end method


# virtual methods
.method public blacklist append(BB)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 4
    .param p1, "lhs"    # B
    .param p2, "rhs"    # B

    .line 564
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 565
    return-object p0

    .line 567
    :cond_5
    if-ne p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 568
    return-object p0
.end method

.method public blacklist append(CC)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 4
    .param p1, "lhs"    # C
    .param p2, "rhs"    # C

    .line 549
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 550
    return-object p0

    .line 552
    :cond_5
    if-ne p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 553
    return-object p0
.end method

.method public blacklist append(DD)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 9
    .param p1, "lhs"    # D
    .param p3, "rhs"    # D

    .line 585
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 586
    return-object p0

    .line 588
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist append(FF)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 5
    .param p1, "lhs"    # F
    .param p2, "rhs"    # F

    .line 605
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 606
    return-object p0

    .line 608
    :cond_5
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist append(II)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 4
    .param p1, "lhs"    # I
    .param p2, "rhs"    # I

    .line 519
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 520
    return-object p0

    .line 522
    :cond_5
    if-ne p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 523
    return-object p0
.end method

.method public blacklist append(JJ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 6
    .param p1, "lhs"    # J
    .param p3, "rhs"    # J

    .line 504
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 505
    return-object p0

    .line 507
    :cond_5
    cmp-long v0, p1, p3

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 508
    return-object p0
.end method

.method public blacklist append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 7
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .line 449
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 450
    return-object p0

    .line 452
    :cond_5
    if-ne p1, p2, :cond_8

    .line 453
    return-object p0

    .line 455
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_ab

    if-nez p2, :cond_f

    goto/16 :goto_ab

    .line 459
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 460
    .local v1, "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_21

    .line 462
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto/16 :goto_aa

    .line 463
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_30

    .line 465
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto/16 :goto_aa

    .line 469
    :cond_30
    instance-of v0, p1, [J

    if-eqz v0, :cond_3f

    .line 470
    move-object v0, p1

    check-cast v0, [J

    move-object v2, p2

    check-cast v2, [J

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([J[J)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto/16 :goto_aa

    .line 471
    :cond_3f
    instance-of v0, p1, [I

    if-eqz v0, :cond_4d

    .line 472
    move-object v0, p1

    check-cast v0, [I

    move-object v2, p2

    check-cast v2, [I

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([I[I)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_aa

    .line 473
    :cond_4d
    instance-of v0, p1, [S

    if-eqz v0, :cond_5b

    .line 474
    move-object v0, p1

    check-cast v0, [S

    move-object v2, p2

    check-cast v2, [S

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([S[S)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_aa

    .line 475
    :cond_5b
    instance-of v0, p1, [C

    if-eqz v0, :cond_69

    .line 476
    move-object v0, p1

    check-cast v0, [C

    move-object v2, p2

    check-cast v2, [C

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([C[C)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_aa

    .line 477
    :cond_69
    instance-of v0, p1, [B

    if-eqz v0, :cond_77

    .line 478
    move-object v0, p1

    check-cast v0, [B

    move-object v2, p2

    check-cast v2, [B

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([B[B)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_aa

    .line 479
    :cond_77
    instance-of v0, p1, [D

    if-eqz v0, :cond_85

    .line 480
    move-object v0, p1

    check-cast v0, [D

    move-object v2, p2

    check-cast v2, [D

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([D[D)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_aa

    .line 481
    :cond_85
    instance-of v0, p1, [F

    if-eqz v0, :cond_93

    .line 482
    move-object v0, p1

    check-cast v0, [F

    move-object v2, p2

    check-cast v2, [F

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([F[F)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_aa

    .line 483
    :cond_93
    instance-of v0, p1, [Z

    if-eqz v0, :cond_a1

    .line 484
    move-object v0, p1

    check-cast v0, [Z

    move-object v2, p2

    check-cast v2, [Z

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([Z[Z)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_aa

    .line 487
    :cond_a1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 489
    :goto_aa
    return-object p0

    .line 456
    .end local v1    # "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_ab
    :goto_ab
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 457
    return-object p0
.end method

.method public blacklist append(SS)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 4
    .param p1, "lhs"    # S
    .param p2, "rhs"    # S

    .line 534
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 535
    return-object p0

    .line 537
    :cond_5
    if-ne p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 538
    return-object p0
.end method

.method public blacklist append(ZZ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 4
    .param p1, "lhs"    # Z
    .param p2, "rhs"    # Z

    .line 619
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 620
    return-object p0

    .line 622
    :cond_5
    if-ne p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 623
    return-object p0
.end method

.method public blacklist append([B[B)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 6
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .line 792
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 793
    return-object p0

    .line 795
    :cond_5
    if-ne p1, p2, :cond_8

    .line 796
    return-object p0

    .line 798
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 802
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 803
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 804
    return-object p0

    .line 806
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 807
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(BB)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 806
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 809
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 799
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 800
    return-object p0
.end method

.method public blacklist append([C[C)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 6
    .param p1, "lhs"    # [C
    .param p2, "rhs"    # [C

    .line 761
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 762
    return-object p0

    .line 764
    :cond_5
    if-ne p1, p2, :cond_8

    .line 765
    return-object p0

    .line 767
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 771
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 772
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 773
    return-object p0

    .line 775
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 776
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(CC)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 778
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 768
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 769
    return-object p0
.end method

.method public blacklist append([D[D)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 8
    .param p1, "lhs"    # [D
    .param p2, "rhs"    # [D

    .line 823
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 824
    return-object p0

    .line 826
    :cond_5
    if-ne p1, p2, :cond_8

    .line 827
    return-object p0

    .line 829
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 833
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 834
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 835
    return-object p0

    .line 837
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 838
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(DD)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 840
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 830
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 831
    return-object p0
.end method

.method public blacklist append([F[F)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 6
    .param p1, "lhs"    # [F
    .param p2, "rhs"    # [F

    .line 854
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 855
    return-object p0

    .line 857
    :cond_5
    if-ne p1, p2, :cond_8

    .line 858
    return-object p0

    .line 860
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 864
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 865
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 866
    return-object p0

    .line 868
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 869
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(FF)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 868
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 871
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 861
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 862
    return-object p0
.end method

.method public blacklist append([I[I)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 6
    .param p1, "lhs"    # [I
    .param p2, "rhs"    # [I

    .line 699
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 700
    return-object p0

    .line 702
    :cond_5
    if-ne p1, p2, :cond_8

    .line 703
    return-object p0

    .line 705
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 709
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 710
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 711
    return-object p0

    .line 713
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 714
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 716
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 706
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 707
    return-object p0
.end method

.method public blacklist append([J[J)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 8
    .param p1, "lhs"    # [J
    .param p2, "rhs"    # [J

    .line 668
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 669
    return-object p0

    .line 671
    :cond_5
    if-ne p1, p2, :cond_8

    .line 672
    return-object p0

    .line 674
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 678
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 679
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 680
    return-object p0

    .line 682
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 683
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 685
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 675
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 676
    return-object p0
.end method

.method public blacklist append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 6
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;

    .line 637
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 638
    return-object p0

    .line 640
    :cond_5
    if-ne p1, p2, :cond_8

    .line 641
    return-object p0

    .line 643
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 647
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 648
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 649
    return-object p0

    .line 651
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 652
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 654
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 644
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 645
    return-object p0
.end method

.method public blacklist append([S[S)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 6
    .param p1, "lhs"    # [S
    .param p2, "rhs"    # [S

    .line 730
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 731
    return-object p0

    .line 733
    :cond_5
    if-ne p1, p2, :cond_8

    .line 734
    return-object p0

    .line 736
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 740
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 741
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 742
    return-object p0

    .line 744
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 745
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(SS)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 747
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 737
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 738
    return-object p0
.end method

.method public blacklist append([Z[Z)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 6
    .param p1, "lhs"    # [Z
    .param p2, "rhs"    # [Z

    .line 885
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 886
    return-object p0

    .line 888
    :cond_5
    if-ne p1, p2, :cond_8

    .line 889
    return-object p0

    .line 891
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_e

    goto :goto_29

    .line 895
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 896
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 897
    return-object p0

    .line 899
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    if-ge v0, v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_28

    .line 900
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(ZZ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 899
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 902
    .end local v0    # "i":I
    :cond_28
    return-object p0

    .line 892
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 893
    return-object p0
.end method

.method public blacklist appendSuper(Z)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 3
    .param p1, "superEquals"    # Z

    .line 431
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    .line 432
    return-object p0

    .line 434
    :cond_5
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 435
    return-object p0
.end method

.method public blacklist build()Ljava/lang/Boolean;
    .registers 2

    .line 925
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist build()Ljava/lang/Object;
    .registers 2

    .line 84
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->build()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isEquals()Z
    .registers 2

    .line 912
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 943
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 944
    return-void
.end method

.method protected blacklist setEquals(Z)V
    .registers 2
    .param p1, "isEquals"    # Z

    .line 935
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 936
    return-void
.end method
