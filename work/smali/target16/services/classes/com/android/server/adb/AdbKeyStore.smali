.class public Lcom/android/server/adb/AdbKeyStore;
.super Ljava/lang/Object;
.source "AdbKeyStore.java"


# instance fields
.field public final mAdbKeyUser:Lcom/android/server/adb/AdbdKeyStoreStorage;

.field public mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

.field public final mAuthStore:Lcom/android/server/adb/AdbAuthorizationStore;

.field public final mContext:Landroid/content/Context;

.field public final mSystemKeys:Ljava/util/Set;

.field public final mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Lcom/android/server/adb/AdbDebuggingManager$Ticker;)V
    .registers 5

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/server/adb/AdbKeyStore;->mContext:Landroid/content/Context;

    .line 95
    iput-object p4, p0, Lcom/android/server/adb/AdbKeyStore;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    .line 97
    new-instance p1, Lcom/android/server/adb/AdbdKeyStoreStorage;

    invoke-direct {p1, p3}, Lcom/android/server/adb/AdbdKeyStoreStorage;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/adb/AdbKeyStore;->mAdbKeyUser:Lcom/android/server/adb/AdbdKeyStoreStorage;

    .line 98
    new-instance p1, Lcom/android/server/adb/AdbAuthorizationStore;

    invoke-direct {p1, p2}, Lcom/android/server/adb/AdbAuthorizationStore;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthStore:Lcom/android/server/adb/AdbAuthorizationStore;

    .line 99
    invoke-virtual {p1}, Lcom/android/server/adb/AdbAuthorizationStore;->load()Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    .line 105
    new-instance p1, Lcom/android/server/adb/AdbdKeyStoreStorage;

    new-instance p2, Ljava/io/File;

    const-string p3, "/adb_keys"

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/android/server/adb/AdbdKeyStoreStorage;-><init>(Ljava/io/File;)V

    .line 106
    invoke-virtual {p1}, Lcom/android/server/adb/AdbdKeyStoreStorage;->loadKeys()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/adb/AdbKeyStore;->mSystemKeys:Ljava/util/Set;

    .line 107
    invoke-virtual {p0}, Lcom/android/server/adb/AdbKeyStore;->copyUserKeysToTempAuthorizationStore()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addTrustedNetwork(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 115
    :try_start_1
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->trustedNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {p0}, Lcom/android/server/adb/AdbKeyStore;->persistKeyStore()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 117
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public final copyUserKeysToTempAuthorizationStore()V
    .registers 6

    .line 160
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAdbKeyUser:Lcom/android/server/adb/AdbdKeyStoreStorage;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbdKeyStoreStorage;->loadKeys()Ljava/util/Set;

    move-result-object v0

    .line 162
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 163
    iget-object v3, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-virtual {v3}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 167
    iget-object v1, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-virtual {v1}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/adb/AdbKeyStore;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    invoke-interface {v3}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_b

    :cond_38
    if-eqz v1, :cond_3d

    .line 172
    invoke-virtual {p0}, Lcom/android/server/adb/AdbKeyStore;->persistKeyStore()V

    :cond_3d
    return-void
.end method

.method public declared-synchronized deleteKeyStore()V
    .registers 2

    monitor-enter p0

    .line 243
    :try_start_1
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->clear()V

    .line 244
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthStore:Lcom/android/server/adb/AdbAuthorizationStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbAuthorizationStore;->delete()V

    .line 245
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAdbKeyUser:Lcom/android/server/adb/AdbdKeyStoreStorage;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbdKeyStoreStorage;->delete()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 246
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public final filterOutOldKeys()Z
    .registers 9

    .line 190
    invoke-virtual {p0}, Lcom/android/server/adb/AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    return v3

    .line 195
    :cond_c
    iget-object v2, p0, Lcom/android/server/adb/AdbKeyStore;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    invoke-interface {v2}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v4

    .line 196
    iget-object v2, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    .line 197
    invoke-virtual {v2}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 198
    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 199
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v0

    cmp-long v6, v4, v6

    if-lez v6, :cond_20

    .line 202
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 v3, 0x1

    goto :goto_20

    :cond_40
    if-eqz v3, :cond_51

    .line 209
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAdbKeyUser:Lcom/android/server/adb/AdbdKeyStoreStorage;

    iget-object p0, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-virtual {p0}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/adb/AdbdKeyStoreStorage;->saveKeys(Ljava/util/Set;)V

    :cond_51
    return v3
.end method

.method public declared-synchronized findKeyFromFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    monitor-exit p0

    return-object p1

    :catchall_33
    move-exception p1

    goto :goto_38

    .line 130
    :cond_35
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_33

    throw p1
.end method

.method public declared-synchronized getAllowedConnectionTime()J
    .registers 5

    monitor-enter p0

    .line 288
    :try_start_1
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mContext:Landroid/content/Context;

    .line 289
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_allowed_connection_time"

    const-wide/32 v2, 0x240c8400

    .line 288
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-wide v0

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public declared-synchronized getKeys()Ljava/util/Set;
    .registers 3

    monitor-enter p0

    .line 120
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-virtual {v1}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public declared-synchronized getLastConnectionTime(Ljava/lang/String;)J
    .registers 5

    monitor-enter p0

    .line 253
    :try_start_1
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys()Ljava/util/Map;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-wide v0

    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public declared-synchronized getNextExpirationTime()J
    .registers 15

    monitor-enter p0

    .line 220
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/adb/AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_4a

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, -0x1

    if-nez v4, :cond_f

    .line 223
    monitor-exit p0

    return-wide v5

    .line 225
    :cond_f
    :try_start_f
    iget-object v4, p0, Lcom/android/server/adb/AdbKeyStore;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    invoke-interface {v4}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v7

    .line 226
    iget-object v4, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    .line 227
    invoke-virtual {v4}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v9, v5

    .line 228
    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4c

    .line 229
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 230
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v11, v0

    sub-long/2addr v11, v7

    .line 233
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_4a

    cmp-long v13, v9, v5

    if-eqz v13, :cond_48

    cmp-long v13, v11, v9

    if-gez v13, :cond_24

    :cond_48
    move-wide v9, v11

    goto :goto_24

    :catchall_4a
    move-exception v0

    goto :goto_4e

    .line 238
    :cond_4c
    monitor-exit p0

    return-wide v9

    :goto_4e
    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4a

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public declared-synchronized isTrustedNetwork(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    .line 321
    :try_start_1
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->trustedNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return p1

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public declared-synchronized persistKeyStore()V
    .registers 3

    monitor-enter p0

    .line 180
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/adb/AdbKeyStore;->filterOutOldKeys()Z

    .line 181
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 182
    invoke-virtual {p0}, Lcom/android/server/adb/AdbKeyStore;->deleteKeyStore()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 183
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    goto :goto_2b

    .line 185
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthStore:Lcom/android/server/adb/AdbAuthorizationStore;

    iget-object v1, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-virtual {v0, v1}, Lcom/android/server/adb/AdbAuthorizationStore;->save(Lcom/android/server/adb/AdbAuthorizationStore$Entries;)V

    .line 186
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAdbKeyUser:Lcom/android/server/adb/AdbdKeyStoreStorage;

    iget-object v1, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-virtual {v1}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/adb/AdbdKeyStoreStorage;->saveKeys(Ljava/util/Set;)V
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_11

    .line 187
    monitor-exit p0

    return-void

    :goto_2b
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_11

    throw v0
.end method

.method public declared-synchronized reloadKeyMap()V
    .registers 2

    monitor-enter p0

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthStore:Lcom/android/server/adb/AdbAuthorizationStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbAuthorizationStore;->load()Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 112
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public declared-synchronized removeKey(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 135
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {p0}, Lcom/android/server/adb/AdbKeyStore;->persistKeyStore()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_1c

    :catchall_1a
    move-exception p1

    goto :goto_1e

    .line 138
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1a

    throw p1
.end method

.method public declared-synchronized setLastConnectionTime(Ljava/lang/String;J)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 258
    :try_start_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/adb/AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;JZ)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 259
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public declared-synchronized setLastConnectionTime(Ljava/lang/String;JZ)V
    .registers 7

    monitor-enter p0

    .line 270
    :try_start_1
    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    .line 271
    invoke-virtual {v0}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_25

    cmp-long v0, v0, p2

    if-ltz v0, :cond_27

    if-nez p4, :cond_27

    .line 273
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    goto :goto_40

    .line 277
    :cond_27
    :try_start_27
    iget-object p4, p0, Lcom/android/server/adb/AdbKeyStore;->mSystemKeys:Ljava/util/Set;

    invoke-interface {p4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_25

    if-eqz p4, :cond_31

    .line 278
    monitor-exit p0

    return-void

    .line 280
    :cond_31
    :try_start_31
    iget-object p4, p0, Lcom/android/server/adb/AdbKeyStore;->mAuthEntries:Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-virtual {p4}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys()Ljava/util/Map;

    move-result-object p4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_25

    .line 281
    monitor-exit p0

    return-void

    :goto_40
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_25

    throw p1
.end method

.method public declared-synchronized updateKeyStore()V
    .registers 2

    monitor-enter p0

    .line 150
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/adb/AdbKeyStore;->filterOutOldKeys()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 151
    invoke-virtual {p0}, Lcom/android/server/adb/AdbKeyStore;->persistKeyStore()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception v0

    goto :goto_f

    .line 153
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :goto_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_b

    throw v0
.end method
