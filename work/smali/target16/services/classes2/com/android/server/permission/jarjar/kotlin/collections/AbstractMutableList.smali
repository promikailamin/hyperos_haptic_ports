.class public abstract Lcom/android/server/permission/jarjar/kotlin/collections/AbstractMutableList;
.super Ljava/util/AbstractList;
.source "AbstractMutableList.kt"

# interfaces
.implements Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSize()I
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractMutableList;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract removeAt(I)Ljava/lang/Object;
.end method

.method public final bridge size()I
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractMutableList;->getSize()I

    move-result p0

    return p0
.end method
