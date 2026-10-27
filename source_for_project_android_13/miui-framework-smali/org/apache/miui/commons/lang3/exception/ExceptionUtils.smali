.class public Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# static fields
.field private static final blacklist CAUSE_METHOD_NAMES:[Ljava/lang/String;

.field static final blacklist WRAPPED_MARKER:Ljava/lang/String; = " [wrapped] "


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 55
    const-string v0, "getCause"

    const-string v1, "getNextException"

    const-string v2, "getTargetException"

    const-string v3, "getException"

    const-string v4, "getSourceException"

    const-string v5, "getRootCause"

    const-string v6, "getCausedByException"

    const-string v7, "getNested"

    const-string v8, "getLinkedException"

    const-string v9, "getNestedException"

    const-string v10, "getLinkedCause"

    const-string v11, "getThrowable"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static blacklist getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    sget-object v0, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 7
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "methodNames"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 144
    return-object v0

    .line 147
    :cond_4
    if-nez p1, :cond_8

    .line 148
    sget-object p1, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    .line 151
    :cond_8
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    aget-object v3, p1, v2

    .line 152
    .local v3, "methodName":Ljava/lang/String;
    if-eqz v3, :cond_17

    .line 153
    invoke-static {p0, v3}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v4

    .line 154
    .local v4, "cause":Ljava/lang/Throwable;
    if-eqz v4, :cond_17

    .line 155
    return-object v4

    .line 151
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v4    # "cause":Ljava/lang/Throwable;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 160
    :cond_1a
    return-object v0
.end method

.method private static blacklist getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 6
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_c} :catch_10
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_c} :catch_e

    move-object v0, v2

    .line 201
    :goto_d
    goto :goto_12

    .line 199
    :catch_e
    move-exception v2

    goto :goto_12

    .line 197
    :catch_10
    move-exception v2

    goto :goto_d

    .line 203
    :goto_12
    if-eqz v0, :cond_2e

    const-class v2, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 205
    :try_start_20
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_28} :catch_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_28} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_28} :catch_29

    return-object v1

    .line 210
    :catch_29
    move-exception v1

    goto :goto_2e

    .line 208
    :catch_2b
    move-exception v1

    goto :goto_2e

    .line 206
    :catch_2d
    move-exception v1

    .line 214
    :cond_2e
    :goto_2e
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getDefaultCauseMethodNames()[Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    sget-object v0, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5
    .param p0, "th"    # Ljava/lang/Throwable;

    .line 673
    if-nez p0, :cond_5

    .line 674
    const-string v0, ""

    return-object v0

    .line 676
    :cond_5
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ClassUtils;->getShortClassName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "clsName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/miui/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 181
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_d

    const/4 v1, 0x0

    goto :goto_19

    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    :goto_19
    return-object v1
.end method

.method public static blacklist getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3
    .param p0, "th"    # Ljava/lang/Throwable;

    .line 693
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 694
    .local v0, "root":Ljava/lang/Throwable;
    if-nez v0, :cond_8

    move-object v1, p0

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    move-object v0, v1

    .line 695
    invoke-static {v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;
    .registers 9
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 518
    if-nez p0, :cond_5

    .line 519
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 521
    :cond_5
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v0

    .line 522
    .local v0, "throwables":[Ljava/lang/Throwable;
    array-length v1, v0

    .line 523
    .local v1, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v2, "frames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    .line 525
    .local v3, "nextTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v4, v1

    .local v4, "i":I
    :goto_18
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_68

    .line 526
    move-object v5, v3

    .line 527
    .local v5, "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2a

    .line 528
    add-int/lit8 v6, v4, -0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    .line 529
    invoke-static {v5, v3}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->removeCommonFrames(Ljava/util/List;Ljava/util/List;)V

    .line 531
    :cond_2a
    add-int/lit8 v6, v1, -0x1

    if-ne v4, v6, :cond_38

    .line 532
    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 534
    :cond_38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " [wrapped] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    :goto_54
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_55
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_67

    .line 537
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    add-int/lit8 v6, v6, 0x1

    goto :goto_55

    .line 539
    .end local v5    # "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "j":I
    :cond_67
    goto :goto_18

    .line 540
    .end local v4    # "i":I
    :cond_68
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method static blacklist getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 9
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 642
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "stackTrace":Ljava/lang/String;
    sget-object v1, Lorg/apache/miui/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 644
    .local v1, "linebreak":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .local v2, "frames":Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 647
    .local v4, "traceStarted":Z
    :goto_11
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 648
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 650
    .local v5, "token":Ljava/lang/String;
    const-string v6, "at"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 651
    .local v6, "at":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_38

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_38

    .line 652
    const/4 v4, 0x1

    .line 653
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 654
    :cond_38
    if-eqz v4, :cond_3b

    .line 655
    goto :goto_3c

    .line 657
    .end local v5    # "token":Ljava/lang/String;
    .end local v6    # "at":I
    :cond_3b
    :goto_3b
    goto :goto_11

    .line 658
    :cond_3c
    :goto_3c
    return-object v3
.end method

.method static blacklist getStackFrames(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "stackTrace"    # Ljava/lang/String;

    .line 620
    sget-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 621
    .local v0, "linebreak":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .local v1, "frames":Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 624
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 626
    :cond_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static blacklist getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 604
    if-nez p0, :cond_5

    .line 605
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 607
    :cond_5
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getStackFrames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 584
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 585
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 586
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 587
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getThrowableCount(Ljava/lang/Throwable;)I
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 235
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static blacklist getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :goto_5
    if-eqz p0, :cond_15

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 284
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_5

    .line 287
    :cond_15
    return-object v0
.end method

.method public static blacklist getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .registers 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 258
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    .line 259
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Throwable;

    return-object v1
.end method

.method private static blacklist indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I
    .registers 8
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "fromIndex"    # I
    .param p3, "subclass"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;IZ)I"
        }
    .end annotation

    .line 388
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, -0x1

    if-eqz p0, :cond_3d

    if-nez p1, :cond_6

    goto :goto_3d

    .line 391
    :cond_6
    if-gez p2, :cond_9

    .line 392
    const/4 p2, 0x0

    .line 394
    :cond_9
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v1

    .line 395
    .local v1, "throwables":[Ljava/lang/Throwable;
    array-length v2, v1

    if-lt p2, v2, :cond_11

    .line 396
    return v0

    .line 398
    :cond_11
    if-eqz p3, :cond_28

    .line 399
    move v2, p2

    .local v2, "i":I
    :goto_14
    array-length v3, v1

    if-ge v2, v3, :cond_27

    .line 400
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 401
    return v2

    .line 399
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .end local v2    # "i":I
    :cond_27
    goto :goto_3c

    .line 405
    :cond_28
    move v2, p2

    .restart local v2    # "i":I
    :goto_29
    array-length v3, v1

    if-ge v2, v3, :cond_3c

    .line 406
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 407
    return v2

    .line 405
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 411
    .end local v2    # "i":I
    :cond_3c
    :goto_3c
    return v0

    .line 389
    .end local v1    # "throwables":[Ljava/lang/Throwable;
    :cond_3d
    :goto_3d
    return v0
.end method

.method public static blacklist indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;)I
    .registers 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 306
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;I)I
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 329
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist indexOfType(Ljava/lang/Throwable;Ljava/lang/Class;)I
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 349
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist indexOfType(Ljava/lang/Throwable;Ljava/lang/Class;I)I
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 373
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist printRootCauseStackTrace(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 434
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    .line 435
    return-void
.end method

.method public static blacklist printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .registers 6
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .line 457
    if-nez p0, :cond_3

    .line 458
    return-void

    .line 460
    :cond_3
    if-eqz p1, :cond_19

    .line 463
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "trace":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    .line 465
    .local v3, "element":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 464
    .end local v3    # "element":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 467
    :cond_15
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 468
    return-void

    .line 461
    .end local v0    # "trace":[Ljava/lang/String;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The PrintStream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .registers 6
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 490
    if-nez p0, :cond_3

    .line 491
    return-void

    .line 493
    :cond_3
    if-eqz p1, :cond_19

    .line 496
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "trace":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    .line 498
    .local v3, "element":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    .end local v3    # "element":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 500
    :cond_15
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 501
    return-void

    .line 494
    .end local v0    # "trace":[Ljava/lang/String;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The PrintWriter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist removeCommonFrames(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 552
    .local p0, "causeFrames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "wrapperFrames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_30

    if-eqz p1, :cond_30

    .line 555
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 556
    .local v0, "causeFrameIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 557
    .local v1, "wrapperFrameIndex":I
    :goto_10
    if-ltz v0, :cond_2f

    if-ltz v1, :cond_2f

    .line 560
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 561
    .local v2, "causeFrame":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 562
    .local v3, "wrapperFrame":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 563
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 565
    :cond_29
    add-int/lit8 v0, v0, -0x1

    .line 566
    nop

    .end local v2    # "causeFrame":Ljava/lang/String;
    .end local v3    # "wrapperFrame":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    .line 567
    goto :goto_10

    .line 568
    :cond_2f
    return-void

    .line 553
    .end local v0    # "causeFrameIndex":I
    .end local v1    # "wrapperFrameIndex":I
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The List must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
