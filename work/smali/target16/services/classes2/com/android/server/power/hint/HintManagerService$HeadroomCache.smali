.class public Lcom/android/server/power/hint/HintManagerService$HeadroomCache;
.super Ljava/lang/Object;
.source "HintManagerService.java"


# instance fields
.field public final mItemExpDurationMillis:J

.field public final mItemList:Ljava/util/List;

.field public final mKeyItemMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(IJ)V
    .registers 5

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    .line 289
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    .line 290
    iput-wide p2, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemExpDurationMillis:J

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 267
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 268
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;

    .line 269
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 271
    :cond_15
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;-><init>(Lcom/android/server/power/hint/HintManagerService$HeadroomCache;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 277
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;

    invoke-virtual {v0}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 278
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;

    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;->mKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 280
    :cond_26
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;

    if-nez p0, :cond_32

    const/4 p0, 0x0

    return-object p0

    .line 284
    :cond_32
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;->mValue:Ljava/lang/Object;

    return-object p0
.end method
