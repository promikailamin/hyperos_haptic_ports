.class public final Lcom/android/server/permission/jarjar/kotlin/internal/PlatformImplementations$ReflectThrowable;
.super Ljava/lang/Object;
.source "PlatformImplementations.kt"


# static fields
.field public static final INSTANCE:Lcom/android/server/permission/jarjar/kotlin/internal/PlatformImplementations$ReflectThrowable;

.field public static final addSuppressed:Ljava/lang/reflect/Method;

.field public static final getSuppressed:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/internal/PlatformImplementations$ReflectThrowable;

    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/internal/PlatformImplementations$ReflectThrowable;-><init>()V

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/internal/PlatformImplementations$ReflectThrowable;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/internal/PlatformImplementations$ReflectThrowable;

    .line 24
    const-class v0, Ljava/lang/Throwable;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    const/4 v5, 0x0

    if-ge v4, v2, :cond_3b

    aget-object v6, v1, v4

    .line 27
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "addSuppressed"

    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getParameterTypes(...)"

    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->singleOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    goto :goto_3c

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_3b
    move-object v6, v5

    .line 26
    :goto_3c
    sput-object v6, Lcom/android/server/permission/jarjar/kotlin/internal/PlatformImplementations$ReflectThrowable;->addSuppressed:Ljava/lang/reflect/Method;

    .line 29
    array-length v0, v1

    :goto_3f
    if-ge v3, v0, :cond_54

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "getSuppressed"

    invoke-static {v4, v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    move-object v5, v2

    goto :goto_54

    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_54
    :goto_54
    sput-object v5, Lcom/android/server/permission/jarjar/kotlin/internal/PlatformImplementations$ReflectThrowable;->getSuppressed:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
