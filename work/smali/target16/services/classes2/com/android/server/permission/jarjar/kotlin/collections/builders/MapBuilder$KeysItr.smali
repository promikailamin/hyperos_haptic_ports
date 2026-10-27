.class public final Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$KeysItr;
.super Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;
.source "MapBuilder.kt"

# interfaces
.implements Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)V
    .registers 3

    const-string v0, "map"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    invoke-direct {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;-><init>(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 3

    .line 540
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->checkForComodification$kotlin_stdlib()V

    .line 541
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getIndex$kotlin_stdlib()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getMap$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getLength$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 542
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getIndex$kotlin_stdlib()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->setIndex$kotlin_stdlib(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->setLastIndex$kotlin_stdlib(I)V

    .line 543
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getMap$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    move-result-object v0

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getKeysArray$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getLastIndex$kotlin_stdlib()I

    move-result v1

    aget-object v0, v0, v1

    .line 544
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->initNext$kotlin_stdlib()V

    return-object v0

    .line 541
    :cond_2f
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
