.class public abstract Lcom/android/server/permission/jarjar/kotlin/LazyKt__LazyJVMKt;
.super Ljava/lang/Object;
.source "LazyJVM.kt"


# direct methods
.method public static lazy(Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;)Lcom/android/server/permission/jarjar/kotlin/Lazy;
    .registers 4

    const-string/jumbo v0, "mode"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/LazyKt__LazyJVMKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2e

    if-eq p0, v1, :cond_28

    const/4 v0, 0x3

    if-ne p0, v0, :cond_22

    .line 45
    new-instance p0, Lcom/android/server/permission/jarjar/kotlin/UnsafeLazyImpl;

    invoke-direct {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/UnsafeLazyImpl;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;)V

    return-object p0

    .line 42
    :cond_22
    new-instance p0, Lcom/android/server/permission/jarjar/kotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lcom/android/server/permission/jarjar/kotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 44
    :cond_28
    new-instance p0, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;

    invoke-direct {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/SafePublicationLazyImpl;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;)V

    return-object p0

    .line 43
    :cond_2e
    new-instance p0, Lcom/android/server/permission/jarjar/kotlin/SynchronizedLazyImpl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/server/permission/jarjar/kotlin/SynchronizedLazyImpl;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;Ljava/lang/Object;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
