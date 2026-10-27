.class public Lcom/android/server/om/OverlayReferenceMapper;
.super Ljava/lang/Object;
.source "OverlayReferenceMapper.java"


# instance fields
.field public final mActorPkgToPkgs:Landroid/util/ArrayMap;

.field public final mActorToTargetToOverlays:Landroid/util/ArrayMap;

.field public mDeferRebuild:Z

.field public final mLock:Ljava/lang/Object;

.field public final mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;


# direct methods
.method public constructor <init>(ZLcom/android/server/om/OverlayReferenceMapper$Provider;)V
    .registers 4

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 94
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Landroid/util/ArrayMap;

    .line 109
    iput-boolean p1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    if-eqz p2, :cond_1d

    goto :goto_22

    .line 110
    :cond_1d
    new-instance p2, Lcom/android/server/om/OverlayReferenceMapper$1;

    invoke-direct {p2, p0}, Lcom/android/server/om/OverlayReferenceMapper$1;-><init>(Lcom/android/server/om/OverlayReferenceMapper;)V

    :goto_22
    iput-object p2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    return-void
.end method


# virtual methods
.method public final addOverlay(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Collection;)V
    .registers 7

    .line 300
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {p0, v1, p3}, Lcom/android/server/om/OverlayReferenceMapper;->removeOverlay(Ljava/lang/String;Ljava/util/Collection;)V

    .line 304
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 305
    invoke-interface {v2, p1}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getTargetToOverlayables(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 307
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 308
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/AndroidPackage;

    if-nez p2, :cond_22

    .line 310
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    goto :goto_41

    .line 312
    :cond_22
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayables()Ljava/util/Map;

    move-result-object p2

    .line 314
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 315
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 317
    monitor-exit v0

    return-void

    .line 319
    :cond_3c
    invoke-virtual {p0, p1, v2, v1, p3}, Lcom/android/server/om/OverlayReferenceMapper;->addOverlayToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 321
    :cond_3f
    monitor-exit v0

    return-void

    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_20

    throw p0
.end method

.method public final addOverlayToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 8

    .line 391
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 393
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_1a

    .line 395
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 396
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_38

    .line 399
    :cond_1a
    :goto_1a
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-nez v2, :cond_2a

    .line 401
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 402
    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_2a
    invoke-virtual {v2, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 406
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_18

    .line 409
    iget-object p0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    invoke-interface {p0, p1}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getActorPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 406
    :goto_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_18

    throw p0
.end method

.method public addPkg(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;)Landroid/util/ArraySet;
    .registers 6

    .line 163
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 166
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayables()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 167
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/om/OverlayReferenceMapper;->addTarget(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_2c

    .line 171
    :cond_18
    :goto_18
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    invoke-interface {v2, p1}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getTargetToOverlayables(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 172
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/om/OverlayReferenceMapper;->addOverlay(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Collection;)V

    .line 175
    :cond_23
    iget-boolean p1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    if-nez p1, :cond_2a

    .line 176
    invoke-virtual {p0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuild()V

    .line 179
    :cond_2a
    monitor-exit v0

    return-object v1

    .line 180
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_16

    throw p0
.end method

.method public final addTarget(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Collection;)V
    .registers 12

    .line 238
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {p0, v1, p3}, Lcom/android/server/om/OverlayReferenceMapper;->removeTarget(Ljava/lang/String;Ljava/util/Collection;)V

    .line 242
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayables()Ljava/util/Map;

    move-result-object p1

    .line 243
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 245
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 246
    invoke-virtual {p0, v2, v1, p3}, Lcom/android/server/om/OverlayReferenceMapper;->addTargetToMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 248
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_39
    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 249
    iget-object v6, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 250
    invoke-interface {v6, v5}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getTargetToOverlayables(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_39

    .line 251
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 252
    invoke-static {v6, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 253
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-virtual {p0, v2, v1, v5, p3}, Lcom/android/server/om/OverlayReferenceMapper;->addOverlayToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_39

    :catchall_67
    move-exception p0

    goto :goto_6b

    .line 258
    :cond_69
    monitor-exit v0

    return-void

    :goto_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_67

    throw p0
.end method

.method public final addTargetToMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 6

    .line 370
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_14

    .line 372
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 373
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_14
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_24

    .line 378
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 379
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_24
    iget-object p0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    invoke-interface {p0, p1}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getActorPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ensureMapBuilt()V
    .registers 2

    .line 334
    iget-boolean v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    if-eqz v0, :cond_e

    .line 335
    invoke-virtual {p0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuildIfDeferred()V

    .line 336
    const-string p0, "OverlayReferenceMapper"

    const-string v0, "The actor map was queried before the system was ready, which mayresult in decreased performance."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public getActorPkgToPkgs()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 142
    iget-object p0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public isValidActor(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/om/OverlayReferenceMapper;->ensureMapBuilt()V

    .line 148
    iget-object p0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_1a

    .line 149
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :catchall_18
    move-exception p0

    goto :goto_1d

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    monitor-exit v0

    return p0

    .line 150
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_18

    throw p0
.end method

.method public final rebuild()V
    .registers 9

    .line 342
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 344
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 345
    iget-object v3, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    invoke-interface {v3, v2}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getActorPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    goto :goto_12

    .line 350
    :cond_2b
    iget-object v4, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 351
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 352
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 354
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 355
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 356
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_40

    :catchall_59
    move-exception p0

    goto :goto_63

    .line 360
    :cond_5b
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 362
    :cond_61
    monitor-exit v0

    return-void

    :goto_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_59

    throw p0
.end method

.method public rebuildIfDeferred()V
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    if-eqz v1, :cond_10

    .line 327
    invoke-virtual {p0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuild()V

    const/4 v1, 0x0

    .line 328
    iput-boolean v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    goto :goto_10

    :catchall_e
    move-exception p0

    goto :goto_12

    .line 330
    :cond_10
    :goto_10
    monitor-exit v0

    return-void

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_e

    throw p0
.end method

.method public final removeOverlay(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 9

    .line 265
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_4e

    .line 268
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 269
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 270
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1b
    if-ltz v3, :cond_40

    .line 272
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 274
    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 275
    iget-object v4, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 276
    iget-object v5, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    invoke-interface {v5, v4}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getActorPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :catchall_3b
    move-exception p0

    goto :goto_50

    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 283
    :cond_40
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 284
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_4b
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 287
    :cond_4e
    monitor-exit v0

    return-void

    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_3b

    throw p0
.end method

.method public removePkg(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 194
    invoke-virtual {p0, p1, v1}, Lcom/android/server/om/OverlayReferenceMapper;->removeTarget(Ljava/lang/String;Ljava/util/Collection;)V

    .line 195
    invoke-virtual {p0, p1, v1}, Lcom/android/server/om/OverlayReferenceMapper;->removeOverlay(Ljava/lang/String;Ljava/util/Collection;)V

    .line 197
    iget-boolean p1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    if-nez p1, :cond_18

    .line 198
    invoke-virtual {p0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuild()V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1a

    .line 201
    :cond_18
    :goto_18
    monitor-exit v0

    return-object v1

    .line 202
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_16

    throw p0
.end method

.method public final removeTarget(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 8

    .line 209
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_40

    .line 212
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 213
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 214
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 215
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v3, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 218
    iget-object v4, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    invoke-interface {v4, v3}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getActorPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 221
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_3d

    :catchall_3b
    move-exception p0

    goto :goto_42

    :cond_3d
    :goto_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 225
    :cond_40
    monitor-exit v0

    return-void

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_3b

    throw p0
.end method
