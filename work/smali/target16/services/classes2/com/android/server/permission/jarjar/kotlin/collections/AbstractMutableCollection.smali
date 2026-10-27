.class public abstract Lcom/android/server/permission/jarjar/kotlin/collections/AbstractMutableCollection;
.super Ljava/util/AbstractCollection;
.source "AbstractMutableCollection.kt"

# interfaces
.implements Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSize()I
.end method

.method public final bridge size()I
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/AbstractMutableCollection;->getSize()I

    move-result p0

    return p0
.end method
