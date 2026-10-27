.class final Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesList;
.super Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;
.source "EnumEntries.kt"

# interfaces
.implements Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntries;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;",
        "Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntries;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final entries:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Enum;)V
    .registers 3

    const-string v0, "entries"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    return-void
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .registers 2

    .line 92
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Deserialization is supported via proxy only"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 2

    .line 88
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesSerializationProxy;

    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesSerializationProxy;-><init>([Ljava/lang/Enum;)V

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Enum;)Z
    .registers 3

    const-string v0, "element"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    if-ne p0, p1, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 3

    .line 48
    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesList;->contains(Ljava/lang/Enum;)Z

    move-result p0

    return p0
.end method

.method public get(I)Ljava/lang/Enum;
    .registers 4

    .line 59
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;

    iget-object v1, p0, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    array-length v1, v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 60
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesList;->get(I)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    array-length p0, p0

    return p0
.end method

.method public indexOf(Ljava/lang/Enum;)I
    .registers 3

    const-string v0, "element"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 79
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesList;->entries:[Ljava/lang/Enum;

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    if-ne p0, p1, :cond_14

    return v0

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .registers 3

    .line 48
    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesList;->indexOf(Ljava/lang/Enum;)I

    move-result p0

    return p0
.end method

.method public lastIndexOf(Ljava/lang/Enum;)I
    .registers 3

    const-string v0, "element"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesList;->indexOf(Ljava/lang/Enum;)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    .line 48
    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesList;->lastIndexOf(Ljava/lang/Enum;)I

    move-result p0

    return p0
.end method
