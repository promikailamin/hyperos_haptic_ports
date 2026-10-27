.class public abstract Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsJVMKt;
.super Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapWithDefaultKt;
.source "MapsJVM.kt"


# direct methods
.method public static build(Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    const-string v0, "builder"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    check-cast p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->build()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static createMapBuilder(I)Ljava/util/Map;
    .registers 2

    .line 51
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;-><init>(I)V

    return-object v0
.end method
