.class Lcom/android/server/companion/AssociationStoreImpl;
.super Ljava/lang/Object;
.source "AssociationStoreImpl.java"

# interfaces
.implements Lcom/android/server/companion/AssociationStore;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CompanionDevice_AssociationStore"


# instance fields
.field private final mAddressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/MacAddress;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCachedPerUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/companion/AssociationStore$OnChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mAddressMap:Ljava/util/Map;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mCachedPerUser:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mListeners:Ljava/util/Set;

    return-void
.end method

.method private broadcastChange(ILandroid/companion/AssociationInfo;)V
    .registers 6
    .param p1, "changeType"    # I
    .param p2, "association"    # Landroid/companion/AssociationInfo;

    .line 287
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 288
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/AssociationStoreImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/AssociationStore$OnChangeListener;

    .line 289
    .local v2, "listener":Lcom/android/server/companion/AssociationStore$OnChangeListener;
    invoke-interface {v2, p1, p2}, Lcom/android/server/companion/AssociationStore$OnChangeListener;->onAssociationChanged(ILandroid/companion/AssociationInfo;)V

    .line 290
    .end local v2    # "listener":Lcom/android/server/companion/AssociationStore$OnChangeListener;
    goto :goto_9

    .line 291
    :cond_19
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private clearLocked()V
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 324
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mAddressMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 325
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 326
    return-void
.end method

.method private getAssociationsForUserLocked(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 239
    .local v0, "cached":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    if-eqz v0, :cond_b

    .line 240
    return-object v0

    .line 243
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v1, "associationsForUser":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    iget-object v2, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 245
    .local v3, "association":Landroid/companion/AssociationInfo;
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v4

    if-ne v4, p1, :cond_2f

    .line 246
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v3    # "association":Landroid/companion/AssociationInfo;
    :cond_2f
    goto :goto_1a

    .line 249
    :cond_30
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 250
    .local v2, "set":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    iget-object v3, p0, Lcom/android/server/companion/AssociationStoreImpl;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 251
    return-object v2
.end method

.method private invalidateCacheForUserLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 256
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 257
    return-void
.end method

.method static synthetic lambda$addAssociation$0(Landroid/net/MacAddress;)Ljava/util/Set;
    .registers 2
    .param p0, "it"    # Landroid/net/MacAddress;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$getAssociationsForPackage$2(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "it"    # Landroid/companion/AssociationInfo;

    .line 203
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getAssociationsForPackageWithAddress$3(ILjava/lang/String;Landroid/companion/AssociationInfo;)Z
    .registers 4
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "it"    # Landroid/companion/AssociationInfo;

    .line 211
    invoke-virtual {p2, p0, p1}, Landroid/companion/AssociationInfo;->belongsToPackage(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$setAssociations$4(Ljava/util/StringJoiner;Landroid/companion/AssociationInfo;)V
    .registers 3
    .param p0, "stringJoiner"    # Ljava/util/StringJoiner;
    .param p1, "assoc"    # Landroid/companion/AssociationInfo;

    .line 298
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method static synthetic lambda$setAssociationsLocked$5(Landroid/net/MacAddress;)Ljava/util/Set;
    .registers 2
    .param p0, "it"    # Landroid/net/MacAddress;

    .line 316
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$updateAssociation$1(Landroid/net/MacAddress;)Ljava/util/Set;
    .registers 2
    .param p0, "it"    # Landroid/net/MacAddress;

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method private setAssociationsLocked(Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .line 308
    .local p1, "associations":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/companion/AssociationInfo;>;"
    invoke-direct {p0}, Lcom/android/server/companion/AssociationStoreImpl;->clearLocked()V

    .line 310
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    .line 311
    .local v1, "association":Landroid/companion/AssociationInfo;
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    .line 312
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v3

    .line 315
    .local v3, "address":Landroid/net/MacAddress;
    if-eqz v3, :cond_3a

    .line 316
    iget-object v4, p0, Lcom/android/server/companion/AssociationStoreImpl;->mAddressMap:Ljava/util/Map;

    new-instance v5, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v1    # "association":Landroid/companion/AssociationInfo;
    .end local v2    # "id":I
    .end local v3    # "address":Landroid/net/MacAddress;
    :cond_3a
    goto :goto_7

    .line 319
    :cond_3b
    return-void
.end method


# virtual methods
.method addAssociation(Landroid/companion/AssociationInfo;)V
    .registers 7
    .param p1, "association"    # Landroid/companion/AssociationInfo;

    .line 76
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    .line 83
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_7
    iget-object v2, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 85
    const-string v2, "CompanionDevice_AssociationStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Association with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    monitor-exit v1

    return-void

    .line 88
    :cond_33
    iget-object v2, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    .line 91
    .local v2, "address":Landroid/net/MacAddress;
    if-eqz v2, :cond_56

    .line 92
    iget-object v3, p0, Lcom/android/server/companion/AssociationStoreImpl;->mAddressMap:Ljava/util/Map;

    new-instance v4, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_56
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/companion/AssociationStoreImpl;->invalidateCacheForUserLocked(I)V

    .line 96
    .end local v2    # "address":Landroid/net/MacAddress;
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_7 .. :try_end_5e} :catchall_63

    .line 98
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/server/companion/AssociationStoreImpl;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    .line 99
    return-void

    .line 96
    :catchall_63
    move-exception v2

    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 275
    const-string v0, "Companion Device Associations: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 276
    invoke-virtual {p0}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 277
    const-string v0, "<empty>\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_42

    .line 279
    :cond_15
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 280
    invoke-virtual {p0}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    .line 281
    .local v1, "a":Landroid/companion/AssociationInfo;
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 282
    .end local v1    # "a":Landroid/companion/AssociationInfo;
    goto :goto_22

    .line 284
    :cond_42
    :goto_42
    return-void
.end method

.method public getAssociationById(I)Landroid/companion/AssociationInfo;
    .registers 5
    .param p1, "id"    # I

    .line 215
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    monitor-exit v0

    return-object v1

    .line 217
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getAssociations()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 189
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "macAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 221
    invoke-static {p1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    .line 223
    .local v0, "address":Landroid/net/MacAddress;
    iget-object v1, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_7
    iget-object v2, p0, Lcom/android/server/companion/AssociationStoreImpl;->mAddressMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 225
    .local v2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v2, :cond_17

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 227
    :cond_17
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    .local v3, "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 229
    .local v5, "id":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/companion/AssociationInfo;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    nop

    .end local v5    # "id":Ljava/lang/Integer;
    goto :goto_24

    .line 232
    :cond_3d
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 233
    .end local v2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v3    # "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_43

    throw v2
.end method

.method public getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForUser(I)Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, "associationsForUser":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    new-instance v1, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v1

    .line 204
    .local v1, "associationsForPackage":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getAssociationsForPackageWithAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "macAddress"    # Ljava/lang/String;

    .line 209
    invoke-virtual {p0, p3}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 210
    .local v0, "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    new-instance v1, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    return-object v1
.end method

.method public getAssociationsForUser(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForUserLocked(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 195
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/companion/AssociationStore$OnChangeListener;

    .line 260
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/AssociationStoreImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    monitor-exit v0

    .line 263
    return-void

    .line 262
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method removeAssociation(I)V
    .registers 7
    .param p1, "id"    # I

    .line 152
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    .line 155
    .local v1, "association":Landroid/companion/AssociationInfo;
    if-nez v1, :cond_13

    .line 157
    monitor-exit v0

    return-void

    .line 165
    :cond_13
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    .line 166
    .local v2, "macAddress":Landroid/net/MacAddress;
    if-eqz v2, :cond_28

    .line 167
    iget-object v3, p0, Lcom/android/server/companion/AssociationStoreImpl;->mAddressMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 170
    :cond_28
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/companion/AssociationStoreImpl;->invalidateCacheForUserLocked(I)V

    .line 171
    .end local v2    # "macAddress":Landroid/net/MacAddress;
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_35

    .line 173
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/companion/AssociationStoreImpl;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    .line 174
    return-void

    .line 171
    .end local v1    # "association":Landroid/companion/AssociationInfo;
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method setAssociations(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .line 301
    .local p1, "allAssociations":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/companion/AssociationInfo;>;"
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->setAssociationsLocked(Ljava/util/Collection;)V

    .line 303
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public unregisterListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/companion/AssociationStore$OnChangeListener;

    .line 266
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/AssociationStoreImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method updateAssociation(Landroid/companion/AssociationInfo;)V
    .registers 10
    .param p1, "updated"    # Landroid/companion/AssociationInfo;

    .line 102
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    .line 111
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_7
    iget-object v2, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 113
    .local v2, "current":Landroid/companion/AssociationInfo;
    if-nez v2, :cond_17

    .line 115
    monitor-exit v1

    return-void

    .line 119
    :cond_17
    invoke-virtual {v2, p1}, Landroid/companion/AssociationInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 121
    monitor-exit v1

    return-void

    .line 125
    :cond_1f
    iget-object v3, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/companion/AssociationStoreImpl;->invalidateCacheForUserLocked(I)V

    .line 130
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v3

    .line 131
    .local v3, "updatedAddress":Landroid/net/MacAddress;
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v4

    .line 132
    .local v4, "currentAddress":Landroid/net/MacAddress;
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 133
    .local v5, "macAddressChanged":Z
    if-eqz v5, :cond_66

    .line 134
    if-eqz v4, :cond_50

    .line 135
    iget-object v6, p0, Lcom/android/server/companion/AssociationStoreImpl;->mAddressMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 137
    :cond_50
    if-eqz v3, :cond_66

    .line 138
    iget-object v6, p0, Lcom/android/server/companion/AssociationStoreImpl;->mAddressMap:Ljava/util/Map;

    new-instance v7, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda4;

    invoke-direct {v7}, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v3    # "updatedAddress":Landroid/net/MacAddress;
    .end local v4    # "currentAddress":Landroid/net/MacAddress;
    :cond_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_7 .. :try_end_67} :catchall_71

    .line 143
    if-eqz v5, :cond_6b

    const/4 v1, 0x2

    goto :goto_6c

    .line 144
    :cond_6b
    const/4 v1, 0x3

    :goto_6c
    nop

    .line 145
    .local v1, "changeType":I
    invoke-direct {p0, v1, p1}, Lcom/android/server/companion/AssociationStoreImpl;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    .line 146
    return-void

    .line 141
    .end local v1    # "changeType":I
    .end local v2    # "current":Landroid/companion/AssociationInfo;
    .end local v5    # "macAddressChanged":Z
    :catchall_71
    move-exception v2

    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v2
.end method
