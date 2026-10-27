.class public abstract Lcom/android/server/permission/jarjar/kotlin/collections/SetsKt__SetsJVMKt;
.super Ljava/lang/Object;
.source "SetsJVM.kt"


# direct methods
.method public static build(Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    const-string v0, "builder"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    check-cast p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/SetBuilder;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/SetBuilder;->build()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static createSetBuilder(I)Ljava/util/Set;
    .registers 2

    .line 45
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/SetBuilder;

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/SetBuilder;-><init>(I)V

    return-object v0
.end method
