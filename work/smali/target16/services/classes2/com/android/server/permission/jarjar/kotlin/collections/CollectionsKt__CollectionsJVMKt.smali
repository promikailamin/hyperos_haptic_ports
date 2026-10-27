.class public abstract Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsJVMKt;
.super Ljava/lang/Object;
.source "CollectionsJVM.kt"


# direct methods
.method public static build(Ljava/util/List;)Ljava/util/List;
    .registers 2

    const-string v0, "builder"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    check-cast p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;->build()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static createListBuilder()Ljava/util/List;
    .registers 4

    .line 47
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;-><init>(IILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static createListBuilder(I)Ljava/util/List;
    .registers 2

    .line 53
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilder;-><init>(I)V

    return-object v0
.end method

.method public static final listOf(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 21
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string/jumbo v0, "singletonList(...)"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static terminateCollectionToArray(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    const-string v0, "array"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    array-length v0, p1

    if-ge p0, v0, :cond_b

    const/4 v0, 0x0

    .line 98
    aput-object v0, p1, p0

    :cond_b
    return-object p1
.end method
