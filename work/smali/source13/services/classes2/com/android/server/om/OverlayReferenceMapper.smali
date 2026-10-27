.class public Lcom/android/server/om/OverlayReferenceMapper;
.super Ljava/lang/Object;
.source "OverlayReferenceMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayReferenceMapper$Provider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OverlayReferenceMapper"


# instance fields
.field private final mActorPkgToPkgs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mActorToTargetToOverlays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mDeferRebuild:Z

.field private final mLock:Ljava/lang/Object;

.field private final mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;


# direct methods
.method public constructor <init>(ZLcom/android/server/om/OverlayReferenceMapper$Provider;)V
    .registers 4
    .param p1, "deferRebuild"    # Z
    .param p2, "provider"    # Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 96
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Landroid/util/ArrayMap;

    .line 111
    iput-boolean p1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    .line 112
    if-eqz p2, :cond_1e

    move-object v0, p2

    goto :goto_23

    :cond_1e
    new-instance v0, Lcom/android/server/om/OverlayReferenceMapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/om/OverlayReferenceMapper$1;-><init>(Lcom/android/server/om/OverlayReferenceMapper;)V

    :goto_23
    iput-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 140
    return-void
.end method

.method private addOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Collection;)V
    .registers 22
    .param p1, "overlayPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 309
    .local p2, "otherPkgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local p3, "changedPackages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    iget-object v3, v1, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 310
    :try_start_7
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "overlay":Ljava/lang/String;
    invoke-direct {v1, v0, v2}, Lcom/android/server/om/OverlayReferenceMapper;->removeOverlay(Ljava/lang/String;Ljava/util/Collection;)V

    .line 313
    iget-object v4, v1, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_7d

    .line 314
    move-object/from16 v5, p1

    :try_start_12
    invoke-interface {v4, v5}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getTargetToOverlayables(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/Map;

    move-result-object v4

    .line 315
    .local v4, "targetToOverlayables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_75

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 316
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 317
    .local v8, "target":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;
    :try_end_36
    .catchall {:try_start_12 .. :try_end_36} :catchall_7b

    .line 318
    .local v9, "overlayables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v10, p2

    :try_start_38
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 319
    .local v11, "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v11, :cond_41

    .line 320
    goto :goto_1e

    .line 323
    :cond_41
    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 324
    .local v12, "targetPkgName":Ljava/lang/String;
    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayables()Ljava/util/Map;

    move-result-object v13

    .line 325
    .local v13, "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_72

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 326
    .local v15, "overlayable":Ljava/lang/String;
    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v17, v16

    .line 327
    .local v17, "actor":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_68

    .line 328
    goto :goto_4d

    .line 330
    :cond_68
    move-object/from16 v16, v4

    move-object/from16 v4, v17

    .end local v17    # "actor":Ljava/lang/String;
    .local v4, "actor":Ljava/lang/String;
    .local v16, "targetToOverlayables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-direct {v1, v4, v12, v0, v2}, Lcom/android/server/om/OverlayReferenceMapper;->addOverlayToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 331
    .end local v4    # "actor":Ljava/lang/String;
    .end local v15    # "overlayable":Ljava/lang/String;
    move-object/from16 v4, v16

    goto :goto_4d

    .line 325
    .end local v16    # "targetToOverlayables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .local v4, "targetToOverlayables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_72
    move-object/from16 v16, v4

    .line 332
    .end local v4    # "targetToOverlayables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v8    # "target":Ljava/lang/String;
    .end local v9    # "overlayables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v12    # "targetPkgName":Ljava/lang/String;
    .end local v13    # "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "targetToOverlayables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    goto :goto_1e

    .line 315
    .end local v16    # "targetToOverlayables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v4    # "targetToOverlayables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_75
    move-object/from16 v10, p2

    move-object/from16 v16, v4

    .line 333
    .end local v0    # "overlay":Ljava/lang/String;
    .end local v4    # "targetToOverlayables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    monitor-exit v3

    .line 334
    return-void

    .line 333
    :catchall_7b
    move-exception v0

    goto :goto_80

    :catchall_7d
    move-exception v0

    move-object/from16 v5, p1

    :goto_80
    move-object/from16 v10, p2

    :goto_82
    monitor-exit v3
    :try_end_83
    .catchall {:try_start_38 .. :try_end_83} :catchall_84

    throw v0

    :catchall_84
    move-exception v0

    goto :goto_82
.end method

.method private addOverlayToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 9
    .param p1, "actor"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "overlay"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 403
    .local p4, "changedPackages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 405
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 406
    .local v1, "targetToOverlays":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-nez v1, :cond_18

    .line 407
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 408
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_18
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 412
    .local v2, "overlays":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_29

    .line 413
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 414
    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_29
    invoke-virtual {v2, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 418
    nop

    .end local v1    # "targetToOverlays":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v2    # "overlays":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_38

    .line 421
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    invoke-interface {v0, p1}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getActorPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 422
    return-void

    .line 418
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private addTarget(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Collection;)V
    .registers 15
    .param p1, "targetPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 244
    .local p2, "otherPkgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local p3, "changedPackages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "target":Ljava/lang/String;
    invoke-direct {p0, v1, p3}, Lcom/android/server/om/OverlayReferenceMapper;->removeTarget(Ljava/lang/String;Ljava/util/Collection;)V

    .line 248
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayables()Ljava/util/Map;

    move-result-object v2

    .line 249
    .local v2, "overlayablesToActors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 250
    .local v4, "overlayable":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 251
    .local v5, "actor":Ljava/lang/String;
    invoke-direct {p0, v5, v1, p3}, Lcom/android/server/om/OverlayReferenceMapper;->addTargetToMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 253
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 254
    .local v7, "overlayPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v8, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 255
    invoke-interface {v8, v7}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getTargetToOverlayables(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/Map;

    move-result-object v8

    .line 256
    .local v8, "targetToOverlayables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 257
    .local v9, "overlayables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v9}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v10

    if-eqz v10, :cond_52

    .line 258
    goto :goto_33

    .line 261
    :cond_52
    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5f

    .line 262
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 263
    .local v10, "overlay":Ljava/lang/String;
    invoke-direct {p0, v5, v1, v10, p3}, Lcom/android/server/om/OverlayReferenceMapper;->addOverlayToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 265
    .end local v7    # "overlayPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v8    # "targetToOverlayables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v9    # "overlayables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "overlay":Ljava/lang/String;
    :cond_5f
    goto :goto_33

    .line 266
    .end local v4    # "overlayable":Ljava/lang/String;
    .end local v5    # "actor":Ljava/lang/String;
    :cond_60
    goto :goto_16

    .line 267
    .end local v1    # "target":Ljava/lang/String;
    .end local v2    # "overlayablesToActors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_61
    monitor-exit v0

    .line 268
    return-void

    .line 267
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_63

    throw v1
.end method

.method private addTargetToMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 7
    .param p1, "actor"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 382
    .local p3, "changedPackages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 383
    .local v0, "targetToOverlays":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-nez v0, :cond_15

    .line 384
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 385
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_15
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 389
    .local v1, "overlays":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_26

    .line 390
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 391
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_26
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    invoke-interface {v2, p1}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getActorPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 396
    return-void
.end method

.method private ensureMapBuilt()V
    .registers 3

    .line 346
    iget-boolean v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    if-eqz v0, :cond_e

    .line 347
    invoke-virtual {p0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuildIfDeferred()V

    .line 348
    const-string v0, "OverlayReferenceMapper"

    const-string v1, "The actor map was queried before the system was ready, which mayresult in decreased performance."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_e
    return-void
.end method

.method private rebuild()V
    .registers 10

    .line 354
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 356
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

    .line 357
    .local v2, "actor":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    invoke-interface {v3, v2}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getActorPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "actorPkg":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 359
    goto :goto_12

    .line 362
    :cond_2b
    iget-object v4, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 363
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 364
    .local v4, "targetToOverlays":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 366
    .local v5, "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_40
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 367
    .local v7, "target":Ljava/lang/String;
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 368
    .local v8, "overlays":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-interface {v5, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 370
    nop

    .end local v7    # "target":Ljava/lang/String;
    .end local v8    # "overlays":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_40

    .line 372
    :cond_5a
    iget-object v6, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    nop

    .end local v2    # "actor":Ljava/lang/String;
    .end local v3    # "actorPkg":Ljava/lang/String;
    .end local v4    # "targetToOverlays":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v5    # "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_12

    .line 374
    :cond_61
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_63

    throw v1
.end method

.method private removeOverlay(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 12
    .param p1, "overlay"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 274
    .local p2, "changedPackages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 276
    .local v1, "actorsSize":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "actorIndex":I
    :goto_b
    if-ltz v2, :cond_4b

    .line 277
    iget-object v3, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 278
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 279
    .local v3, "targetToOverlays":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 280
    .local v4, "targetsSize":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "targetIndex":I
    :goto_1b
    if-ltz v5, :cond_3d

    .line 281
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 283
    .local v6, "overlays":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 284
    iget-object v7, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 285
    .local v7, "actor":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    invoke-interface {v8, v7}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getActorPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v6    # "overlays":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "actor":Ljava/lang/String;
    :cond_3a
    add-int/lit8 v5, v5, -0x1

    goto :goto_1b

    .line 292
    .end local v5    # "targetIndex":I
    :cond_3d
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 293
    iget-object v5, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 276
    .end local v3    # "targetToOverlays":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "targetsSize":I
    :cond_48
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 296
    .end local v1    # "actorsSize":I
    .end local v2    # "actorIndex":I
    :cond_4b
    monitor-exit v0

    .line 297
    return-void

    .line 296
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method private removeTarget(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 9
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 215
    .local p2, "changedPackages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 217
    .local v1, "size":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "index":I
    :goto_b
    if-ltz v2, :cond_3d

    .line 218
    iget-object v3, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 219
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 220
    .local v3, "targetToOverlays":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 221
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v4, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 224
    .local v4, "actor":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    invoke-interface {v5, v4}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getActorPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 227
    iget-object v5, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 217
    .end local v3    # "targetToOverlays":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "actor":Ljava/lang/String;
    :cond_3a
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 231
    .end local v1    # "size":I
    .end local v2    # "index":I
    :cond_3d
    monitor-exit v0

    .line 232
    return-void

    .line 231
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method


# virtual methods
.method public addPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;)Landroid/util/ArraySet;
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    .local p2, "otherPkgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 172
    .local v1, "changed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayables()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 173
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/om/OverlayReferenceMapper;->addTarget(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Collection;)V

    .line 177
    :cond_15
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    invoke-interface {v2, p1}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getTargetToOverlayables(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 178
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/om/OverlayReferenceMapper;->addOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Collection;)V

    .line 181
    :cond_24
    iget-boolean v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    if-nez v2, :cond_2b

    .line 182
    invoke-direct {p0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuild()V

    .line 185
    :cond_2b
    monitor-exit v0

    return-object v1

    .line 186
    .end local v1    # "changed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public getActorPkgToPkgs()Ljava/util/Map;
    .registers 2
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

    .line 148
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public isValidActor(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "actorPackageName"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/om/OverlayReferenceMapper;->ensureMapBuilt()V

    .line 154
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 155
    .local v1, "validSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_18

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    monitor-exit v0

    return v2

    .line 156
    .end local v1    # "validSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public rebuildIfDeferred()V
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    if-eqz v1, :cond_d

    .line 339
    invoke-direct {p0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuild()V

    .line 340
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    .line 342
    :cond_d
    monitor-exit v0

    .line 343
    return-void

    .line 342
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public removePkg(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 200
    .local v1, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/server/om/OverlayReferenceMapper;->removeTarget(Ljava/lang/String;Ljava/util/Collection;)V

    .line 201
    invoke-direct {p0, p1, v1}, Lcom/android/server/om/OverlayReferenceMapper;->removeOverlay(Ljava/lang/String;Ljava/util/Collection;)V

    .line 203
    iget-boolean v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    if-nez v2, :cond_15

    .line 204
    invoke-direct {p0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuild()V

    .line 207
    :cond_15
    monitor-exit v0

    return-object v1

    .line 208
    .end local v1    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method
