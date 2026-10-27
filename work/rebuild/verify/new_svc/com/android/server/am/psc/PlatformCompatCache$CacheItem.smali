.class public Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;
.super Ljava/lang/Object;
.source "PlatformCompatCache.java"

# interfaces
.implements Lcom/android/server/compat/CompatChange$ChangeListener;


# instance fields
.field public final mCache:Landroid/util/ArrayMap;

.field public final mChangeId:J

.field public final mLock:Ljava/lang/Object;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public constructor <init>(Lcom/android/server/compat/PlatformCompat;J)V
    .registers 5

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    .line 183
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    .line 187
    iput-object p1, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 188
    iput-wide p2, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mChangeId:J

    .line 189
    invoke-virtual {p1, p2, p3, p0}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    return-void
.end method


# virtual methods
.method public fetchLocked(Landroid/content/pm/ApplicationInfo;I)Z
    .registers 7

    .line 216
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-wide v2, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mChangeId:J

    .line 217
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-ltz p2, :cond_1e

    .line 220
    iget-object p0, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 222
    :cond_1e
    iget-object p0, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :goto_25
    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public invalidate(Landroid/content/pm/ApplicationInfo;)V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isChangeEnabled(Landroid/content/pm/ApplicationInfo;)Z
    .registers 6

    .line 193
    iget-object v0, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_15

    .line 197
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->fetchLocked(Landroid/content/pm/ApplicationInfo;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    goto :goto_37

    .line 199
    :cond_15
    iget-object v2, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 200
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_31

    .line 201
    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 204
    :cond_31
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->fetchLocked(Landroid/content/pm/ApplicationInfo;I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 205
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_13

    throw p0
.end method

.method public onApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 5

    .line 228
    iget-object v0, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_13

    .line 231
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->fetchLocked(Landroid/content/pm/ApplicationInfo;I)Z

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 233
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_11

    throw p0
.end method

.method public onCompatChange(Ljava/lang/String;)V
    .registers 4

    .line 238
    iget-object v0, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2a

    .line 241
    iget-object v1, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_25

    .line 243
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->fetchLocked(Landroid/content/pm/ApplicationInfo;I)Z

    goto :goto_2a

    :catchall_23
    move-exception p0

    goto :goto_2c

    .line 245
    :cond_25
    iget-object p0, p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 248
    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_23

    throw p0
.end method
