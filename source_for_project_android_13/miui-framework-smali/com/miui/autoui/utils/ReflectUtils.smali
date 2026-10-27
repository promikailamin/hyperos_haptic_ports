.class public Lcom/miui/autoui/utils/ReflectUtils;
.super Ljava/lang/Object;
.source "ReflectUtils.java"


# static fields
.field private static final blacklist DEFAULT_VALUE:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AutoUI_ReflectUtils"


# instance fields
.field private blacklist mArgs:[Ljava/lang/Object;

.field private blacklist mField:Ljava/lang/reflect/Field;

.field private blacklist mMethod:Ljava/lang/reflect/Method;

.field private final blacklist mObject:Ljava/lang/Object;

.field private final blacklist mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 23
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/utils/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 26
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/miui/autoui/utils/ReflectUtils;->mType:Ljava/lang/Class;

    .line 28
    iput-object p2, p0, Lcom/miui/autoui/utils/ReflectUtils;->mObject:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method private static blacklist accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 66
    .local p0, "accessible":Ljava/lang/reflect/AccessibleObject;, "TT;"
    if-nez p0, :cond_4

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_4
    instance-of v0, p0, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_24

    .line 70
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Member;

    .line 71
    .local v0, "member":Ljava/lang/reflect/Member;
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 72
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 73
    return-object p0

    .line 76
    .end local v0    # "member":Ljava/lang/reflect/Member;
    :cond_24
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 79
    :cond_2e
    return-object p0
.end method

.method private static blacklist forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 55
    if-nez p1, :cond_7

    .line 56
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 58
    :cond_7
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_b} :catch_c

    return-object v0

    .line 59
    :catch_c
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type must not be null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoUI_ReflectUtils"

    invoke-static {v2, v1}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getInt(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 135
    :try_start_0
    invoke-static {p0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/autoui/utils/ReflectUtils;->field(Ljava/lang/String;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/autoui/utils/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    .line 136
    :catch_13
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoUI_ReflectUtils"

    invoke-static {v2, v1}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v1, -0x1

    return v1
.end method

.method public static blacklist on(Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/miui/autoui/utils/ReflectUtils;"
        }
    .end annotation

    .line 39
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_9

    .line 40
    const-string v0, "AutoUI_ReflectUtils"

    const-string v1, "type must not be null!"

    invoke-static {v0, v1}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_9
    new-instance v0, Lcom/miui/autoui/utils/ReflectUtils;

    invoke-direct {v0, p0}, Lcom/miui/autoui/utils/ReflectUtils;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static blacklist on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;

    .line 32
    if-nez p0, :cond_9

    .line 33
    const-string v0, "AutoUI_ReflectUtils"

    const-string v1, "object must not be null!"

    invoke-static {v0, v1}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_9
    new-instance v0, Lcom/miui/autoui/utils/ReflectUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/miui/autoui/utils/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist onClass(Ljava/lang/String;)Lcom/miui/autoui/utils/ReflectUtils;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/autoui/utils/ReflectUtils;->forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist onClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/miui/autoui/utils/ReflectUtils;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 50
    invoke-static {p0, p1}, Lcom/miui/autoui/utils/ReflectUtils;->forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist toField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 116
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 118
    .local v0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/autoui/utils/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_b} :catch_c

    return-object v1

    .line 119
    :catch_c
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    :goto_d
    const-string v2, "AutoUI_ReflectUtils"

    if-eqz v0, :cond_3c

    .line 122
    :try_start_11
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/autoui/utils/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_11 .. :try_end_1b} :catch_1c

    return-object v3

    .line 123
    :catch_1c
    move-exception v3

    .line 124
    .local v3, "e2":Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toField : NoSuchFieldException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 126
    .end local v3    # "e2":Ljava/lang/NoSuchFieldException;
    goto :goto_d

    .line 128
    :cond_3c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static varargs blacklist toMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 98
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 100
    .local v0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v1

    .line 101
    :catch_6
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    :goto_7
    const-string v2, "AutoUI_ReflectUtils"

    if-eqz v0, :cond_30

    .line 104
    :try_start_b
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_f} :catch_10

    return-object v2

    .line 105
    :catch_10
    move-exception v3

    .line 106
    .local v3, "e2":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toMethod : NoSuchMethodException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 108
    .end local v3    # "e2":Ljava/lang/NoSuchMethodException;
    goto :goto_7

    .line 110
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static varargs blacklist toTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 6
    .param p0, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 83
    if-eqz p0, :cond_22

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_22

    .line 86
    :cond_6
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    .line 87
    .local v0, "results":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_21

    .line 88
    aget-object v2, p0, v1

    .line 89
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_18

    .line 90
    const-string v3, "AutoUI_ReflectUtils"

    const-string v4, "args must not be null!"

    invoke-static {v3, v4}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v1

    .line 87
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 94
    .end local v1    # "i":I
    :cond_21
    return-object v0

    .line 84
    .end local v0    # "results":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_22
    :goto_22
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public varargs blacklist args([Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;
    .registers 2
    .param p1, "args"    # [Ljava/lang/Object;

    .line 168
    iput-object p1, p0, Lcom/miui/autoui/utils/ReflectUtils;->mArgs:[Ljava/lang/Object;

    .line 169
    return-object p0
.end method

.method public blacklist field(Ljava/lang/String;)Lcom/miui/autoui/utils/ReflectUtils;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/miui/autoui/utils/ReflectUtils;->mType:Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/miui/autoui/utils/ReflectUtils;->toField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autoui/utils/ReflectUtils;->mField:Ljava/lang/reflect/Field;

    .line 187
    return-object p0
.end method

.method public blacklist get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/miui/autoui/utils/ReflectUtils;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_b

    .line 205
    iget-object v1, p0, Lcom/miui/autoui/utils/ReflectUtils;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v0

    .line 209
    :cond_b
    goto :goto_16

    .line 207
    :catch_c
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoUI_ReflectUtils"

    invoke-static {v2, v1}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist invoke()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/miui/autoui/utils/ReflectUtils;->mMethod:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lcom/miui/autoui/utils/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    .line 175
    :try_start_5
    iget-object v0, p0, Lcom/miui/autoui/utils/ReflectUtils;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_12

    .line 176
    iget-object v1, p0, Lcom/miui/autoui/utils/ReflectUtils;->mObject:Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/autoui/utils/ReflectUtils;->mArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 178
    :cond_12
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/utils/ReflectUtils;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasn\'t set!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/miui/autoui/utils/ReflectUtils;
    throw v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_33

    .line 179
    .restart local p0    # "this":Lcom/miui/autoui/utils/ReflectUtils;
    :catch_33
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoUI_ReflectUtils"

    invoke-static {v2, v1}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs blacklist method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/miui/autoui/utils/ReflectUtils;"
        }
    .end annotation

    .line 144
    .local p2, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/miui/autoui/utils/ReflectUtils;->mType:Ljava/lang/Class;

    invoke-static {v0, p1, p2}, Lcom/miui/autoui/utils/ReflectUtils;->toMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autoui/utils/ReflectUtils;->mMethod:Ljava/lang/reflect/Method;

    .line 145
    return-object p0
.end method

.method public blacklist methodOnlyName(Ljava/lang/String;)Lcom/miui/autoui/utils/ReflectUtils;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/miui/autoui/utils/ReflectUtils;->mType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 150
    .local v0, "declaredMethods":[Ljava/lang/reflect/Method;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_1d

    aget-object v4, v0, v3

    .line 151
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 152
    iput-object v4, p0, Lcom/miui/autoui/utils/ReflectUtils;->mMethod:Ljava/lang/reflect/Method;

    .line 153
    return-object p0

    .line 150
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 156
    :cond_1d
    iget-object v1, p0, Lcom/miui/autoui/utils/ReflectUtils;->mType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 157
    .local v1, "methods":[Ljava/lang/reflect/Method;
    array-length v3, v1

    :goto_24
    if-ge v2, v3, :cond_38

    aget-object v4, v1, v2

    .line 158
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 159
    iput-object v4, p0, Lcom/miui/autoui/utils/ReflectUtils;->mMethod:Ljava/lang/reflect/Method;

    .line 160
    return-object p0

    .line 157
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 163
    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutoUI_ReflectUtils"

    invoke-static {v3, v2}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-object p0
.end method

.method public blacklist set(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;
    .registers 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/miui/autoui/utils/ReflectUtils;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_a

    .line 193
    iget-object v1, p0, Lcom/miui/autoui/utils/ReflectUtils;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_b

    .line 194
    return-object p0

    .line 198
    :cond_a
    goto :goto_15

    .line 196
    :catch_b
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoUI_ReflectUtils"

    invoke-static {v2, v1}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_15
    return-object p0
.end method
