.class public final Lcom/android/server/permission/jarjar/kotlin/UnsafeLazyImpl;
.super Ljava/lang/Object;
.source "Lazy.kt"

# interfaces
.implements Lcom/android/server/permission/jarjar/kotlin/Lazy;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/server/permission/jarjar/kotlin/Lazy;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private _value:Ljava/lang/Object;

.field private initializer:Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;)V
    .registers 3

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/UnsafeLazyImpl;->initializer:Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;

    .line 95
    sget-object p1, Lcom/android/server/permission/jarjar/kotlin/UNINITIALIZED_VALUE;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/UNINITIALIZED_VALUE;

    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/UnsafeLazyImpl;->_value:Ljava/lang/Object;

    return-void
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .registers 2

    .line 113
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Deserialization is supported via proxy only"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 2

    .line 111
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/InitializedLazyImpl;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/UnsafeLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/InitializedLazyImpl;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/UnsafeLazyImpl;->_value:Ljava/lang/Object;

    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/UNINITIALIZED_VALUE;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/UNINITIALIZED_VALUE;

    if-ne v0, v1, :cond_14

    .line 100
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/UnsafeLazyImpl;->initializer:Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/UnsafeLazyImpl;->_value:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/UnsafeLazyImpl;->initializer:Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;

    .line 104
    :cond_14
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/UnsafeLazyImpl;->_value:Ljava/lang/Object;

    return-object p0
.end method

.method public isInitialized()Z
    .registers 2

    .line 107
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/UnsafeLazyImpl;->_value:Ljava/lang/Object;

    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/UNINITIALIZED_VALUE;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/UNINITIALIZED_VALUE;

    if-eq p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 109
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/UnsafeLazyImpl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/UnsafeLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p0, "Lazy value not initialized yet."

    return-object p0
.end method
