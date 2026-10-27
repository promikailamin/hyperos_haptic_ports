.class public abstract Lcom/android/server/permission/jarjar/kotlin/collections/builders/AbstractMapBuilderEntrySet;
.super Lcom/android/server/permission/jarjar/kotlin/collections/AbstractMutableSet;
.source "MapBuilder.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 684
    invoke-direct {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractMutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 3

    .line 684
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/AbstractMapBuilderEntrySet;->contains(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public final contains(Ljava/util/Map$Entry;)Z
    .registers 3

    const-string v0, "element"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/AbstractMapBuilderEntrySet;->containsEntry(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public abstract containsEntry(Ljava/util/Map$Entry;)Z
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .registers 3

    .line 684
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/AbstractMapBuilderEntrySet;->remove(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public bridge abstract remove(Ljava/util/Map$Entry;)Z
.end method
