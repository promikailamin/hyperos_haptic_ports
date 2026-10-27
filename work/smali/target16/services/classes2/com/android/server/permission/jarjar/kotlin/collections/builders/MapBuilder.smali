.class public final Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;
.super Ljava/lang/Object;
.source "MapBuilder.kt"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;

.field public static final Empty:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;


# instance fields
.field private entriesView:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;"
        }
    .end annotation
.end field

.field private hashArray:[I

.field private hashShift:I

.field private isReadOnly:Z

.field private keysArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private keysView:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderKeys;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderKeys;"
        }
    .end annotation
.end field

.field private length:I

.field private maxProbeDistance:I

.field private modCount:I

.field private presenceArray:[I

.field private size:I

.field private valuesArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private valuesView:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderValues;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;

    .line 498
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;-><init>(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->isReadOnly:Z

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->Empty:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 9

    .line 57
    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilderKt;->arrayOfUninitializedElements(I)[Ljava/lang/Object;

    move-result-object v1

    .line 59
    new-array v3, p1, [I

    .line 60
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;

    # invokes: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;->computeHashSize(I)I
    invoke-static {v0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;->access$computeHashSize(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;I)I

    move-result p1

    new-array v4, p1, [I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    .line 56
    invoke-direct/range {v0 .. v6}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;-><init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V
    .registers 7

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    .line 18
    iput-object p2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    .line 20
    iput-object p3, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->presenceArray:[I

    .line 22
    iput-object p4, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hashArray:[I

    .line 24
    iput p5, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    .line 26
    iput p6, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I

    .line 28
    sget-object p1, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result p2

    # invokes: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;->computeShift(I)I
    invoke-static {p1, p2}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;->access$computeShift(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hashShift:I

    return-void
.end method

.method public static final synthetic access$allocateValuesArray(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;
    .registers 1

    .line 14
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->allocateValuesArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEmpty$cp()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;
    .registers 1

    .line 14
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->Empty:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    return-object v0
.end method

.method public static final synthetic access$getKeysArray$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getLength$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)I
    .registers 1

    .line 14
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I

    return p0
.end method

.method public static final synthetic access$getModCount$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)I
    .registers 1

    .line 14
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->modCount:I

    return p0
.end method

.method public static final synthetic access$getPresenceArray$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)[I
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->presenceArray:[I

    return-object p0
.end method

.method public static final synthetic access$getValuesArray$p(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$removeEntryAt(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;I)V
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->removeEntryAt(I)V

    return-void
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .registers 2

    .line 77
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Deserialization is supported via proxy only"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 2

    .line 72
    iget-boolean v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 73
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/SerializedMap;

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/SerializedMap;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 75
    :cond_a
    new-instance p0, Ljava/io/NotSerializableException;

    const-string v0, "The map cannot be serialized while it is being built."

    invoke-direct {p0, v0}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addKey$kotlin_stdlib(Ljava/lang/Object;)I
    .registers 9

    .line 320
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 322
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 324
    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/ranges/RangesKt___RangesKt;->coerceAtMost(II)I

    move-result v1

    const/4 v2, 0x0

    .line 327
    :goto_16
    iget-object v3, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hashArray:[I

    aget v3, v3, v0

    const/4 v4, 0x1

    if-gtz v3, :cond_4c

    .line 329
    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result v3

    if-lt v1, v3, :cond_29

    .line 330
    invoke-virtual {p0, v4}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->ensureExtraCapacity(I)V

    goto :goto_3

    .line 333
    :cond_29
    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I

    .line 334
    iget-object v5, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    aput-object p1, v5, v1

    .line 335
    iget-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->presenceArray:[I

    aput v0, p1, v1

    .line 336
    iget-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hashArray:[I

    aput v3, p1, v0

    .line 337
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->size()I

    move-result p1

    add-int/2addr p1, v4

    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->size:I

    .line 338
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->registerModification()V

    .line 339
    iget p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    if-le v2, p1, :cond_4b

    iput v2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    :cond_4b
    return v1

    .line 342
    :cond_4c
    iget-object v5, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    add-int/lit8 v6, v3, -0x1

    aget-object v5, v5, v6

    invoke-static {v5, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    neg-int p0, v3

    return p0

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    if-le v2, v1, :cond_68

    .line 346
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->rehash(I)V

    goto :goto_3

    :cond_68
    add-int/lit8 v3, v0, -0x1

    if-nez v0, :cond_72

    .line 349
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_16

    :cond_72
    move v0, v3

    goto :goto_16
.end method

.method public final allocateValuesArray()[Ljava/lang/Object;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    if-eqz v0, :cond_5

    return-object v0

    .line 235
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilderKt;->arrayOfUninitializedElements(I)[Ljava/lang/Object;

    move-result-object v0

    .line 236
    iput-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    return-object v0
.end method

.method public final build()Ljava/util/Map;
    .registers 2

    .line 65
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->isReadOnly:Z

    .line 68
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->size()I

    move-result v0

    if-lez v0, :cond_d

    return-object p0

    :cond_d
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->Empty:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final checkIsMutable$kotlin_stdlib()V
    .registers 1

    .line 201
    iget-boolean p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->isReadOnly:Z

    if-nez p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public clear()V
    .registers 7

    .line 118
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 120
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_1d

    move v2, v1

    .line 121
    :goto_b
    iget-object v3, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->presenceArray:[I

    aget v4, v3, v2

    if-ltz v4, :cond_18

    .line 123
    iget-object v5, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hashArray:[I

    aput v1, v5, v4

    const/4 v4, -0x1

    .line 124
    aput v4, v3, v2

    :cond_18
    if-eq v2, v0, :cond_1d

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 127
    :cond_1d
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I

    invoke-static {v0, v1, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    .line 128
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    if-eqz v0, :cond_2d

    iget v2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I

    invoke-static {v0, v1, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    .line 129
    :cond_2d
    iput v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->size:I

    .line 130
    iput v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I

    .line 131
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->registerModification()V

    return-void
.end method

.method public final compact(Z)V
    .registers 9

    .line 245
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    .line 246
    :goto_4
    iget v3, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I

    if-ge v1, v3, :cond_29

    .line 247
    iget-object v3, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->presenceArray:[I

    aget v4, v3, v1

    if-ltz v4, :cond_26

    .line 249
    iget-object v5, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    aget-object v6, v5, v1

    aput-object v6, v5, v2

    if-eqz v0, :cond_1a

    .line 250
    aget-object v5, v0, v1

    aput-object v5, v0, v2

    :cond_1a
    if-eqz p1, :cond_24

    .line 252
    aput v4, v3, v2

    .line 253
    iget-object v3, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hashArray:[I

    add-int/lit8 v5, v2, 0x1

    aput v5, v3, v4

    :cond_24
    add-int/lit8 v2, v2, 0x1

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 259
    :cond_29
    iget-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    if-eqz v0, :cond_35

    .line 260
    iget p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I

    invoke-static {v0, v2, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    .line 261
    :cond_35
    iput v2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I

    return-void
.end method

.method public final containsAllEntries$kotlin_stdlib(Ljava/util/Collection;)Z
    .registers 4

    const-string v0, "m"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 431
    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 432
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 435
    :try_start_16
    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->containsEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z

    move-result v0
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_1c} :catch_1f

    if-nez v0, :cond_9

    nop

    :catch_1f
    :cond_1f
    return v1

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method public final containsEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z
    .registers 3

    const-string v0, "entry"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_11

    const/4 p0, 0x0

    return p0

    .line 424
    :cond_11
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object p0, p0, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->findValue(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final contentEquals(Ljava/util/Map;)Z
    .registers 4

    .line 427
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_16

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->containsAllEntries$kotlin_stdlib(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final ensureCapacity(I)V
    .registers 4

    if-ltz p1, :cond_43

    .line 222
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result v0

    if-le p1, v0, :cond_42

    .line 223
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;->newCapacity$kotlin_stdlib(II)I

    move-result p1

    .line 224
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilderKt;->copyOfUninitializedElements([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    if-eqz v0, :cond_23

    invoke-static {v0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilderKt;->copyOfUninitializedElements([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    iput-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->presenceArray:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->presenceArray:[I

    .line 227
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;

    # invokes: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;->computeHashSize(I)I
    invoke-static {v0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;->access$computeHashSize(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;I)I

    move-result p1

    .line 228
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v0

    if-le p1, v0, :cond_42

    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->rehash(I)V

    :cond_42
    return-void

    .line 221
    :cond_43
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0
.end method

.method public final ensureExtraCapacity(I)V
    .registers 3

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->shouldCompact(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, 0x1

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->compact(Z)V

    return-void

    .line 208
    :cond_b
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->ensureCapacity(I)V

    return-void
.end method

.method public final entriesIterator$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntriesItr;
    .registers 2

    .line 490
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntriesItr;

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntriesItr;-><init>(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)V

    return-object v0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .registers 1

    .line 14
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getEntries()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_11

    .line 163
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_f

    .line 164
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->contentEquals(Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public final findKey(Ljava/lang/Object;)I
    .registers 7

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 300
    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    .line 302
    :goto_6
    iget-object v2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hashArray:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-nez v2, :cond_e

    return v3

    :cond_e
    if-lez v2, :cond_1d

    .line 304
    iget-object v4, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    aget-object v4, v4, v2

    invoke-static {v4, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    return v2

    :cond_1d
    add-int/2addr v1, v3

    if-gez v1, :cond_21

    return v3

    :cond_21
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_2c

    .line 306
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_2c
    move v0, v2

    goto :goto_6
.end method

.method public final findValue(Ljava/lang/Object;)I
    .registers 4

    .line 311
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I

    :cond_2
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1a

    .line 313
    iget-object v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->presenceArray:[I

    aget v1, v1, v0

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_1a
    return v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 86
    :cond_8
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getCapacity$kotlin_stdlib()I
    .registers 1

    .line 193
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    array-length p0, p0

    return p0
.end method

.method public getEntries()Ljava/util/Set;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->entriesView:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;

    if-nez v0, :cond_b

    .line 155
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;-><init>(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)V

    .line 156
    iput-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->entriesView:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderEntries;

    :cond_b
    return-object v0
.end method

.method public final getHashSize()I
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hashArray:[I

    array-length p0, p0

    return p0
.end method

.method public getKeys()Ljava/util/Set;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysView:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderKeys;

    if-nez v0, :cond_b

    .line 137
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderKeys;

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderKeys;-><init>(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)V

    .line 138
    iput-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysView:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderKeys;

    :cond_b
    return-object v0
.end method

.method public getSize()I
    .registers 1

    .line 42
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->size:I

    return p0
.end method

.method public getValues()Ljava/util/Collection;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesView:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderValues;

    if-nez v0, :cond_b

    .line 146
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderValues;

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderValues;-><init>(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)V

    .line 147
    iput-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesView:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilderValues;

    :cond_b
    return-object v0
.end method

.method public final hash(Ljava/lang/Object;)I
    .registers 3

    if-eqz p1, :cond_7

    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const v0, -0x61c88647

    mul-int/2addr p1, v0

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hashShift:I

    ushr-int p0, p1, p0

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 169
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->entriesIterator$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntriesItr;

    move-result-object p0

    const/4 v0, 0x0

    .line 170
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 171
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntriesItr;->nextHashCode$kotlin_stdlib()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5

    :cond_11
    return v0
.end method

.method public isEmpty()Z
    .registers 1

    .line 79
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->size()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final isReadOnly$kotlin_stdlib()Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->isReadOnly:Z

    return p0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .registers 1

    .line 14
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getKeys()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final keysIterator$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$KeysItr;
    .registers 2

    .line 488
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$KeysItr;

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$KeysItr;-><init>(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 90
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->addKey$kotlin_stdlib(Ljava/lang/Object;)I

    move-result p1

    .line 92
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->allocateValuesArray()[Ljava/lang/Object;

    move-result-object p0

    if-gez p1, :cond_15

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 94
    aget-object v0, p0, p1

    .line 95
    aput-object p2, p0, p1

    return-object v0

    .line 98
    :cond_15
    aput-object p2, p0, p1

    const/4 p0, 0x0

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3

    const-string v0, "from"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 105
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->putAllEntries(Ljava/util/Collection;)Z

    return-void
.end method

.method public final putAllEntries(Ljava/util/Collection;)Z
    .registers 4

    .line 460
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 461
    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->ensureExtraCapacity(I)V

    .line 462
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 464
    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 465
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->putEntry(Ljava/util/Map$Entry;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    goto :goto_13

    :cond_27
    return v1
.end method

.method public final putEntry(Ljava/util/Map$Entry;)Z
    .registers 6

    .line 445
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->addKey$kotlin_stdlib(Ljava/lang/Object;)I

    move-result v0

    .line 446
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->allocateValuesArray()[Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x1

    if-ltz v0, :cond_16

    .line 448
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, v0

    return v1

    :cond_16
    neg-int v0, v0

    sub-int/2addr v0, v1

    .line 451
    aget-object v2, p0, v0

    .line 452
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 453
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, v0

    return v1

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public final putRehash(I)Z
    .registers 7

    .line 284
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 285
    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    .line 287
    :goto_a
    iget-object v2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hashArray:[I

    aget v3, v2, v0

    const/4 v4, 0x1

    if-nez v3, :cond_1a

    add-int/lit8 v1, p1, 0x1

    .line 289
    aput v1, v2, v0

    .line 290
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->presenceArray:[I

    aput v0, p0, p1

    return v4

    :cond_1a
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_20

    const/4 p0, 0x0

    return p0

    :cond_20
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_2a

    .line 294
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_a

    :cond_2a
    move v0, v2

    goto :goto_a
.end method

.method public final registerModification()V
    .registers 2

    .line 197
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->modCount:I

    return-void
.end method

.method public final rehash(I)V
    .registers 5

    .line 268
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->registerModification()V

    .line 269
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_f

    invoke-virtual {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->compact(Z)V

    .line 270
    :cond_f
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hashArray:[I

    .line 271
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;

    # invokes: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;->computeShift(I)I
    invoke-static {v0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;->access$computeShift(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hashShift:I

    .line 274
    :goto_1b
    iget p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I

    if-ge v2, p1, :cond_31

    add-int/lit8 p1, v2, 0x1

    .line 275
    invoke-virtual {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->putRehash(I)Z

    move-result v0

    if-eqz v0, :cond_29

    move v2, p1

    goto :goto_1b

    .line 276
    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 277
    const-string p1, "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"

    .line 276
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 109
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 112
    :cond_b
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v0, v0, p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->removeEntryAt(I)V

    return-object v0
.end method

.method public final removeEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z
    .registers 5

    const-string v0, "entry"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 473
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_14

    return v1

    .line 475
    :cond_14
    iget-object v2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v2, v2, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    return v1

    .line 476
    :cond_26
    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->removeEntryAt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final removeEntryAt(I)V
    .registers 4

    .line 363
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilderKt;->resetAt([Ljava/lang/Object;I)V

    .line 364
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    if-eqz v0, :cond_c

    invoke-static {v0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/ListBuilderKt;->resetAt([Ljava/lang/Object;I)V

    .line 365
    :cond_c
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->presenceArray:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->removeHashAt(I)V

    .line 366
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->presenceArray:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 367
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->size()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->size:I

    .line 368
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->registerModification()V

    return-void
.end method

.method public final removeHashAt(I)V
    .registers 11

    .line 375
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/ranges/RangesKt___RangesKt;->coerceAtMost(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    move v0, p1

    :cond_12
    add-int/lit8 v4, p1, -0x1

    if-nez p1, :cond_1d

    .line 377
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1e

    :cond_1d
    move p1, v4

    :goto_1e
    add-int/lit8 v3, v3, 0x1

    .line 378
    iget v4, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    if-le v3, v4, :cond_29

    .line 380
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hashArray:[I

    aput v1, p0, v0

    return-void

    .line 383
    :cond_29
    iget-object v4, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hashArray:[I

    aget v5, v4, p1

    if-nez v5, :cond_32

    .line 386
    aput v1, v4, v0

    return-void

    :cond_32
    const/4 v6, -0x1

    if-gez v5, :cond_3a

    .line 395
    aput v6, v4, v0

    :goto_37
    move v0, p1

    move v3, v1

    goto :goto_57

    .line 399
    :cond_3a
    iget-object v4, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    add-int/lit8 v7, v5, -0x1

    aget-object v4, v4, v7

    invoke-virtual {p0, v4}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hash(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, p1

    .line 404
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    and-int/2addr v4, v8

    if-lt v4, v3, :cond_57

    .line 406
    iget-object v3, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hashArray:[I

    aput v5, v3, v0

    .line 407
    iget-object v3, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->presenceArray:[I

    aput v0, v3, v7

    goto :goto_37

    :cond_57
    :goto_57
    add-int/2addr v2, v6

    if-gez v2, :cond_12

    .line 415
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->hashArray:[I

    aput v6, p0, v0

    return-void
.end method

.method public final removeKey$kotlin_stdlib(Ljava/lang/Object;)Z
    .registers 2

    .line 355
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_b

    const/4 p0, 0x0

    return p0

    .line 358
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->removeEntryAt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final removeValue$kotlin_stdlib(Ljava/lang/Object;)Z
    .registers 2

    .line 481
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->findValue(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_b

    const/4 p0, 0x0

    return p0

    .line 484
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->removeEntryAt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final shouldCompact(I)Z
    .registers 5

    .line 213
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result v0

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->length:I

    sub-int/2addr v0, v1

    .line 214
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, p1, :cond_1b

    add-int/2addr v0, v1

    if-lt v0, p1, :cond_1b

    .line 217
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    if-lt v1, p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge size()I
    .registers 1

    .line 14
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getSize()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 178
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->entriesIterator$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntriesItr;

    move-result-object p0

    const/4 v1, 0x0

    .line 181
    :goto_18
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Itr;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    if-lez v1, :cond_25

    .line 182
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_25
    invoke-virtual {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$EntriesItr;->nextAppendString(Ljava/lang/StringBuilder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 186
    :cond_2b
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "toString(...)"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final bridge values()Ljava/util/Collection;
    .registers 1

    .line 14
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->getValues()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final valuesIterator$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$ValuesItr;
    .registers 2

    .line 489
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$ValuesItr;

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$ValuesItr;-><init>(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;)V

    return-object v0
.end method
