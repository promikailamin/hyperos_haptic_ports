.class public abstract Lcom/android/server/pm/AppsFilterBase;
.super Ljava/lang/Object;
.source "AppsFilterBase.java"

# interfaces
.implements Lcom/android/server/pm/AppsFilterSnapshot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/AppsFilterBase$ToString;
    }
.end annotation


# static fields
.field protected static final CACHE_INVALID:Z = false

.field protected static final CACHE_REBUILD_DELAY_MAX_MS:I = 0x2710

.field protected static final CACHE_REBUILD_DELAY_MIN_MS:I = 0x2710

.field protected static final CACHE_VALID:Z = true

.field protected static final DEBUG_ALLOW_ALL:Z = false

.field protected static final DEBUG_LOGGING:Z = false

.field public static final DEBUG_TRACING:Z = false

.field protected static final TAG:Ljava/lang/String; = "AppsFilter"


# instance fields
.field protected mBackgroundHandler:Landroid/os/Handler;

.field protected volatile mCacheReady:Z

.field protected mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

.field protected mForceQueryable:Lcom/android/server/utils/WatchedArraySet;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mForceQueryableByDevicePackageNames:[Ljava/lang/String;

.field protected mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

.field protected mProtectedBroadcasts:Lcom/android/server/utils/WatchedArrayList;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field protected mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseBooleanMatrix;",
            ">;"
        }
    .end annotation
.end field

.field protected mSystemAppsQueryable:Z

.field protected mSystemSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 190
    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 194
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private static dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p3, "subTitle"    # Ljava/lang/String;
    .param p4, "spacing"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintWriter;",
            "TT;",
            "Landroid/util/ArraySet<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "TT;>;)V"
        }
    .end annotation

    .line 799
    .local p1, "filteringId":Ljava/lang/Object;, "TT;"
    .local p2, "targetPkgSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p5, "toString":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<TT;>;"
    if-eqz p2, :cond_49

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_49

    if-eqz p1, :cond_10

    .line 800
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 801
    :cond_10
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 803
    .local v1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_33

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 804
    :cond_33
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    .line 805
    if-nez p5, :cond_41

    move-object v3, v1

    goto :goto_45

    :cond_41
    invoke-interface {p5, v1}, Lcom/android/server/pm/AppsFilterBase$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_45
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 807
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_48
    goto :goto_21

    .line 809
    :cond_49
    return-void
.end method

.method private static dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 14
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "filteringId"    # Ljava/lang/Integer;
    .param p3, "spacing"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 771
    .local p2, "queriesMap":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<Ljava/lang/Integer;>;"
    .local p4, "toString":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 772
    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 773
    .local v1, "callingId":Ljava/lang/Integer;
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 775
    const/4 v4, 0x0

    .line 776
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/server/utils/WatchedSparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 777
    if-nez p4, :cond_26

    .line 778
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_2b

    .line 779
    :cond_26
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilterBase$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 775
    :goto_2b
    move-object v3, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    goto :goto_4f

    .line 782
    :cond_32
    nop

    .line 783
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/server/utils/WatchedSparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 784
    if-nez p4, :cond_43

    .line 785
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_48

    .line 786
    :cond_43
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilterBase$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 782
    :goto_48
    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 771
    .end local v1    # "callingId":Ljava/lang/Integer;
    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 790
    .end local v0    # "i":I
    :cond_52
    return-void
.end method

.method static synthetic lambda$dumpQueries$0(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 14
    .param p0, "cache"    # Landroid/util/SparseArray;
    .param p1, "users"    # [I
    .param p2, "getPackagesForUid"    # Lcom/android/internal/util/function/QuadFunction;
    .param p3, "input"    # Ljava/lang/Integer;

    .line 692
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 693
    .local v0, "cachedValue":Ljava/lang/String;
    if-nez v0, :cond_86

    .line 694
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 695
    .local v1, "callingUid":I
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 696
    .local v2, "appId":I
    const/4 v3, 0x0

    .line 697
    .local v3, "packagesForUid":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, p1

    .local v5, "size":I
    :goto_1b
    const/4 v6, 0x0

    if-nez v3, :cond_3c

    if-ge v4, v5, :cond_3c

    .line 698
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget v8, p1, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 699
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 698
    invoke-interface {p2, v7, v8, v9, v6}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, [Ljava/lang/String;

    .line 697
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 701
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_3c
    if-nez v3, :cond_58

    .line 702
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[app id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not installed]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7f

    .line 704
    :cond_58
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5f

    aget-object v4, v3, v6

    goto :goto_7e

    .line 705
    :cond_5f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_7e
    move-object v0, v4

    .line 707
    :goto_7f
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 709
    .end local v1    # "callingUid":I
    .end local v2    # "appId":I
    .end local v3    # "packagesForUid":[Ljava/lang/String;
    :cond_86
    return-object v0
.end method

.method private static log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    .registers 5
    .param p0, "callingSetting"    # Ljava/lang/Object;
    .param p1, "targetPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "description"    # Ljava/lang/String;

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 667
    if-nez p0, :cond_11

    const-string/jumbo v1, "system"

    goto :goto_12

    :cond_11
    move-object v1, p0

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    const-string v1, "AppsFilter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-void
.end method


# virtual methods
.method public canQueryPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 6
    .param p1, "querying"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "potentialTarget"    # Ljava/lang/String;

    .line 646
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 647
    .local v0, "appId":I
    const/4 v1, 0x1

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_e

    .line 648
    return v1

    .line 652
    :cond_e
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v2, p1}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 653
    return v1

    .line 656
    :cond_17
    invoke-static {p1}, Lcom/android/server/pm/AppsFilterUtils;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 657
    return v1

    .line 660
    :cond_1e
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    .line 661
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    .line 660
    :goto_34
    return v1
.end method

.method protected dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 730
    .local p3, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    const-string v0, "  queries via forceQueryable:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v3

    const-string v4, "forceQueryable"

    const-string v5, "  "

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 733
    return-void
.end method

.method public dumpQueries(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[ILcom/android/internal/util/function/QuadFunction;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .param p3, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p4, "users"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/DumpState;",
            "[I",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 690
    .local p5, "getPackagesForUid":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;[Ljava/lang/String;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 691
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p4, p5}, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;)V

    .line 711
    .local v1, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 712
    const-string v2, "Queries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p3}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    .line 714
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v2}, Lcom/android/server/pm/FeatureConfig;->isGloballyEnabled()Z

    move-result v2

    if-nez v2, :cond_23

    .line 715
    const-string v2, "  DISABLED"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    return-void

    .line 720
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  system apps queryable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemAppsQueryable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 722
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 723
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 724
    invoke-virtual {p0, p1, p2, p4, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 725
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 726
    return-void
.end method

.method protected dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 743
    .local p3, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    const-string v0, "  queries via component:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v1, "    "

    invoke-static {p1, p2, v0, v1, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 745
    return-void
.end method

.method protected dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .param p3, "users"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "[I",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 749
    .local p4, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    const-string v0, "  queryable via interaction:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    array-length v0, p3

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_4f

    aget v2, p3, v1

    .line 751
    .local v2, "user":I
    const-string v3, "    User "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    nop

    .line 753
    const/4 v3, 0x0

    if-nez p2, :cond_24

    move-object v4, v3

    goto :goto_30

    :cond_24
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_30
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 752
    const-string v6, "      "

    invoke-static {p1, v4, v5, v6, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 755
    nop

    .line 756
    if-nez p2, :cond_3b

    goto :goto_47

    :cond_3b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_47
    iget-object v4, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 755
    invoke-static {p1, v3, v4, v6, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 750
    .end local v2    # "user":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 759
    :cond_4f
    return-void
.end method

.method protected dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 737
    .local p3, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    const-string v0, "  queries via package name:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v1, "    "

    invoke-static {p1, p2, v0, v1, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 739
    return-void
.end method

.method protected dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 763
    .local p3, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    const-string v0, "  queryable via uses-library:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v1, "    "

    invoke-static {p1, p2, v0, v1, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 766
    return-void
.end method

.method protected getSharedUserPackages(ILjava/util/Collection;)Landroid/util/ArraySet;
    .registers 6
    .param p1, "sharedUserAppId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;)",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 673
    .local p2, "sharedUserSettings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/SharedUserSetting;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 674
    .local v1, "setting":Lcom/android/server/pm/SharedUserSetting;
    iget v2, v1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    if-eq v2, p1, :cond_15

    .line 675
    goto :goto_4

    .line 677
    :cond_15
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0

    .line 679
    .end local v1    # "setting":Lcom/android/server/pm/SharedUserSetting;
    :cond_1a
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method public getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;
    .registers 24
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "setting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "users"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "[I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 257
    .local p4, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    move-object/from16 v0, p3

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    move-object/from16 v8, p0

    invoke-virtual {v8, v1}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 258
    const/4 v1, 0x0

    return-object v1

    .line 261
    :cond_10
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 262
    .local v1, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v2, 0x0

    move v9, v2

    .local v9, "u":I
    :goto_18
    array-length v2, v0

    if-ge v9, v2, :cond_91

    .line 263
    aget v10, v0, v9

    .line 264
    .local v10, "userId":I
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v11, v2, [I

    .line 265
    .local v11, "appIds":[I
    const/4 v2, 0x0

    .line 266
    .local v2, "buffer":[I
    const/4 v3, 0x0

    .line 267
    .local v3, "allowListSize":I
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object v12, v2

    move v13, v3

    move v14, v4

    .end local v2    # "buffer":[I
    .end local v3    # "allowListSize":I
    .local v12, "buffer":[I
    .local v13, "allowListSize":I
    .local v14, "i":I
    :goto_2e
    if-ltz v14, :cond_81

    .line 268
    move-object/from16 v15, p4

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 269
    .local v16, "existingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v7

    .line 270
    .local v7, "existingAppId":I
    const/16 v2, 0x2710

    if-ge v7, v2, :cond_43

    .line 271
    goto :goto_7a

    .line 273
    :cond_43
    const/4 v6, 0x0

    invoke-static {v11, v6, v13, v7}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v5

    .line 274
    .local v5, "loc":I
    if-ltz v5, :cond_4b

    .line 275
    goto :goto_7a

    .line 277
    :cond_4b
    invoke-static {v10, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v17

    .line 278
    .local v17, "existingUid":I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, v17

    move v0, v5

    .end local v5    # "loc":I
    .local v0, "loc":I
    move-object/from16 v5, v16

    move v8, v6

    move-object/from16 v6, p2

    move/from16 v18, v7

    .end local v7    # "existingAppId":I
    .local v18, "existingAppId":I
    move v7, v10

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 280
    if-nez v12, :cond_69

    .line 281
    array-length v2, v11

    new-array v12, v2, [I

    .line 283
    :cond_69
    not-int v2, v0

    .line 284
    .local v2, "insert":I
    sub-int v3, v13, v2

    invoke-static {v11, v2, v12, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    aput v18, v11, v2

    .line 286
    add-int/lit8 v3, v2, 0x1

    sub-int v4, v13, v2

    invoke-static {v12, v8, v11, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    add-int/lit8 v13, v13, 0x1

    .line 267
    .end local v0    # "loc":I
    .end local v2    # "insert":I
    .end local v16    # "existingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v17    # "existingUid":I
    .end local v18    # "existingAppId":I
    :cond_7a
    :goto_7a
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v8, p0

    move-object/from16 v0, p3

    goto :goto_2e

    :cond_81
    move-object/from16 v15, p4

    .line 290
    .end local v14    # "i":I
    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    .end local v10    # "userId":I
    .end local v11    # "appIds":[I
    .end local v12    # "buffer":[I
    .end local v13    # "allowListSize":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, p0

    move-object/from16 v0, p3

    goto :goto_18

    :cond_91
    move-object/from16 v15, p4

    .line 292
    .end local v9    # "u":I
    return-object v1
.end method

.method getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;
    .registers 6
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "setting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "users"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "[I",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 303
    .local p4, "existingSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    nop

    .line 304
    invoke-virtual {p4}, Lcom/android/server/utils/WatchedArrayMap;->untrackedStorage()Landroid/util/ArrayMap;

    move-result-object v0

    .line 303
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method protected isForceQueryable(I)Z
    .registers 4
    .param p1, "callingAppId"    # I

    .line 197
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isImplicitlyQueryable(II)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "targetUid"    # I

    .line 209
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isQueryableViaComponent(II)Z
    .registers 5
    .param p1, "callingAppId"    # I
    .param p2, "targetAppId"    # I

    .line 205
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z
    .registers 11
    .param p2, "callingPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p4, "targetPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "callingAppId"    # I
    .param p6, "targetAppId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "II)Z"
        }
    .end annotation

    .line 229
    .local p1, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local p3, "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_16

    .line 230
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 231
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArrayList;

    invoke-static {v1, p4, v2}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArrayList;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 233
    return v0

    .line 236
    :cond_16
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_1b
    if-ltz v1, :cond_36

    .line 237
    nop

    .line 238
    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 239
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v2, :cond_33

    iget-object v3, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArrayList;

    invoke-static {v2, p4, v3}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArrayList;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 241
    return v0

    .line 236
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 245
    .end local v1    # "i":I
    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method protected isQueryableViaPackage(II)Z
    .registers 5
    .param p1, "callingAppId"    # I
    .param p2, "targetAppId"    # I

    .line 201
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isQueryableViaUsesLibrary(II)Z
    .registers 5
    .param p1, "callingAppId"    # I
    .param p2, "targetAppId"    # I

    .line 217
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isRetainedImplicitlyQueryable(II)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "targetUid"    # I

    .line 213
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .registers 12
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "callingUid"    # I
    .param p3, "callingSetting"    # Ljava/lang/Object;
    .param p4, "targetPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p5, "userId"    # I

    .line 319
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 320
    .local v0, "callingAppId":I
    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-lt v0, v1, :cond_5e

    .line 321
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    if-lt v3, v1, :cond_5e

    .line 322
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    if-ne v0, v1, :cond_16

    goto :goto_5e

    .line 324
    :cond_16
    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_39

    .line 325
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    .line 326
    .local v1, "targetAppId":I
    invoke-static {p5, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 328
    .local v4, "targetUid":I
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result v5

    if-nez v5, :cond_37

    .line 329
    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    move-result v5

    if-nez v5, :cond_37

    move v2, v3

    goto :goto_38

    :cond_37
    nop

    .line 328
    :goto_38
    return v2

    .line 331
    .end local v1    # "targetAppId":I
    .end local v4    # "targetUid":I
    :cond_39
    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-eqz v1, :cond_49

    .line 332
    nop

    .line 333
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    .line 332
    invoke-virtual {p0, p2, v1, p5}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationUsingCache(III)Z

    move-result v1

    if-nez v1, :cond_50

    .line 335
    return v2

    .line 338
    :cond_49
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationInternal(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v1

    if-nez v1, :cond_50

    .line 340
    return v2

    .line 343
    :cond_50
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v1, v0}, Lcom/android/server/pm/FeatureConfig;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 344
    const-string v1, "BLOCKED"

    invoke-static {p3, p4, v1}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_0 .. :try_end_5d} :catchall_5f

    .line 346
    :cond_5d
    return v3

    .line 323
    :cond_5e
    :goto_5e
    return v2

    .line 348
    .end local v0    # "callingAppId":I
    :catchall_5f
    move-exception v0

    .line 351
    throw v0
.end method

.method protected shouldFilterApplicationInternal(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .registers 24
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "callingUid"    # I
    .param p3, "callingSetting"    # Ljava/lang/Object;
    .param p4, "targetPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p5, "targetUserId"    # I

    move-object/from16 v8, p0

    move/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p5

    .line 377
    :try_start_8
    iget-object v0, v8, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/FeatureConfig;->isGloballyEnabled()Z

    move-result v0

    move v12, v0

    .line 378
    .local v12, "featureEnabled":Z
    const/4 v0, 0x0

    if-nez v12, :cond_13

    .line 382
    return v0

    .line 384
    :cond_13
    const/4 v13, 0x1

    if-nez v10, :cond_2f

    .line 385
    const-string v0, "AppsFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No setting found for non system uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return v13

    .line 392
    :cond_2f
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v14, v1

    .line 394
    .local v14, "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    instance-of v1, v10, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v1, :cond_57

    .line 395
    move-object v1, v10

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 396
    .local v1, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->hasSharedUser()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 397
    const/4 v2, 0x0

    .line 398
    .local v2, "callingPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    nop

    .line 399
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSharedUserAppId()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getAllSharedUsers()Ljava/util/Collection;

    move-result-object v4

    .line 398
    invoke-virtual {v8, v3, v4}, Lcom/android/server/pm/AppsFilterBase;->getSharedUserPackages(ILjava/util/Collection;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_55

    .line 402
    .end local v2    # "callingPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_54
    move-object v2, v1

    .line 404
    .end local v1    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v2    # "callingPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_55
    move-object v15, v2

    goto :goto_63

    .line 405
    .end local v2    # "callingPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_57
    const/4 v2, 0x0

    .line 406
    .restart local v2    # "callingPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-object v1, v10

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 407
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v1

    .line 406
    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    move-object v15, v2

    .line 413
    .end local v2    # "callingPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v15, "callingPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_63
    if-eqz v15, :cond_78

    .line 414
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_97

    iget-object v1, v8, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 415
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v1

    if-nez v1, :cond_97

    .line 419
    return v0

    .line 422
    :cond_78
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v13

    .local v1, "i":I
    :goto_7d
    if-ltz v1, :cond_97

    .line 423
    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 424
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v2, :cond_94

    iget-object v3, v8, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v3, v2}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v3

    if-nez v3, :cond_94

    .line 428
    return v0

    .line 422
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_94
    add-int/lit8 v1, v1, -0x1

    goto :goto_7d

    .line 437
    .end local v1    # "i":I
    :cond_97
    if-eqz v15, :cond_9f

    .line 438
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    move v7, v1

    .local v1, "callingAppId":I
    goto :goto_aa

    .line 441
    .end local v1    # "callingAppId":I
    :cond_9f
    invoke-virtual {v14, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    move v7, v1

    .line 443
    .local v7, "callingAppId":I
    :goto_aa
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1
    :try_end_ae
    .catchall {:try_start_8 .. :try_end_ae} :catchall_1b9

    move v6, v1

    .line 447
    .local v6, "targetAppId":I
    if-ne v7, v6, :cond_b2

    .line 451
    return v0

    .line 458
    :cond_b2
    if-eqz v15, :cond_ca

    .line 459
    :try_start_b4
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_e7

    .line 460
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/AppsFilterUtils;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v1
    :try_end_c2
    .catchall {:try_start_b4 .. :try_end_c2} :catchall_c5

    if-eqz v1, :cond_e7

    .line 461
    return v0

    .line 472
    :catchall_c5
    move-exception v0

    move v1, v6

    move v13, v7

    goto/16 :goto_1b7

    .line 464
    :cond_ca
    :try_start_ca
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v1
    :try_end_ce
    .catchall {:try_start_ca .. :try_end_ce} :catchall_1b4

    sub-int/2addr v1, v13

    .local v1, "i":I
    :goto_cf
    if-ltz v1, :cond_e7

    .line 465
    :try_start_d1
    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 466
    .restart local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v2, :cond_e4

    invoke-static {v2}, Lcom/android/server/pm/AppsFilterUtils;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v3
    :try_end_e1
    .catchall {:try_start_d1 .. :try_end_e1} :catchall_c5

    if-eqz v3, :cond_e4

    .line 467
    return v0

    .line 464
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_e4
    add-int/lit8 v1, v1, -0x1

    goto :goto_cf

    .line 475
    .end local v1    # "i":I
    :cond_e7
    nop

    .line 479
    :try_start_e8
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    move-object/from16 v16, v1

    .line 480
    .local v16, "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v16, :cond_f1

    .line 484
    return v13

    .line 486
    :cond_f1
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v1
    :try_end_f5
    .catchall {:try_start_e8 .. :try_end_f5} :catchall_1b9

    if-eqz v1, :cond_f8

    .line 488
    return v0

    .line 495
    :cond_f8
    :try_start_f8
    invoke-virtual {v8, v6}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result v1
    :try_end_fc
    .catchall {:try_start_f8 .. :try_end_fc} :catchall_1ae

    if-eqz v1, :cond_ff

    .line 499
    return v0

    .line 505
    :cond_ff
    nop

    .line 510
    :try_start_100
    invoke-virtual {v8, v7, v6}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaPackage(II)Z

    move-result v1
    :try_end_104
    .catchall {:try_start_100 .. :try_end_104} :catchall_1a8

    if-eqz v1, :cond_107

    .line 514
    return v0

    .line 520
    :cond_107
    nop

    .line 525
    :try_start_108
    iget-object v1, v8, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_10e
    .catchall {:try_start_108 .. :try_end_10e} :catchall_1a3

    if-nez v1, :cond_120

    .line 526
    :try_start_110
    invoke-virtual {v8, v7, v6}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponent(II)Z

    move-result v1
    :try_end_114
    .catchall {:try_start_110 .. :try_end_114} :catchall_11b

    if-eqz v1, :cond_117

    .line 530
    return v0

    .line 526
    :cond_117
    move/from16 v17, v6

    move v13, v7

    goto :goto_137

    .line 543
    :catchall_11b
    move-exception v0

    move v1, v6

    move v13, v7

    goto/16 :goto_1a6

    .line 533
    :cond_120
    :try_start_120
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v2
    :try_end_124
    .catchall {:try_start_120 .. :try_end_124} :catchall_1a3

    move-object/from16 v1, p0

    move-object v3, v15

    move-object v4, v14

    move-object/from16 v5, v16

    move/from16 v17, v6

    .end local v6    # "targetAppId":I
    .local v17, "targetAppId":I
    move v6, v7

    move v13, v7

    .end local v7    # "callingAppId":I
    .local v13, "callingAppId":I
    move/from16 v7, v17

    :try_start_130
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v1
    :try_end_134
    .catchall {:try_start_130 .. :try_end_134} :catchall_19f

    if-eqz v1, :cond_137

    .line 539
    return v0

    .line 546
    :cond_137
    :goto_137
    nop

    .line 552
    move/from16 v1, v17

    .end local v17    # "targetAppId":I
    .local v1, "targetAppId":I
    :try_start_13a
    invoke-static {v11, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 553
    .local v2, "targetUid":I
    invoke-virtual {v8, v9, v2}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    move-result v3
    :try_end_142
    .catchall {:try_start_13a .. :try_end_142} :catchall_19c

    if-eqz v3, :cond_145

    .line 557
    return v0

    .line 563
    .end local v2    # "targetUid":I
    :cond_145
    nop

    .line 569
    :try_start_146
    invoke-static {v11, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 570
    .restart local v2    # "targetUid":I
    invoke-virtual {v8, v9, v2}, Lcom/android/server/pm/AppsFilterBase;->isRetainedImplicitlyQueryable(II)Z

    move-result v3
    :try_end_14e
    .catchall {:try_start_146 .. :try_end_14e} :catchall_199

    if-eqz v3, :cond_151

    .line 575
    return v0

    .line 581
    .end local v2    # "targetUid":I
    :cond_151
    nop

    .line 587
    :try_start_152
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, "targetName":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17a

    .line 589
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 590
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_161
    if-ge v4, v3, :cond_179

    .line 591
    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 592
    .local v5, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v6, v8, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 593
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 592
    invoke-virtual {v6, v2, v7}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_176

    .line 599
    return v0

    .line 590
    .end local v5    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_176
    add-int/lit8 v4, v4, 0x1

    goto :goto_161

    .line 602
    .end local v3    # "size":I
    .end local v4    # "index":I
    :cond_179
    goto :goto_187

    .line 603
    :cond_17a
    iget-object v3, v8, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 604
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 603
    invoke-virtual {v3, v2, v4}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_184
    .catchall {:try_start_152 .. :try_end_184} :catchall_196

    if-eqz v3, :cond_187

    .line 608
    return v0

    .line 615
    .end local v2    # "targetName":Ljava/lang/String;
    :cond_187
    :goto_187
    nop

    .line 621
    :try_start_188
    invoke-virtual {v8, v13, v1}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesLibrary(II)Z

    move-result v2
    :try_end_18c
    .catchall {:try_start_188 .. :try_end_18c} :catchall_192

    if-eqz v2, :cond_18f

    .line 625
    return v0

    .line 631
    :cond_18f
    nop

    .line 633
    const/4 v0, 0x1

    return v0

    .line 628
    :catchall_192
    move-exception v0

    move-object v2, v0

    .line 631
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .end local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .end local p2    # "callingUid":I
    .end local p3    # "callingSetting":Ljava/lang/Object;
    .end local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "targetUserId":I
    :try_start_195
    throw v2

    .line 612
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .restart local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingSetting":Ljava/lang/Object;
    .restart local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "targetUserId":I
    :catchall_196
    move-exception v0

    .line 615
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .end local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .end local p2    # "callingUid":I
    .end local p3    # "callingSetting":Ljava/lang/Object;
    .end local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "targetUserId":I
    throw v0

    .line 578
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .restart local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingSetting":Ljava/lang/Object;
    .restart local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "targetUserId":I
    :catchall_199
    move-exception v0

    .line 581
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .end local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .end local p2    # "callingUid":I
    .end local p3    # "callingSetting":Ljava/lang/Object;
    .end local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "targetUserId":I
    throw v0

    .line 560
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .restart local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingSetting":Ljava/lang/Object;
    .restart local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "targetUserId":I
    :catchall_19c
    move-exception v0

    .line 563
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .end local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .end local p2    # "callingUid":I
    .end local p3    # "callingSetting":Ljava/lang/Object;
    .end local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "targetUserId":I
    throw v0

    .line 543
    .end local v1    # "targetAppId":I
    .restart local v17    # "targetAppId":I
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .restart local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingSetting":Ljava/lang/Object;
    .restart local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "targetUserId":I
    :catchall_19f
    move-exception v0

    move/from16 v1, v17

    .end local v17    # "targetAppId":I
    .restart local v1    # "targetAppId":I
    goto :goto_1a6

    .end local v1    # "targetAppId":I
    .end local v13    # "callingAppId":I
    .restart local v6    # "targetAppId":I
    .restart local v7    # "callingAppId":I
    :catchall_1a3
    move-exception v0

    move v1, v6

    move v13, v7

    .line 546
    .end local v6    # "targetAppId":I
    .end local v7    # "callingAppId":I
    .restart local v1    # "targetAppId":I
    .restart local v13    # "callingAppId":I
    :goto_1a6
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .end local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .end local p2    # "callingUid":I
    .end local p3    # "callingSetting":Ljava/lang/Object;
    .end local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "targetUserId":I
    throw v0

    .line 517
    .end local v1    # "targetAppId":I
    .end local v13    # "callingAppId":I
    .restart local v6    # "targetAppId":I
    .restart local v7    # "callingAppId":I
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .restart local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingSetting":Ljava/lang/Object;
    .restart local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "targetUserId":I
    :catchall_1a8
    move-exception v0

    move v1, v6

    move v13, v7

    move-object v2, v0

    .line 520
    .end local v6    # "targetAppId":I
    .end local v7    # "callingAppId":I
    .restart local v1    # "targetAppId":I
    .restart local v13    # "callingAppId":I
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .end local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .end local p2    # "callingUid":I
    .end local p3    # "callingSetting":Ljava/lang/Object;
    .end local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "targetUserId":I
    throw v2

    .line 502
    .end local v1    # "targetAppId":I
    .end local v13    # "callingAppId":I
    .restart local v6    # "targetAppId":I
    .restart local v7    # "callingAppId":I
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .restart local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingSetting":Ljava/lang/Object;
    .restart local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "targetUserId":I
    :catchall_1ae
    move-exception v0

    move v1, v6

    move v13, v7

    move-object v2, v0

    .line 505
    .end local v6    # "targetAppId":I
    .end local v7    # "callingAppId":I
    .restart local v1    # "targetAppId":I
    .restart local v13    # "callingAppId":I
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .end local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .end local p2    # "callingUid":I
    .end local p3    # "callingSetting":Ljava/lang/Object;
    .end local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "targetUserId":I
    throw v2

    .line 472
    .end local v1    # "targetAppId":I
    .end local v13    # "callingAppId":I
    .end local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v6    # "targetAppId":I
    .restart local v7    # "callingAppId":I
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .restart local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingSetting":Ljava/lang/Object;
    .restart local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "targetUserId":I
    :catchall_1b4
    move-exception v0

    move v1, v6

    move v13, v7

    .line 475
    .end local v6    # "targetAppId":I
    .end local v7    # "callingAppId":I
    .restart local v1    # "targetAppId":I
    .restart local v13    # "callingAppId":I
    :goto_1b7
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .end local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .end local p2    # "callingUid":I
    .end local p3    # "callingSetting":Ljava/lang/Object;
    .end local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "targetUserId":I
    throw v0
    :try_end_1b9
    .catchall {:try_start_195 .. :try_end_1b9} :catchall_1b9

    .line 635
    .end local v1    # "targetAppId":I
    .end local v12    # "featureEnabled":Z
    .end local v13    # "callingAppId":I
    .end local v14    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v15    # "callingPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .restart local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingSetting":Ljava/lang/Object;
    .restart local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "targetUserId":I
    :catchall_1b9
    move-exception v0

    .line 638
    throw v0
.end method

.method protected shouldFilterApplicationUsingCache(III)Z
    .registers 11
    .param p1, "callingUid"    # I
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 355
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    .line 356
    .local v0, "callingIndex":I
    const/4 v1, 0x1

    const-string v2, "AppsFilter"

    if-gez v0, :cond_22

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered calling uid with no cached rules: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return v1

    .line 361
    :cond_22
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 362
    .local v3, "targetUid":I
    iget-object v4, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v4

    .line 363
    .local v4, "targetIndex":I
    if-gez v4, :cond_4f

    .line 364
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encountered calling -> target with no cached rules: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return v1

    .line 368
    :cond_4f
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1, v0, v4}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAt(II)Z

    move-result v1

    return v1
.end method
