.class public Lcom/android/server/pm/KeySetManagerService;
.super Ljava/lang/Object;
.source "KeySetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    }
.end annotation


# static fields
.field public static final CURRENT_VERSION:I = 0x1

.field public static final FIRST_VERSION:I = 0x1

.field public static final KEYSET_NOT_FOUND:J = -0x1L

.field protected static final PUBLIC_KEY_NOT_FOUND:J = -0x1L

.field static final TAG:Ljava/lang/String; = "KeySetManagerService"


# instance fields
.field private lastIssuedKeyId:J

.field private lastIssuedKeySetId:J

.field protected final mKeySetMapping:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mKeySets:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/pm/KeySetHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPublicKeys:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/utils/WatchedArrayMap;)V
    .registers 5
    .param p1, "other"    # Lcom/android/server/pm/KeySetManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/KeySetManagerService;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p2, "packages":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 76
    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    .line 130
    iget-object v0, p1, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 131
    iget-object v0, p1, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 132
    iget-object v0, p1, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 133
    iput-object p2, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "packages":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 76
    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    .line 122
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 123
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 124
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 125
    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 126
    return-void
.end method

.method private addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;)",
            "Lcom/android/server/pm/KeySetHandle;"
        }
    .end annotation

    .line 446
    .local p1, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_69

    .line 451
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 452
    .local v0, "addedKeyIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 453
    .local v1, "kSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v1, :cond_2c

    .line 454
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    invoke-direct {p0, v3}, Lcom/android/server/pm/KeySetManagerService;->addPublicKeyLPw(Ljava/security/PublicKey;)J

    move-result-wide v3

    .line 455
    .local v3, "id":J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 453
    .end local v3    # "id":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 459
    .end local v2    # "i":I
    :cond_2c
    invoke-direct {p0, v0}, Lcom/android/server/pm/KeySetManagerService;->getIdFromKeyIdsLPr(Ljava/util/Set;)J

    move-result-wide v2

    .line 460
    .local v2, "existingKeySetId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_55

    .line 463
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_37
    if-ge v4, v1, :cond_49

    .line 464
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/KeySetManagerService;->decrementPublicKeyLPw(J)V

    .line 463
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 466
    .end local v4    # "i":I
    :cond_49
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/KeySetHandle;

    .line 467
    .local v4, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {v4}, Lcom/android/server/pm/KeySetHandle;->incrRefCountLPw()V

    .line 468
    return-object v4

    .line 472
    .end local v4    # "ks":Lcom/android/server/pm/KeySetHandle;
    :cond_55
    invoke-direct {p0}, Lcom/android/server/pm/KeySetManagerService;->getFreeKeySetIDLPw()J

    move-result-wide v4

    .line 475
    .local v4, "id":J
    new-instance v6, Lcom/android/server/pm/KeySetHandle;

    invoke-direct {v6, v4, v5}, Lcom/android/server/pm/KeySetHandle;-><init>(J)V

    .line 476
    .local v6, "ks":Lcom/android/server/pm/KeySetHandle;
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 477
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 478
    return-object v6

    .line 447
    .end local v0    # "addedKeyIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v1    # "kSize":I
    .end local v2    # "existingKeySetId":J
    .end local v4    # "id":J
    .end local v6    # "ks":Lcom/android/server/pm/KeySetHandle;
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add an empty set of keys!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addPublicKeyLPw(Ljava/security/PublicKey;)J
    .registers 6
    .param p1, "key"    # Ljava/security/PublicKey;

    .line 522
    const-string v0, "Cannot add null public key!"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 523
    invoke-direct {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->getIdForPublicKeyLPr(Ljava/security/PublicKey;)J

    move-result-wide v0

    .line 524
    .local v0, "id":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1b

    .line 527
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v2}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->incrRefCountLPw()V

    .line 528
    return-wide v0

    .line 532
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/pm/KeySetManagerService;->getFreePublicKeyIdLPw()J

    move-result-wide v0

    .line 533
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    new-instance v3, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JLjava/security/PublicKey;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 534
    return-wide v0
.end method

.method private addRefCountsFromSavedPackagesLPw(Landroid/util/ArrayMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 829
    .local p1, "keySetRefCounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 830
    .local v0, "numRefCounts":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const-string v2, "KeySetManagerService"

    if-ge v1, v0, :cond_33

    .line 831
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/KeySetHandle;

    .line 832
    .local v3, "ks":Lcom/android/server/pm/KeySetHandle;
    if-nez v3, :cond_23

    .line 834
    const-string v4, "Encountered non-existent key-set reference when reading settings"

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    goto :goto_30

    .line 837
    :cond_23
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/server/pm/KeySetHandle;->setRefCountLPw(I)V

    .line 830
    .end local v3    # "ks":Lcom/android/server/pm/KeySetHandle;
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 846
    .end local v1    # "i":I
    :cond_33
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 847
    .local v1, "orphanedKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 848
    .local v3, "numKeySets":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3f
    if-ge v4, v3, :cond_8b

    .line 849
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {v5}, Lcom/android/server/pm/KeySetHandle;->getRefCountLPr()I

    move-result v5

    if-nez v5, :cond_61

    .line 850
    const-string v5, "Encountered key-set w/out package references when reading settings"

    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_61
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 854
    .local v5, "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 855
    .local v6, "pkSize":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_6e
    if-ge v7, v6, :cond_88

    .line 856
    iget-object v8, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v8}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->incrRefCountLPw()V

    .line 855
    add-int/lit8 v7, v7, 0x1

    goto :goto_6e

    .line 848
    .end local v5    # "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v6    # "pkSize":I
    .end local v7    # "j":I
    :cond_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 859
    .end local v4    # "i":I
    :cond_8b
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 860
    .local v2, "numOrphans":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_90
    if-ge v4, v2, :cond_a2

    .line 861
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 860
    add-int/lit8 v4, v4, 0x1

    goto :goto_90

    .line 863
    .end local v4    # "i":I
    :cond_a2
    return-void
.end method

.method private clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V
    .registers 5
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;

    .line 607
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    .line 608
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->removeAllDefinedKeySets()V

    .line 609
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->removeAllUpgradeKeySets()V

    .line 610
    return-void
.end method

.method private decrementKeySetLPw(J)V
    .registers 9
    .param p1, "id"    # J

    .line 487
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/KeySetHandle;

    .line 488
    .local v0, "ks":Lcom/android/server/pm/KeySetHandle;
    if-nez v0, :cond_b

    .line 490
    return-void

    .line 492
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/pm/KeySetHandle;->decrRefCountLPw()I

    move-result v1

    if-gtz v1, :cond_3a

    .line 493
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 494
    .local v1, "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 495
    .local v2, "pkSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v2, :cond_30

    .line 496
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/KeySetManagerService;->decrementPublicKeyLPw(J)V

    .line 495
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 498
    .end local v3    # "i":I
    :cond_30
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 499
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 501
    .end local v1    # "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v2    # "pkSize":I
    :cond_3a
    return-void
.end method

.method private decrementPublicKeyLPw(J)V
    .registers 8
    .param p1, "id"    # J

    .line 508
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .line 509
    .local v0, "pk":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    if-nez v0, :cond_b

    .line 511
    return-void

    .line 513
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->decrRefCountLPw()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1a

    .line 514
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 516
    :cond_1a
    return-void
.end method

.method private getFreeKeySetIDLPw()J
    .registers 5

    .line 571
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 572
    return-wide v0
.end method

.method private getFreePublicKeyIdLPw()J
    .registers 5

    .line 579
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    .line 580
    return-wide v0
.end method

.method private getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J
    .registers 6
    .param p1, "ks"    # Lcom/android/server/pm/KeySetHandle;

    .line 283
    const/4 v0, 0x0

    .local v0, "keySetIndex":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 284
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    .line 285
    .local v1, "value":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 286
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    return-wide v2

    .line 283
    .end local v1    # "value":Lcom/android/server/pm/KeySetHandle;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 289
    .end local v0    # "keySetIndex":I
    :cond_21
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getIdForPublicKeyLPr(Ljava/security/PublicKey;)J
    .registers 8
    .param p1, "k"    # Ljava/security/PublicKey;

    .line 556
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 557
    .local v0, "encodedPublicKey":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "publicKeyIndex":I
    :goto_a
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 558
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v2}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 559
    .local v2, "value":Ljava/security/PublicKey;
    new-instance v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 560
    .local v3, "encodedExistingKey":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 561
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    return-wide v4

    .line 557
    .end local v2    # "value":Ljava/security/PublicKey;
    .end local v3    # "encodedExistingKey":Ljava/lang/String;
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 564
    .end local v1    # "publicKeyIndex":I
    :cond_37
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private getIdFromKeyIdsLPr(Ljava/util/Set;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 543
    .local p1, "publicKeyIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "keyMapIndex":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 544
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 545
    .local v1, "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 546
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    return-wide v2

    .line 543
    .end local v1    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 549
    .end local v0    # "keyMapIndex":I
    :cond_21
    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method addDefinedKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    .registers 12
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;)V"
        }
    .end annotation

    .line 298
    .local p2, "definedMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v0

    .line 301
    .local v0, "prevDefinedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 302
    .local v1, "newKeySetAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 303
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 304
    .local v4, "alias":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 305
    .local v5, "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz v4, :cond_46

    if-eqz v5, :cond_46

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_46

    .line 306
    invoke-direct {p0, v5}, Lcom/android/server/pm/KeySetManagerService;->addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v6

    .line 307
    .local v6, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {v6}, Lcom/android/server/pm/KeySetHandle;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    .end local v6    # "ks":Lcom/android/server/pm/KeySetHandle;
    :cond_46
    goto :goto_15

    .line 312
    :cond_47
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 313
    .local v2, "prevDefSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4c
    if-ge v3, v2, :cond_5e

    .line 314
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 316
    .end local v3    # "i":I
    :cond_5e
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageKeySetData;->removeAllUpgradeKeySets()V

    .line 319
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/pm/PackageKeySetData;->setAliases(Ljava/util/Map;)V

    .line 320
    return-void
.end method

.method public addScannedPackageLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 235
    const-string v0, "Attempted to add null pkg to ksms."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 238
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not have a corresponding entry in mPackages."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->addSigningKeySetToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V

    .line 241
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getKeySetMapping()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 242
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getKeySetMapping()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->addDefinedKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V

    .line 243
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUpgradeKeySets()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 244
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUpgradeKeySets()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->addUpgradeKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/Set;)V

    .line 247
    :cond_5e
    return-void
.end method

.method addSigningKeySetToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V
    .registers 9
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    .line 256
    .local p2, "signingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v0

    .line 258
    .local v0, "signingKeySetId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1e

    .line 259
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;

    move-result-object v2

    .line 260
    .local v2, "existingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz v2, :cond_1b

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 263
    return-void

    .line 267
    :cond_1b
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 272
    .end local v2    # "existingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_1e
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v2

    .line 273
    .local v2, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {v2}, Lcom/android/server/pm/KeySetHandle;->getId()J

    move-result-wide v3

    .line 274
    .local v3, "id":J
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    .line 275
    return-void
.end method

.method addUpgradeKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/Set;)V
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 330
    .local p2, "upgradeAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 331
    .local v1, "upgradeAlias":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySet(Ljava/lang/String;)V

    .line 332
    .end local v1    # "upgradeAlias":Ljava/lang/String;
    goto :goto_4

    .line 333
    :cond_18
    return-void
.end method

.method public assertScannedPackageValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 203
    const/4 v0, -0x2

    if-eqz p1, :cond_87

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 207
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    move-result-object v1

    .line 208
    .local v1, "signingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_7f

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    .line 212
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getKeySetMapping()Ljava/util/Map;

    move-result-object v3

    .line 213
    .local v3, "definedMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    if-eqz v3, :cond_63

    .line 214
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    invoke-interface {v3, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 218
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 219
    .local v5, "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_53

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_53

    .line 223
    .end local v5    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    goto :goto_3a

    .line 220
    .restart local v5    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_53
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const-string v4, "Package has null/no public keys for defined key-sets."

    invoke-direct {v2, v0, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 215
    .end local v5    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_5b
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const-string v4, "Package has null defined key set."

    invoke-direct {v2, v0, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 225
    :cond_63
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUpgradeKeySets()Ljava/util/Set;

    move-result-object v2

    .line 226
    .local v2, "upgradeAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_7e

    .line 227
    if-eqz v3, :cond_76

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_76

    goto :goto_7e

    .line 228
    :cond_76
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const-string v5, "Package has upgrade-key-sets without corresponding definitions."

    invoke-direct {v4, v0, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 232
    :cond_7e
    :goto_7e
    return-void

    .line 209
    .end local v2    # "upgradeAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "definedMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    :cond_7f
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Package has invalid signing-key-set."

    invoke-direct {v2, v0, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 204
    .end local v1    # "signingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_87
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Passed invalid package to keyset validation."

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public checkUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 7
    .param p1, "oldPS"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 383
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v0

    .line 384
    .local v0, "upgradeKeySets":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_27

    .line 385
    aget-wide v2, v0, v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/KeySetManagerService;->getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;

    move-result-object v2

    .line 386
    .local v2, "upgradeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    if-eqz v2, :cond_24

    .line 387
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 388
    const/4 v3, 0x1

    return v3

    .line 384
    .end local v2    # "upgradeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 391
    .end local v1    # "i":I
    :cond_27
    const/4 v1, 0x0

    return v1
.end method

.method public dumpLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V
    .registers 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 620
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 621
    .local v2, "printedHeader":Z
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_138

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 622
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 623
    .local v6, "keySetPackage":Ljava/lang/String;
    if-eqz v1, :cond_2c

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 624
    goto :goto_11

    .line 626
    :cond_2c
    if-nez v2, :cond_3d

    .line 627
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v7

    if-eqz v7, :cond_37

    .line 628
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 629
    :cond_37
    const-string v7, "Key Set Manager:"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    const/4 v2, 0x1

    .line 632
    :cond_3d
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 633
    .local v7, "pkg":Lcom/android/server/pm/PackageSetting;
    const-string v8, "  ["

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "]"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v8

    if-eqz v8, :cond_134

    .line 635
    const/4 v8, 0x0

    .line 637
    .local v8, "printedLabel":Z
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_67
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, ", "

    if-eqz v10, :cond_a1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 638
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v8, :cond_7e

    .line 639
    const-string v11, "      KeySets Aliases: "

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 640
    const/4 v8, 0x1

    goto :goto_81

    .line 642
    :cond_7e
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    :goto_81
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 645
    const/16 v11, 0x3d

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(C)V

    .line 646
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_67

    .line 648
    :cond_a1
    const-string v9, ""

    if-eqz v8, :cond_a8

    .line 649
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    :cond_a8
    const/4 v8, 0x0

    .line 652
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/pm/PackageKeySetData;->isUsingDefinedKeySets()Z

    move-result v10

    if-eqz v10, :cond_e2

    .line 653
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v10

    .line 654
    .local v10, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 655
    .local v12, "dksSize":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_c0
    if-ge v13, v12, :cond_e2

    .line 656
    if-nez v8, :cond_cb

    .line 657
    const-string v14, "      Defined KeySets: "

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 658
    const/4 v8, 0x1

    goto :goto_ce

    .line 660
    :cond_cb
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 662
    :goto_ce
    invoke-virtual {v10, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 655
    add-int/lit8 v13, v13, 0x1

    goto :goto_c0

    .line 665
    .end local v10    # "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v12    # "dksSize":I
    .end local v13    # "i":I
    :cond_e2
    if-eqz v8, :cond_e7

    .line 666
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    :cond_e7
    const/4 v8, 0x0

    .line 669
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v12

    .line 670
    .local v12, "signingKeySet":J
    const-string v10, "      Signing KeySets: "

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 671
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v10

    if-eqz v10, :cond_12f

    .line 674
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v10

    array-length v14, v10

    const/4 v15, 0x0

    :goto_113
    if-ge v15, v14, :cond_12f

    aget-wide v16, v10, v15

    .line 675
    .local v16, "keySetId":J
    if-nez v8, :cond_120

    .line 676
    const-string v1, "      Upgrade KeySets: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 677
    const/4 v8, 0x1

    goto :goto_123

    .line 679
    :cond_120
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 681
    :goto_123
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 674
    .end local v16    # "keySetId":J
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p2

    goto :goto_113

    .line 684
    :cond_12f
    if-eqz v8, :cond_134

    .line 685
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v6    # "keySetPackage":Ljava/lang/String;
    .end local v7    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "printedLabel":Z
    .end local v12    # "signingKeySet":J
    :cond_134
    move-object/from16 v1, p2

    goto/16 :goto_11

    .line 689
    :cond_138
    return-void
.end method

.method public encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;
    .registers 5
    .param p1, "k"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 615
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getKeySetByAliasAndPackageNameLPr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 342
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_51

    .line 345
    :cond_11
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v1

    .line 346
    .local v1, "aliases":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 347
    .local v2, "keySetId":Ljava/lang/Long;
    if-eqz v2, :cond_2e

    .line 350
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/KeySetHandle;

    return-object v3

    .line 348
    :cond_2e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown KeySet alias: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", aliases = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 343
    .end local v1    # "aliases":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v2    # "keySetId":Ljava/lang/Long;
    :cond_51
    :goto_51
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;
    .registers 10
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 403
    .local v0, "pkIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    if-nez v0, :cond_c

    .line 404
    const/4 v1, 0x0

    return-object v1

    .line 406
    :cond_c
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 407
    .local v1, "mPubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 408
    .local v2, "pkSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_34

    .line 409
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v4}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 408
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 411
    .end local v3    # "i":I
    :cond_34
    return-object v1
.end method

.method public getSigningKeySetByPackageNameLPr(Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 423
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_30

    .line 424
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 425
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1f

    goto :goto_30

    .line 429
    :cond_1f
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    return-object v1

    .line 427
    :cond_30
    :goto_30
    const/4 v1, 0x0

    return-object v1
.end method

.method public isIdValidKeySetId(J)Z
    .registers 4
    .param p1, "id"    # J

    .line 355
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public packageIsSignedByExactlyLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Lcom/android/server/pm/KeySetHandle;

    .line 174
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 175
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_4d

    .line 178
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 179
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_45

    .line 183
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    move-result-wide v1

    .line 184
    .local v1, "id":J
    cmp-long v3, v1, v3

    if-nez v3, :cond_28

    .line 185
    const/4 v3, 0x0

    return v3

    .line 187
    :cond_28
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 188
    .local v3, "pkgKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 189
    .local v4, "testKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 181
    .end local v1    # "id":J
    .end local v3    # "pkgKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v4    # "testKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_45
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Package has no KeySet data"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_4d
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Invalid package name"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public packageIsSignedByLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Lcom/android/server/pm/KeySetHandle;

    .line 148
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 149
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_41

    .line 152
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 155
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    move-result-wide v1

    .line 156
    .local v1, "id":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1c

    .line 157
    const/4 v3, 0x0

    return v3

    .line 159
    :cond_1c
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 160
    .local v3, "pkgKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 161
    .local v4, "testKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    return v5

    .line 153
    .end local v1    # "id":J
    .end local v3    # "pkgKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v4    # "testKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_39
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Package has no KeySet data"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_41
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Invalid package name"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method readKeySetListLPw(Landroid/util/TypedXmlPullParser;)V
    .registers 11
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 794
    .local v0, "outerDepth":I
    const-wide/16 v1, 0x0

    .line 795
    .local v1, "currentKeySetId":J
    :cond_6
    :goto_6
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_62

    const/4 v3, 0x3

    if-ne v4, v3, :cond_17

    .line 796
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_62

    .line 797
    :cond_17
    if-eq v4, v3, :cond_6

    const/4 v3, 0x4

    if-ne v4, v3, :cond_1d

    .line 798
    goto :goto_6

    .line 800
    :cond_1d
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 801
    .local v3, "tagName":Ljava/lang/String;
    const-string v5, "keyset"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "identifier"

    const/4 v7, 0x0

    if-eqz v5, :cond_46

    .line 802
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 803
    const/4 v5, 0x0

    .line 804
    .local v5, "refCount":I
    iget-object v6, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    new-instance v7, Lcom/android/server/pm/KeySetHandle;

    invoke-direct {v7, v1, v2, v5}, Lcom/android/server/pm/KeySetHandle;-><init>(JI)V

    invoke-virtual {v6, v1, v2, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 805
    iget-object v6, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v6, v1, v2, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 806
    .end local v5    # "refCount":I
    :cond_45
    goto :goto_61

    :cond_46
    const-string v5, "key-id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 807
    invoke-interface {p1, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    .line 808
    .local v5, "id":J
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 810
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v5    # "id":J
    :goto_61
    goto :goto_6

    .line 811
    :cond_62
    return-void
.end method

.method readKeySetsLPw(Landroid/util/TypedXmlPullParser;Landroid/util/ArrayMap;)V
    .registers 12
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 738
    .local p2, "keySetRefCounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 739
    .local v0, "outerDepth":I
    const/4 v1, 0x0

    const-string/jumbo v2, "version"

    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 740
    .local v2, "recordedVersionStr":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x3

    if-nez v2, :cond_3b

    .line 743
    :cond_10
    :goto_10
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    move v5, v1

    .local v5, "type":I
    if-eq v1, v3, :cond_20

    if-ne v5, v4, :cond_10

    .line 744
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_20

    .line 745
    goto :goto_10

    .line 749
    :cond_20
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 750
    .local v3, "p":Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, v3}, Lcom/android/server/pm/KeySetManagerService;->clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V

    .line 751
    .end local v3    # "p":Lcom/android/server/pm/PackageSetting;
    goto :goto_2a

    .line 752
    :cond_3a
    return-void

    .line 754
    .end local v5    # "type":I
    :cond_3b
    :goto_3b
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    if-eq v5, v3, :cond_8d

    if-ne v6, v4, :cond_4a

    .line 755
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_8d

    .line 756
    :cond_4a
    if-eq v6, v4, :cond_3b

    const/4 v5, 0x4

    if-ne v6, v5, :cond_50

    .line 757
    goto :goto_3b

    .line 759
    :cond_50
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 760
    .local v5, "tagName":Ljava/lang/String;
    const-string v7, "keys"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 761
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readKeysLPw(Landroid/util/TypedXmlPullParser;)V

    goto :goto_8c

    .line 762
    :cond_60
    const-string v7, "keysets"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 763
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readKeySetListLPw(Landroid/util/TypedXmlPullParser;)V

    goto :goto_8c

    .line 764
    :cond_6c
    const-string v7, "lastIssuedKeyId"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string/jumbo v8, "value"

    if-eqz v7, :cond_7e

    .line 765
    invoke-interface {p1, v1, v8}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    goto :goto_8c

    .line 766
    :cond_7e
    const-string v7, "lastIssuedKeySetId"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 767
    invoke-interface {p1, v1, v8}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 769
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_8c
    :goto_8c
    goto :goto_3b

    .line 771
    :cond_8d
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->addRefCountsFromSavedPackagesLPw(Landroid/util/ArrayMap;)V

    .line 772
    return-void
.end method

.method readKeysLPw(Landroid/util/TypedXmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 778
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2c

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 779
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2c

    .line 780
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 781
    goto :goto_4

    .line 783
    :cond_1b
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "public-key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 785
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readPublicKeyLPw(Landroid/util/TypedXmlPullParser;)V

    .line 787
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_2b
    goto :goto_4

    .line 788
    :cond_2c
    return-void
.end method

.method readPublicKeyLPw(Landroid/util/TypedXmlPullParser;)V
    .registers 15
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 815
    const/4 v0, 0x0

    const-string v1, "identifier"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    .line 816
    .local v9, "identifier":J
    const/4 v1, 0x0

    .line 817
    .local v1, "refCount":I
    const-string/jumbo v2, "value"

    invoke-interface {p1, v0, v2, v0}, Landroid/util/TypedXmlPullParser;->getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 818
    .local v0, "publicKey":[B
    invoke-static {v0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->parsePublicKey([B)Ljava/security/PublicKey;

    move-result-object v11

    .line 819
    .local v11, "pub":Ljava/security/PublicKey;
    if-eqz v11, :cond_25

    .line 820
    new-instance v12, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    const/4 v8, 0x0

    move-object v2, v12

    move-object v3, p0

    move-wide v4, v9

    move v6, v1

    move-object v7, v11

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle-IA;)V

    .line 821
    .local v2, "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9, v10, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 823
    .end local v2    # "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    :cond_25
    return-void
.end method

.method public removeAppKeySetDataLPw(Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 592
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not have a corresponding entry in mPackages."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 594
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v1

    .line 595
    .local v1, "signingKeySetId":J
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 596
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v3

    .line 597
    .local v3, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_39
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_4f

    .line 598
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 597
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 602
    .end local v4    # "i":I
    :cond_4f
    invoke-direct {p0, v0}, Lcom/android/server/pm/KeySetManagerService;->clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V

    .line 603
    return-void
.end method

.method public shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z
    .registers 10
    .param p1, "oldPs"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "sharedUserSetting"    # Lcom/android/server/pm/pkg/SharedUserApi;
    .param p3, "scanFlags"    # I

    .line 361
    const/4 v0, 0x0

    if-eqz p1, :cond_65

    and-int/lit16 v1, p3, 0x200

    if-nez v1, :cond_65

    if-nez p2, :cond_65

    .line 362
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_65

    .line 366
    :cond_14
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v1

    .line 367
    .local v1, "upgradeKeySets":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    array-length v3, v1

    if-ge v2, v3, :cond_63

    .line 368
    aget-wide v3, v1, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/KeySetManagerService;->isIdValidKeySetId(J)Z

    move-result v3

    if-nez v3, :cond_60

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 370
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_40

    :cond_3e
    const-string v4, "<null>"

    :goto_40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " contains upgrade-key-set reference to unknown key-set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v1, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reverting to signatures check."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    const-string v4, "KeySetManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return v0

    .line 367
    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 377
    .end local v2    # "i":I
    :cond_63
    const/4 v0, 0x1

    return v0

    .line 363
    .end local v1    # "upgradeKeySets":[J
    :cond_65
    :goto_65
    return v0
.end method

.method writeKeySetManagerServiceLPr(Landroid/util/TypedXmlSerializer;)V
    .registers 8
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 692
    const/4 v0, 0x0

    const-string v1, "keyset-settings"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 693
    const-string/jumbo v2, "version"

    const/4 v3, 0x1

    invoke-interface {p1, v0, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->writePublicKeysLPr(Landroid/util/TypedXmlSerializer;)V

    .line 695
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetsLPr(Landroid/util/TypedXmlSerializer;)V

    .line 696
    const-string v2, "lastIssuedKeyId"

    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 697
    iget-wide v3, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    const-string/jumbo v5, "value"

    invoke-interface {p1, v0, v5, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 698
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 699
    const-string v2, "lastIssuedKeySetId"

    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 700
    iget-wide v3, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    invoke-interface {p1, v0, v5, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 701
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 702
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 703
    return-void
.end method

.method writeKeySetsLPr(Landroid/util/TypedXmlSerializer;)V
    .registers 14
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    const/4 v0, 0x0

    const-string v1, "keysets"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 720
    const/4 v2, 0x0

    .local v2, "keySetIndex":I
    :goto_7
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4d

    .line 721
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 722
    .local v3, "id":J
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 723
    .local v5, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string v6, "keyset"

    invoke-interface {p1, v0, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 724
    const-string v7, "identifier"

    invoke-interface {p1, v0, v7, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 725
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_47

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 726
    .local v9, "keyId":J
    const-string v11, "key-id"

    invoke-interface {p1, v0, v11}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 727
    invoke-interface {p1, v0, v7, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 728
    invoke-interface {p1, v0, v11}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 729
    .end local v9    # "keyId":J
    goto :goto_2b

    .line 730
    :cond_47
    invoke-interface {p1, v0, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 720
    .end local v3    # "id":J
    .end local v5    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 732
    .end local v2    # "keySetIndex":I
    :cond_4d
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 733
    return-void
.end method

.method writePublicKeysLPr(Landroid/util/TypedXmlSerializer;)V
    .registers 11
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 706
    const/4 v0, 0x0

    const-string v1, "keys"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 707
    const/4 v2, 0x0

    .local v2, "pKeyIndex":I
    :goto_7
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 708
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 709
    .local v3, "id":J
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .line 710
    .local v5, "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    const-string/jumbo v6, "public-key"

    invoke-interface {p1, v0, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 711
    const-string v7, "identifier"

    invoke-interface {p1, v0, v7, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 712
    invoke-virtual {v5}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    const-string/jumbo v8, "value"

    invoke-interface {p1, v0, v8, v7}, Landroid/util/TypedXmlSerializer;->attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;

    .line 713
    invoke-interface {p1, v0, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 707
    .end local v3    # "id":J
    .end local v5    # "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 715
    .end local v2    # "pKeyIndex":I
    :cond_3c
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 716
    return-void
.end method
