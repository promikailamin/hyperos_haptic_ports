.class public Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;
.super Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
.source "ReflectionToStringBuilder.java"


# instance fields
.field private blacklist appendStatics:Z

.field private blacklist appendTransients:Z

.field protected blacklist excludeFieldNames:[Ljava/lang/String;

.field private blacklist upToClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 386
    invoke-direct {p0, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 357
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 387
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)V
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .line 406
    invoke-direct {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 357
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 407
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;

    .line 432
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 357
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 433
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V
    .registers 8
    .param p2, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "outputTransients"    # Z
    .param p6, "outputStatics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/apache/miui/commons/lang3/builder/ToStringStyle;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/Class<",
            "-TT;>;ZZ)V"
        }
    .end annotation

    .line 457
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p4, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 357
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 458
    invoke-virtual {p0, p4}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->setUpToClass(Ljava/lang/Class;)V

    .line 459
    invoke-virtual {p0, p5}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->setAppendTransients(Z)V

    .line 460
    invoke-virtual {p0, p6}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->setAppendStatics(Z)V

    .line 461
    return-void
.end method

.method static blacklist toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 310
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p0, :cond_5

    .line 311
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 313
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .registers 6
    .param p0, "array"    # [Ljava/lang/Object;

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_18

    aget-object v3, p0, v2

    .line 328
    .local v3, "e":Ljava/lang/Object;
    if-eqz v3, :cond_15

    .line 329
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v3    # "e":Ljava/lang/Object;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 332
    :cond_18
    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static blacklist toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;

    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .registers 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .line 146
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Z)Ljava/lang/String;
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z

    .line 184
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZZ)Ljava/lang/String;
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .param p3, "outputStatics"    # Z

    .line 230
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;
    .registers 13
    .param p1, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .param p3, "outputStatics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/apache/miui/commons/lang3/builder/ToStringStyle;",
            "ZZ",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 283
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p4, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    new-instance v7, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V

    .line 284
    invoke-virtual {v7}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    return-object v0
.end method

.method public static blacklist toStringExclude(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 297
    .local p1, "excludeFieldNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFieldNames"    # [Ljava/lang/String;

    .line 346
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;

    invoke-direct {v0, p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->setExcludeFieldNames([Ljava/lang/String;)Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected blacklist accept(Ljava/lang/reflect/Field;)Z
    .registers 5
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 476
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    .line 478
    return v1

    .line 480
    :cond_f
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->isAppendTransients()Z

    move-result v0

    if-nez v0, :cond_20

    .line 482
    return v1

    .line 484
    :cond_20
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->isAppendStatics()Z

    move-result v0

    if-nez v0, :cond_31

    .line 486
    return v1

    .line 488
    :cond_31
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 489
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_40

    .line 491
    return v1

    .line 493
    :cond_40
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist appendFieldsIn(Ljava/lang/Class;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 510
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 511
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->reflectionAppendArray(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;

    .line 512
    return-void

    .line 514
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 515
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 516
    array-length v1, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_50

    aget-object v3, v0, v2

    .line 517
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 518
    .local v4, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->accept(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 522
    :try_start_26
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v5

    .line 523
    .local v5, "fieldValue":Ljava/lang/Object;
    invoke-virtual {p0, v4, v5}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_2d} :catch_2f

    .line 530
    nop

    .end local v5    # "fieldValue":Ljava/lang/Object;
    goto :goto_4d

    .line 524
    :catch_2f
    move-exception v1

    .line 529
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/InternalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected IllegalAccessException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 516
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    :cond_4d
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 533
    :cond_50
    return-void
.end method

.method public blacklist getExcludeFieldNames()[Ljava/lang/String;
    .registers 2

    .line 539
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUpToClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 3
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 570
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isAppendStatics()Z
    .registers 2

    .line 582
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    return v0
.end method

.method public blacklist isAppendTransients()Z
    .registers 2

    .line 593
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    return v0
.end method

.method public blacklist reflectionAppendArray(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;
    .registers 5
    .param p1, "array"    # Ljava/lang/Object;

    .line 606
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->getStyle()Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 607
    return-object p0
.end method

.method public blacklist setAppendStatics(Z)V
    .registers 2
    .param p1, "appendStatics"    # Z

    .line 620
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 621
    return-void
.end method

.method public blacklist setAppendTransients(Z)V
    .registers 2
    .param p1, "appendTransients"    # Z

    .line 632
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 633
    return-void
.end method

.method public varargs blacklist setExcludeFieldNames([Ljava/lang/String;)Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;
    .registers 3
    .param p1, "excludeFieldNamesParam"    # [Ljava/lang/String;

    .line 643
    if-nez p1, :cond_6

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    goto :goto_f

    .line 647
    :cond_6
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    .line 648
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 650
    :goto_f
    return-object p0
.end method

.method public blacklist setUpToClass(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 662
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_17

    .line 663
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 664
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_17

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_17

    .line 665
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Specified class is not a superclass of the object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 668
    .end local v0    # "object":Ljava/lang/Object;
    :cond_17
    :goto_17
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 669
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 680
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 681
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->getStyle()Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 683
    :cond_f
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 684
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    .line 685
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->getUpToClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2e

    .line 686
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 687
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    goto :goto_1a

    .line 689
    :cond_2e
    invoke-super {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
