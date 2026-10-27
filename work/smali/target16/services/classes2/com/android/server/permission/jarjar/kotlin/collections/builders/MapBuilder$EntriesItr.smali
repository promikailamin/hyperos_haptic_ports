.class public final Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntriesItr;
.super Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;
.source "MapBuilder.kt"

# interfaces
.implements Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)V
    .registers 3

    const-string v0, "map"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    invoke-direct {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;-><init>(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)V

    return-void
.end method


# virtual methods
.method public next()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;
    .registers 4

    .line 564
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->checkForComodification$kotlin_stdlib()V

    .line 565
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getIndex$kotlin_stdlib()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getMap$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getLength$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 566
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getIndex$kotlin_stdlib()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->setIndex$kotlin_stdlib(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->setLastIndex$kotlin_stdlib(I)V

    .line 567
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getMap$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getLastIndex$kotlin_stdlib()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;-><init>(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;I)V

    .line 568
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->initNext$kotlin_stdlib()V

    return-object v0

    .line 565
    :cond_2e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 1

    .line 561
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntriesItr;->next()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntryRef;

    move-result-object p0

    return-object p0
.end method

.method public final nextAppendString(Ljava/lang/StringBuilder;)V
    .registers 5

    const-string/jumbo v0, "sb"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getIndex$kotlin_stdlib()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getMap$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getLength$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_64

    .line 582
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getIndex$kotlin_stdlib()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->setIndex$kotlin_stdlib(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->setLastIndex$kotlin_stdlib(I)V

    .line 583
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getMap$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    move-result-object v0

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getKeysArray$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getLastIndex$kotlin_stdlib()I

    move-result v1

    aget-object v0, v0, v1

    .line 584
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getMap$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    move-result-object v1

    const-string v2, "(this Map)"

    if-ne v0, v1, :cond_3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_3a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3d
    const/16 v0, 0x3d

    .line 585
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getMap$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    move-result-object v0

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getValuesArray$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getLastIndex$kotlin_stdlib()I

    move-result v1

    aget-object v0, v0, v1

    .line 587
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getMap$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    move-result-object v1

    if-ne v0, v1, :cond_5d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    :cond_5d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    :goto_60
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->initNext$kotlin_stdlib()V

    return-void

    .line 581
    :cond_64
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final nextHashCode$kotlin_stdlib()I
    .registers 5

    .line 573
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getIndex$kotlin_stdlib()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getMap$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getLength$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_4d

    .line 574
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getIndex$kotlin_stdlib()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->setIndex$kotlin_stdlib(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->setLastIndex$kotlin_stdlib(I)V

    .line 575
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getMap$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    move-result-object v0

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getKeysArray$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getLastIndex$kotlin_stdlib()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_31

    :cond_30
    move v0, v1

    :goto_31
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getMap$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getValuesArray$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->getLastIndex$kotlin_stdlib()I

    move-result v3

    aget-object v2, v2, v3

    if-eqz v2, :cond_48

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_48
    xor-int/2addr v0, v1

    .line 576
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->initNext$kotlin_stdlib()V

    return v0

    .line 573
    :cond_4d
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
