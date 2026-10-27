.class public Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$IteratorImpl;
.super Ljava/lang/Object;
.source "AbstractList.kt"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public index:I

.field public final synthetic this$0:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$IteratorImpl;->this$0:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .registers 1

    .line 83
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$IteratorImpl;->index:I

    return p0
.end method

.method public hasNext()Z
    .registers 2

    .line 85
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$IteratorImpl;->index:I

    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$IteratorImpl;->this$0:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;

    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractCollection;->size()I

    move-result p0

    if-ge v0, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    .line 88
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$IteratorImpl;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 89
    iget-object v0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$IteratorImpl;->this$0:Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;

    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$IteratorImpl;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$IteratorImpl;->index:I

    invoke-virtual {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 88
    :cond_13
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .registers 2

    .line 0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setIndex(I)V
    .registers 2

    .line 83
    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractList$IteratorImpl;->index:I

    return-void
.end method
