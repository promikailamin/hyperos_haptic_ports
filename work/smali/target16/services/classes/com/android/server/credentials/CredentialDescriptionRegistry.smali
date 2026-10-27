.class public Lcom/android/server/credentials/CredentialDescriptionRegistry;
.super Ljava/lang/Object;
.source "CredentialDescriptionRegistry.java"


# static fields
.field public static final sCredentialDescriptionSessionPerUser:Landroid/util/SparseArray;

.field public static final sLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field public mCredentialDescriptions:Ljava/util/Map;

.field public mTotalDescriptionCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sCredentialDescriptionSessionPerUser:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    return-void
.end method

.method public static canProviderSatisfyAny(Ljava/util/Set;Ljava/util/Set;)Z
    .registers 3

    .line 209
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 210
    invoke-interface {p0, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static checkForMatch(Ljava/util/Set;Ljava/util/Set;)Z
    .registers 2

    .line 219
    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static clearAllSessions()V
    .registers 2

    .line 99
    sget-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 101
    :try_start_5
    sget-object v1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sCredentialDescriptionSessionPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 103
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_e
    move-exception v0

    sget-object v1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 104
    throw v0
.end method

.method public static clearUserSession(I)V
    .registers 3

    .line 87
    sget-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 89
    :try_start_5
    sget-object v1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sCredentialDescriptionSessionPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 91
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_e
    move-exception p0

    sget-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 92
    throw p0
.end method

.method public static forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;
    .registers 4

    .line 69
    sget-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 71
    :try_start_5
    sget-object v1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sCredentialDescriptionSessionPerUser:Landroid/util/SparseArray;

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/credentials/CredentialDescriptionRegistry;

    if-nez v2, :cond_18

    .line 75
    new-instance v2, Lcom/android/server/credentials/CredentialDescriptionRegistry;

    invoke-direct {v2}, Lcom/android/server/credentials/CredentialDescriptionRegistry;-><init>()V

    .line 76
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1c

    .line 80
    :cond_18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :catchall_1c
    move-exception p0

    sget-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 81
    throw p0
.end method

.method public static setSession(ILcom/android/server/credentials/CredentialDescriptionRegistry;)V
    .registers 4

    .line 112
    sget-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 114
    :try_start_5
    sget-object v1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sCredentialDescriptionSessionPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 116
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_e
    move-exception p0

    sget-object p1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 117
    throw p0
.end method


# virtual methods
.method public evictProviderWithPackageName(Ljava/lang/String;)V
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 203
    iget-object p0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method public executeRegisterRequest(Landroid/credentials/RegisterCredentialDescriptionRequest;Ljava/lang/String;)V
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 134
    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_12
    iget v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    const/16 v1, 0x80

    if-gt v0, v1, :cond_55

    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 138
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_55

    .line 140
    invoke-virtual {p1}, Landroid/credentials/RegisterCredentialDescriptionRequest;->getCredentialDescriptions()Ljava/util/Set;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 143
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 144
    iget p1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    iget-object v1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    sub-int/2addr p2, v0

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    :cond_55
    return-void
.end method

.method public executeUnregisterRequest(Landroid/credentials/UnregisterCredentialDescriptionRequest;Ljava/lang/String;)V
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 156
    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 158
    invoke-virtual {p1}, Landroid/credentials/UnregisterCredentialDescriptionRequest;->getCredentialDescriptions()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 159
    iget p1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    iget-object v1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    sub-int/2addr v0, p2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    :cond_35
    return-void
.end method

.method public getFilteredResultForProvider(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 7

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_41

    .line 171
    :cond_e
    iget-object p0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 172
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/credentials/CredentialDescription;

    .line 173
    invoke-virtual {v1}, Landroid/credentials/CredentialDescription;->getSupportedElementKeys()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->checkForMatch(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 175
    new-instance v2, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;

    .line 176
    invoke-virtual {v1}, Landroid/credentials/CredentialDescription;->getSupportedElementKeys()Ljava/util/Set;

    move-result-object v3

    .line 177
    invoke-virtual {v1}, Landroid/credentials/CredentialDescription;->getCredentialEntries()Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, p1, v3, v1}, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V

    .line 175
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_41
    :goto_41
    return-object v0
.end method

.method public getMatchingProviders(Ljava/util/Set;)Ljava/util/Set;
    .registers 9

    .line 186
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 187
    iget-object v1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    iget-object v3, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 189
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/credentials/CredentialDescription;

    .line 190
    invoke-virtual {v4}, Landroid/credentials/CredentialDescription;->getSupportedElementKeys()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->canProviderSatisfyAny(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 192
    new-instance v5, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;

    .line 193
    invoke-virtual {v4}, Landroid/credentials/CredentialDescription;->getSupportedElementKeys()Ljava/util/Set;

    move-result-object v6

    .line 194
    invoke-virtual {v4}, Landroid/credentials/CredentialDescription;->getCredentialEntries()Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v2, v6, v4}, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V

    .line 192
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_4e
    return-object v0
.end method
