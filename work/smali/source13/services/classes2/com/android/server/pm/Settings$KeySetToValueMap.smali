.class Lcom/android/server/pm/Settings$KeySetToValueMap;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeySetToValueMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final mKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 5379
    .local p0, "this":Lcom/android/server/pm/Settings$KeySetToValueMap;, "Lcom/android/server/pm/Settings$KeySetToValueMap<TK;TV;>;"
    .local p1, "keySet":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5380
    iput-object p1, p0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mKeySet:Ljava/util/Set;

    .line 5381
    iput-object p2, p0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mValue:Ljava/lang/Object;

    .line 5382
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 5426
    .local p0, "this":Lcom/android/server/pm/Settings$KeySetToValueMap;, "Lcom/android/server/pm/Settings$KeySetToValueMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 5396
    .local p0, "this":Lcom/android/server/pm/Settings$KeySetToValueMap;, "Lcom/android/server/pm/Settings$KeySetToValueMap<TK;TV;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mKeySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 5401
    .local p0, "this":Lcom/android/server/pm/Settings$KeySetToValueMap;, "Lcom/android/server/pm/Settings$KeySetToValueMap<TK;TV;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mValue:Ljava/lang/Object;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 5441
    .local p0, "this":Lcom/android/server/pm/Settings$KeySetToValueMap;, "Lcom/android/server/pm/Settings$KeySetToValueMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 5406
    .local p0, "this":Lcom/android/server/pm/Settings$KeySetToValueMap;, "Lcom/android/server/pm/Settings$KeySetToValueMap<TK;TV;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 5391
    .local p0, "this":Lcom/android/server/pm/Settings$KeySetToValueMap;, "Lcom/android/server/pm/Settings$KeySetToValueMap<TK;TV;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mKeySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 5431
    .local p0, "this":Lcom/android/server/pm/Settings$KeySetToValueMap;, "Lcom/android/server/pm/Settings$KeySetToValueMap<TK;TV;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mKeySet:Ljava/util/Set;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 5411
    .local p0, "this":Lcom/android/server/pm/Settings$KeySetToValueMap;, "Lcom/android/server/pm/Settings$KeySetToValueMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 5421
    .local p0, "this":Lcom/android/server/pm/Settings$KeySetToValueMap;, "Lcom/android/server/pm/Settings$KeySetToValueMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 5416
    .local p0, "this":Lcom/android/server/pm/Settings$KeySetToValueMap;, "Lcom/android/server/pm/Settings$KeySetToValueMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    .line 5386
    .local p0, "this":Lcom/android/server/pm/Settings$KeySetToValueMap;, "Lcom/android/server/pm/Settings$KeySetToValueMap<TK;TV;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mKeySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 5436
    .local p0, "this":Lcom/android/server/pm/Settings$KeySetToValueMap;, "Lcom/android/server/pm/Settings$KeySetToValueMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
