.class public Lcom/xiaomi/reflect/RefMethod;
.super Lcom/xiaomi/reflect/RefBase;
.source "RefMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/reflect/RefBase;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    const-string v0, "Java_Reflection"

    sput-object v0, Lcom/xiaomi/reflect/RefMethod;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .registers 9
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/xiaomi/reflect/RefMethod;, "Lcom/xiaomi/reflect/RefMethod<TT;>;"
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/xiaomi/reflect/RefBase;-><init>()V

    .line 41
    const-class v0, Lcom/xiaomi/reflect/annotation/MethodArguments;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 42
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/xiaomi/reflect/annotation/MethodArguments;

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/reflect/annotation/MethodArguments;

    invoke-interface {v1}, Lcom/xiaomi/reflect/annotation/MethodArguments;->cls()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    goto :goto_69

    .line 43
    :cond_22
    const-class v0, Lcom/xiaomi/reflect/annotation/MethodQualifiedArguments;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 44
    const-class v0, Lcom/xiaomi/reflect/annotation/MethodQualifiedArguments;

    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/reflect/annotation/MethodQualifiedArguments;

    invoke-interface {v0}, Lcom/xiaomi/reflect/annotation/MethodQualifiedArguments;->classNames()[Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    .line 44
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->emptyIfNull([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 46
    .local v0, "classNames":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "classes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_45
    if-ge v3, v2, :cond_53

    aget-object v4, v0, v3

    .line 48
    .local v4, "className":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/xiaomi/reflect/RefMethod;->getClassType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .end local v4    # "className":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 50
    :cond_53
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    .line 52
    .end local v0    # "classNames":[Ljava/lang/String;
    .end local v1    # "classes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/xiaomi/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public varargs blacklist invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/xiaomi/reflect/RefMethod;, "Lcom/xiaomi/reflect/RefMethod<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 79
    :catch_7
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xiaomi/reflect/RefMethod;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method
