.class final Lcom/android/server/permission/jarjar/kotlin/SynchronizedLazyImpl;
.super Ljava/lang/Object;
.source "LazyJVM.kt"

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
.field private volatile _value:Ljava/lang/Object;

.field private initializer:Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/SynchronizedLazyImpl;->initializer:Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;

    .line 67
    sget-object p1, Lcom/android/server/permission/jarjar/kotlin/UNINITIALIZED_VALUE;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/UNINITIALIZED_VALUE;

    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/SynchronizedLazyImpl;->_value:Ljava/lang/Object;

    if-nez p2, :cond_11

    move-object p2, p0

    .line 71
    :cond_11
    iput-object p2, p0, Lcom/android/server/permission/jarjar/kotlin/SynchronizedLazyImpl;->lock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;Ljava/lang/Object;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 63
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/permission/jarjar/kotlin/SynchronizedLazyImpl;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;Ljava/lang/Object;)V

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 2

    .line 98
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/InitializedLazyImpl;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/InitializedLazyImpl;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/SynchronizedLazyImpl;->_value:Ljava/lang/Object;

    .line 76
    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/UNINITIALIZED_VALUE;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/UNINITIALIZED_VALUE;

    if-eq v0, v1, :cond_7

    return-object v0

    .line 81
    :cond_7
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/SynchronizedLazyImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_a
    iget-object v2, p0, Lcom/android/server/permission/jarjar/kotlin/SynchronizedLazyImpl;->_value:Ljava/lang/Object;

    if-eq v2, v1, :cond_f

    goto :goto_1d

    .line 86
    :cond_f
    iget-object v1, p0, Lcom/android/server/permission/jarjar/kotlin/SynchronizedLazyImpl;->initializer:Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    .line 87
    iput-object v2, p0, Lcom/android/server/permission/jarjar/kotlin/SynchronizedLazyImpl;->_value:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 88
    iput-object v1, p0, Lcom/android/server/permission/jarjar/kotlin/SynchronizedLazyImpl;->initializer:Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1f

    .line 81
    :goto_1d
    monitor-exit v0

    return-object v2

    :catchall_1f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public isInitialized()Z
    .registers 2

    .line 94
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/SynchronizedLazyImpl;->_value:Ljava/lang/Object;

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

    .line 96
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/SynchronizedLazyImpl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p0, "Lazy value not initialized yet."

    return-object p0
.end method
