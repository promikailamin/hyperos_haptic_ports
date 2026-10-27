.class public final Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;
.super Ljava/lang/Object;
.source "MapBuilder.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$computeHashSize(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;I)I
    .registers 2

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;->computeHashSize(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$computeShift(Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;I)I
    .registers 2

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder$Companion;->computeShift(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final computeHashSize(I)I
    .registers 2

    const/4 p0, 0x1

    .line 500
    invoke-static {p1, p0}, Lcom/android/server/permission/jarjar/kotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    return p0
.end method

.method public final computeShift(I)I
    .registers 2

    .line 502
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getEmpty$kotlin_stdlib()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;
    .registers 1

    .line 498
    # getter for: Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->Empty:Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;->access$getEmpty$cp()Lcom/android/server/permission/jarjar/kotlin/collections/builders/MapBuilder;

    move-result-object p0

    return-object p0
.end method
