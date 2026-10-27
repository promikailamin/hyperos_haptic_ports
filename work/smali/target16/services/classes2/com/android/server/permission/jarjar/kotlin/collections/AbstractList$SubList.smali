.class public final Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$SubList;
.super Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;
.source "AbstractList.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public _size:I

.field public final fromIndex:I

.field public final list:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;II)V
    .registers 5

    const-string v0, "list"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$SubList;->list:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;

    iput p2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$SubList;->fromIndex:I

    .line 41
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;

    invoke-virtual {p1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractCollection;->size()I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;->checkRangeIndexes$kotlin_stdlib(III)V

    sub-int/2addr p3, p2

    .line 42
    iput p3, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$SubList;->_size:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4

    .line 46
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$SubList;->_size:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 48
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$SubList;->list:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$SubList;->fromIndex:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .registers 1

    .line 51
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$SubList;->_size:I

    return p0
.end method

.method public subList(II)Ljava/util/List;
    .registers 5

    .line 54
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;->Companion:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$SubList;->_size:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$Companion;->checkRangeIndexes$kotlin_stdlib(III)V

    .line 55
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$SubList;

    iget-object v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$SubList;->list:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;

    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$SubList;->fromIndex:I

    add-int/2addr p1, p0

    add-int/2addr p0, p2

    invoke-direct {v0, v1, p1, p0}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$SubList;-><init>(Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;II)V

    return-object v0
.end method
