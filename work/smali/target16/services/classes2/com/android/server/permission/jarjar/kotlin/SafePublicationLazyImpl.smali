.class final Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;
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


# static fields
.field public static final Companion:Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl$Companion;

.field public static final valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _value:Ljava/lang/Object;

.field private final final:Ljava/lang/Object;

.field private volatile initializer:Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;->Companion:Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl$Companion;

    .line 145
    const-class v0, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;

    .line 146
    const-class v1, Ljava/lang/Object;

    .line 147
    const-string v2, "_value"

    .line 144
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;->valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;)V
    .registers 3

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;->initializer:Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;

    .line 107
    sget-object p1, Lcom/android/server/permission/jarjar/kotlin/UNINITIALIZED_VALUE;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/UNINITIALIZED_VALUE;

    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;->_value:Ljava/lang/Object;

    .line 112
    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;->final:Ljava/lang/Object;

    return-void
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .registers 2

    .line 141
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Deserialization is supported via proxy only"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 2

    .line 139
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/InitializedLazyImpl;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/InitializedLazyImpl;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;->_value:Ljava/lang/Object;

    .line 117
    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/UNINITIALIZED_VALUE;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/UNINITIALIZED_VALUE;

    if-eq v0, v1, :cond_7

    return-object v0

    .line 122
    :cond_7
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;->initializer:Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1b

    .line 125
    invoke-interface {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 126
    sget-object v2, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;->valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    .line 127
    iput-object v1, p0, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;->initializer:Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;

    return-object v0

    .line 132
    :cond_1b
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;->_value:Ljava/lang/Object;

    return-object p0
.end method

.method public isInitialized()Z
    .registers 2

    .line 135
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;->_value:Ljava/lang/Object;

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

    .line 137
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p0, "Lazy value not initialized yet."

    return-object p0
.end method
