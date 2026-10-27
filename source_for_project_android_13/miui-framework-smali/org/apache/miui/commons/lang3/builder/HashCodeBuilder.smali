.class public Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
.super Ljava/lang/Object;
.source "HashCodeBuilder.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/miui/commons/lang3/builder/Builder<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist iConstant:I

.field private blacklist iTotal:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 518
    const/16 v0, 0x25

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    .line 519
    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 520
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 5
    .param p1, "initialNonZeroOddNumber"    # I
    .param p2, "multiplierNonZeroOddNumber"    # I

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 540
    if-eqz p1, :cond_2f

    .line 543
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_27

    .line 546
    if-eqz p2, :cond_1f

    .line 549
    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_17

    .line 552
    iput p2, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    .line 553
    iput p1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 554
    return-void

    .line 550
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires an odd multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires a non zero multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires an odd initial value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires a non zero initial value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getRegistry()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    .line 137
    sget-object v0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static blacklist isRegistered(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 152
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 153
    .local v0, "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    if-eqz v0, :cond_13

    new-instance v1, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private static blacklist reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V
    .registers 11
    .param p0, "object"    # Ljava/lang/Object;
    .param p2, "builder"    # Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .param p3, "useTransients"    # Z
    .param p4, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 174
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 175
    return-void

    .line 178
    :cond_7
    :try_start_7
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->register(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 180
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 181
    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_59

    aget-object v3, v0, v2

    .line 182
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, v4}, Lorg/apache/miui/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 183
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_56

    if-nez p3, :cond_3b

    .line 184
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_56

    .line 185
    :cond_3b
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_5e

    if-nez v4, :cond_56

    .line 187
    :try_start_45
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 188
    .local v4, "fieldValue":Ljava/lang/Object;
    invoke-virtual {p2, v4}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    :try_end_4c
    .catch Ljava/lang/IllegalAccessException; {:try_start_45 .. :try_end_4c} :catch_4d
    .catchall {:try_start_45 .. :try_end_4c} :catchall_5e

    .line 193
    .end local v4    # "fieldValue":Ljava/lang/Object;
    goto :goto_56

    .line 189
    :catch_4d
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :try_start_4e
    new-instance v2, Ljava/lang/InternalError;

    const-string v4, "Unexpected IllegalAccessException"

    invoke-direct {v2, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    .end local p0    # "object":Ljava/lang/Object;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "builder":Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .end local p3    # "useTransients":Z
    .end local p4    # "excludeFields":[Ljava/lang/String;
    throw v2
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_5e

    .line 181
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .restart local p0    # "object":Ljava/lang/Object;
    .restart local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "builder":Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .restart local p3    # "useTransients":Z
    .restart local p4    # "excludeFields":[Ljava/lang/String;
    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 197
    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    :cond_59
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    .line 198
    nop

    .line 199
    return-void

    .line 197
    :catchall_5e
    move-exception v0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    .line 198
    throw v0
.end method

.method public static blacklist reflectionHashCode(IILjava/lang/Object;)I
    .registers 10
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 239
    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist reflectionHashCode(IILjava/lang/Object;Z)I
    .registers 11
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "testTransients"    # Z

    .line 283
    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs blacklist reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .registers 9
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p3, "testTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IITT;Z",
            "Ljava/lang/Class<",
            "-TT;>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 336
    .local p2, "object":Ljava/lang/Object;, "TT;"
    .local p4, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    if-eqz p2, :cond_23

    .line 339
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;-><init>(II)V

    .line 340
    .local v0, "builder":Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 341
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2, v1, v0, p3, p5}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    .line 342
    :goto_e
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1e

    if-eq v1, p4, :cond_1e

    .line 343
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 344
    invoke-static {p2, v1, v0, p3, p5}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    goto :goto_e

    .line 346
    :cond_1e
    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v2

    return v2

    .line 337
    .end local v0    # "builder":Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The object to build a hash code for must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist reflectionHashCode(Ljava/lang/Object;Ljava/util/Collection;)I
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 418
    .local p1, "excludeFields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist reflectionHashCode(Ljava/lang/Object;Z)I
    .registers 9
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "testTransients"    # Z

    .line 382
    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/16 v1, 0x11

    const/16 v2, 0x25

    const/4 v5, 0x0

    move-object v3, p0

    move v4, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs blacklist reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I
    .registers 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFields"    # [Ljava/lang/String;

    .line 456
    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static blacklist register(Ljava/lang/Object;)V
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 468
    const-class v0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    monitor-enter v0

    .line 469
    :try_start_3
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_13

    .line 470
    sget-object v1, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 472
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_21

    .line 473
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 474
    return-void

    .line 472
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method static blacklist unregister(Ljava/lang/Object;)V
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 489
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 490
    .local v0, "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    if-eqz v0, :cond_28

    .line 491
    new-instance v1, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 492
    const-class v1, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    monitor-enter v1

    .line 494
    :try_start_11
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v2

    move-object v0, v2

    .line 495
    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 496
    sget-object v2, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 498
    :cond_23
    monitor-exit v1

    goto :goto_28

    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_25

    throw v2

    .line 500
    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method public blacklist append(B)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # B

    .line 614
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 615
    return-object p0
.end method

.method public blacklist append(C)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # C

    .line 650
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 651
    return-object p0
.end method

.method public blacklist append(D)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 5
    .param p1, "value"    # D

    .line 684
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(J)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist append(F)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # F

    .line 717
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 718
    return-object p0
.end method

.method public blacklist append(I)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # I

    .line 751
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 752
    return-object p0
.end method

.method public blacklist append(J)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 6
    .param p1, "value"    # J

    .line 789
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    shr-long v1, p1, v1

    xor-long/2addr v1, p1

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 790
    return-object p0
.end method

.method public blacklist append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 823
    if-nez p1, :cond_b

    .line 824
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto/16 :goto_80

    .line 827
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 830
    instance-of v0, p1, [J

    if-eqz v0, :cond_20

    .line 831
    move-object v0, p1

    check-cast v0, [J

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([J)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    .line 832
    :cond_20
    instance-of v0, p1, [I

    if-eqz v0, :cond_2b

    .line 833
    move-object v0, p1

    check-cast v0, [I

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([I)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    .line 834
    :cond_2b
    instance-of v0, p1, [S

    if-eqz v0, :cond_36

    .line 835
    move-object v0, p1

    check-cast v0, [S

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([S)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    .line 836
    :cond_36
    instance-of v0, p1, [C

    if-eqz v0, :cond_41

    .line 837
    move-object v0, p1

    check-cast v0, [C

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([C)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    .line 838
    :cond_41
    instance-of v0, p1, [B

    if-eqz v0, :cond_4c

    .line 839
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([B)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    .line 840
    :cond_4c
    instance-of v0, p1, [D

    if-eqz v0, :cond_57

    .line 841
    move-object v0, p1

    check-cast v0, [D

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([D)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    .line 842
    :cond_57
    instance-of v0, p1, [F

    if-eqz v0, :cond_62

    .line 843
    move-object v0, p1

    check-cast v0, [F

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([F)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    .line 844
    :cond_62
    instance-of v0, p1, [Z

    if-eqz v0, :cond_6d

    .line 845
    move-object v0, p1

    check-cast v0, [Z

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([Z)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    .line 848
    :cond_6d
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_80

    .line 851
    :cond_74
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 854
    :goto_80
    return-object p0
.end method

.method public blacklist append(S)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # S

    .line 887
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 888
    return-object p0
.end method

.method public blacklist append(Z)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 4
    .param p1, "value"    # Z

    .line 578
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    xor-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 579
    return-object p0
.end method

.method public blacklist append([B)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 5
    .param p1, "array"    # [B

    .line 630
    if-nez p1, :cond_a

    .line 631
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    .line 633
    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-byte v2, p1, v1

    .line 634
    .local v2, "element":B
    invoke-virtual {p0, v2}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(B)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 633
    .end local v2    # "element":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 637
    :cond_16
    :goto_16
    return-object p0
.end method

.method public blacklist append([C)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 5
    .param p1, "array"    # [C

    .line 664
    if-nez p1, :cond_a

    .line 665
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    .line 667
    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-char v2, p1, v1

    .line 668
    .local v2, "element":C
    invoke-virtual {p0, v2}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(C)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 667
    .end local v2    # "element":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 671
    :cond_16
    :goto_16
    return-object p0
.end method

.method public blacklist append([D)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 6
    .param p1, "array"    # [D

    .line 697
    if-nez p1, :cond_a

    .line 698
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    .line 700
    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-wide v2, p1, v1

    .line 701
    .local v2, "element":D
    invoke-virtual {p0, v2, v3}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(D)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 700
    .end local v2    # "element":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 704
    :cond_16
    :goto_16
    return-object p0
.end method

.method public blacklist append([F)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 5
    .param p1, "array"    # [F

    .line 731
    if-nez p1, :cond_a

    .line 732
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    .line 734
    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget v2, p1, v1

    .line 735
    .local v2, "element":F
    invoke-virtual {p0, v2}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(F)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 734
    .end local v2    # "element":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 738
    :cond_16
    :goto_16
    return-object p0
.end method

.method public blacklist append([I)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 5
    .param p1, "array"    # [I

    .line 765
    if-nez p1, :cond_a

    .line 766
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    .line 768
    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget v2, p1, v1

    .line 769
    .local v2, "element":I
    invoke-virtual {p0, v2}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(I)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 768
    .end local v2    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 772
    :cond_16
    :goto_16
    return-object p0
.end method

.method public blacklist append([J)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 6
    .param p1, "array"    # [J

    .line 803
    if-nez p1, :cond_a

    .line 804
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    .line 806
    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-wide v2, p1, v1

    .line 807
    .local v2, "element":J
    invoke-virtual {p0, v2, v3}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(J)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 806
    .end local v2    # "element":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 810
    :cond_16
    :goto_16
    return-object p0
.end method

.method public blacklist append([Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 5
    .param p1, "array"    # [Ljava/lang/Object;

    .line 867
    if-nez p1, :cond_a

    .line 868
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    .line 870
    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-object v2, p1, v1

    .line 871
    .local v2, "element":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 870
    .end local v2    # "element":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 874
    :cond_16
    :goto_16
    return-object p0
.end method

.method public blacklist append([S)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 5
    .param p1, "array"    # [S

    .line 901
    if-nez p1, :cond_a

    .line 902
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    .line 904
    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-short v2, p1, v1

    .line 905
    .local v2, "element":S
    invoke-virtual {p0, v2}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(S)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 904
    .end local v2    # "element":S
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 908
    :cond_16
    :goto_16
    return-object p0
.end method

.method public blacklist append([Z)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 5
    .param p1, "array"    # [Z

    .line 592
    if-nez p1, :cond_a

    .line 593
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_16

    .line 595
    :cond_a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-boolean v2, p1, v1

    .line 596
    .local v2, "element":Z
    invoke-virtual {p0, v2}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(Z)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 595
    .end local v2    # "element":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 599
    :cond_16
    :goto_16
    return-object p0
.end method

.method public blacklist appendSuper(I)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .registers 4
    .param p1, "superHashCode"    # I

    .line 922
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 923
    return-object p0
.end method

.method public blacklist build()Ljava/lang/Integer;
    .registers 2

    .line 945
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist build()Ljava/lang/Object;
    .registers 2

    .line 101
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 959
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public blacklist toHashCode()I
    .registers 2

    .line 934
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return v0
.end method
