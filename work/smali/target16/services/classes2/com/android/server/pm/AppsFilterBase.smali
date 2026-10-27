.class public abstract Lcom/android/server/pm/AppsFilterBase;
.super Ljava/lang/Object;
.source "AppsFilterBase.java"

# interfaces
.implements Lcom/android/server/pm/AppsFilterSnapshot;


# instance fields
.field public volatile mCacheEnabled:Z

.field public volatile mCacheReady:Z

.field public final mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

.field public mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

.field public mForceQueryableByDevicePackageNames:[Ljava/lang/String;

.field public mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mHandler:Landroid/os/Handler;

.field public mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

.field public volatile mNeedToUpdateCacheForImplicitAccess:Z

.field public mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

.field public mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

.field public mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mQueryableViaUsesPermissionSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

.field public mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

.field public mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mSystemAppsQueryable:Z

.field public mSystemSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method public static synthetic $r8$lambda$EzD-3Qgs3agQ0FfI--Dk-PGWLFc(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 13

    .line 717
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_7d

    .line 719
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 720
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 722
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_1c
    if-nez v4, :cond_39

    if-ge v5, v2, :cond_39

    .line 723
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 724
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 723
    invoke-interface {p2, v4, v6, v7, v8}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_39
    if-nez v4, :cond_52

    .line 727
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[app id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " not installed]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_75

    .line 729
    :cond_52
    array-length p1, v4

    const/4 p2, 0x1

    if-ne p1, p2, :cond_59

    aget-object p1, v4, v3

    goto :goto_75

    .line 730
    :cond_59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-static {p2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 732
    :goto_75
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1

    :cond_7d
    return-object v0
.end method

.method public constructor <init>()V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 198
    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mNeedToUpdateCacheForImplicitAccess:Z

    .line 204
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 8

    if-eqz p2, :cond_48

    .line 831
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_48

    if-eqz p1, :cond_10

    .line 832
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 833
    :cond_10
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p3

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_21
    :goto_21
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_48

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    if-eqz p1, :cond_33

    .line 835
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 836
    :cond_33
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    if-nez p5, :cond_40

    goto :goto_44

    .line 837
    :cond_40
    invoke-interface {p5, p3}, Lcom/android/server/pm/AppsFilterBase$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_44
    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_21

    :cond_48
    return-void
.end method

.method public static dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 12

    const/4 v0, 0x0

    move v6, v0

    .line 803
    :goto_2
    invoke-virtual {p2}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_4a

    .line 804
    invoke-virtual {p2, v6}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 805
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 808
    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedSparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2

    if-nez p4, :cond_22

    .line 810
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_20
    move-object v3, v0

    goto :goto_27

    .line 811
    :cond_22
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilterBase$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :goto_27
    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    .line 807
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    goto :goto_47

    .line 815
    :cond_2f
    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedSparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2

    if-nez p4, :cond_3f

    .line 817
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_39
    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v3, v0

    move-object v0, p0

    goto :goto_44

    .line 818
    :cond_3f
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilterBase$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 814
    :goto_44
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    :goto_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4a
    return-void
.end method

.method public static isQueryableBySdkSandbox(II)Z
    .registers 2

    .line 322
    invoke-static {p0}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p0

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    .registers 5

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_f

    .line 703
    const-string/jumbo p0, "system"

    :cond_f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 702
    const-string p1, "AppsFilter"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public canQueryPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 6

    .line 682
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x1

    if-ge v0, v1, :cond_e

    return v2

    .line 688
    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {p0, p1}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    .line 692
    :cond_17
    invoke-static {p1}, Lcom/android/server/pm/AppsFilterUtils;->requestsQueryAllPackages(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p0

    if-eqz p0, :cond_1e

    return v2

    .line 696
    :cond_1e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_33

    .line 697
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    return v2

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 10

    .line 755
    const-string v0, "  queries via forceQueryable:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v2

    const-string v3, "forceQueryable"

    const-string v4, "  "

    move-object v0, p1

    move-object v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    return-void
.end method

.method public dumpQueries(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[ILcom/android/internal/util/function/QuadFunction;)V
    .registers 8

    .line 715
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 716
    new-instance v1, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p4, p5}, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;)V

    .line 736
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 737
    const-string p5, "Queries:"

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p3}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    .line 739
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {p3}, Lcom/android/server/pm/FeatureConfig;->isGloballyEnabled()Z

    move-result p3

    if-nez p3, :cond_23

    .line 740
    const-string p0, "  DISABLED"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 745
    :cond_23
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "  system apps queryable: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p5, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemAppsQueryable:Z

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 747
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 748
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 749
    invoke-virtual {p0, p1, p2, p4, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 750
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    return-void
.end method

.method public dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 5

    .line 768
    const-string v0, "  queries via component:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v0, "    "

    invoke-static {p1, p2, p0, v0, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    return-void
.end method

.method public dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 12

    .line 774
    const-string v0, "  queryable via interaction:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    array-length v0, p3

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_4d

    aget v2, p3, v1

    .line 776
    const-string v3, "    User "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-nez p2, :cond_23

    move-object v4, v3

    goto :goto_2f

    .line 778
    :cond_23
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2f
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 777
    const-string v6, "      "

    invoke-static {p1, v4, v5, v6, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    if-nez p2, :cond_39

    goto :goto_45

    .line 781
    :cond_39
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_45
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 780
    invoke-static {p1, v3, v2, v6, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4d
    return-void
.end method

.method public dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 5

    .line 762
    const-string v0, "  queries via package name:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v0, "    "

    invoke-static {p1, p2, p0, v0, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    return-void
.end method

.method public dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 5

    .line 788
    const-string v0, "  queryable via uses-library:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 789
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v0, "    "

    invoke-static {p1, p2, p0, v0, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    return-void
.end method

.method public getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;
    .registers 21

    move-object/from16 v0, p3

    .line 271
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_10

    return-object v8

    .line 275
    :cond_10
    new-instance v1, Landroid/util/SparseArray;

    array-length v3, v0

    invoke-direct {v1, v3}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v9, 0x0

    move v10, v9

    .line 276
    :goto_18
    array-length v3, v0

    if-ge v10, v3, :cond_83

    .line 277
    aget v7, v0, v10

    .line 278
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    new-array v12, v11, [I

    .line 281
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v13, v3

    move-object v15, v8

    move v14, v9

    :goto_2c
    if-ltz v13, :cond_75

    move-object/from16 v3, p4

    .line 282
    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 283
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    const/16 v6, 0x2710

    if-ge v4, v6, :cond_41

    :goto_3f
    move v4, v9

    goto :goto_6e

    .line 287
    :cond_41
    invoke-static {v12, v9, v14, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v6

    if-ltz v6, :cond_48

    goto :goto_3f

    :cond_48
    move v8, v4

    .line 291
    invoke-static {v7, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    move-object/from16 v3, p1

    move v9, v6

    move-object/from16 v6, p2

    .line 292
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v4

    if-nez v4, :cond_6d

    if-nez v15, :cond_5c

    .line 295
    new-array v15, v11, [I

    :cond_5c
    not-int v2, v9

    sub-int v3, v14, v2

    const/4 v4, 0x0

    .line 298
    invoke-static {v12, v2, v15, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    aput v8, v12, v2

    add-int/lit8 v2, v2, 0x1

    .line 300
    invoke-static {v15, v4, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v4, 0x0

    :goto_6e
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v2, p0

    move v9, v4

    const/4 v8, 0x0

    goto :goto_2c

    :cond_75
    move v4, v9

    .line 304
    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p0

    const/4 v8, 0x0

    goto :goto_18

    :cond_83
    return-object v1
.end method

.method public getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "[I",
            "Lcom/android/server/utils/WatchedArrayMap;",
            ")",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 318
    invoke-virtual {p4}, Lcom/android/server/utils/WatchedArrayMap;->untrackedStorage()Landroid/util/ArrayMap;

    move-result-object p4

    .line 317
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public isForceQueryable(I)Z
    .registers 2

    .line 207
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isImplicitlyQueryable(II)Z
    .registers 3

    .line 219
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQueryableViaComponent(II)Z
    .registers 3

    .line 215
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;II)Z
    .registers 7

    const/4 p1, 0x1

    if-eqz p2, :cond_16

    .line 244
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p3

    if-eqz p3, :cond_35

    .line 245
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {p2, p4, p0}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result p0

    if-eqz p0, :cond_35

    return p1

    .line 250
    :cond_16
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p2

    sub-int/2addr p2, p1

    :goto_1b
    if-ltz p2, :cond_35

    .line 252
    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p5

    if-eqz p5, :cond_32

    .line 253
    iget-object p6, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {p5, p4, p6}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result p5

    if-eqz p5, :cond_32

    return p1

    :cond_32
    add-int/lit8 p2, p2, -0x1

    goto :goto_1b

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public isQueryableViaPackage(II)Z
    .registers 3

    .line 211
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQueryableViaUsesLibrary(II)Z
    .registers 3

    .line 227
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQueryableViaUsesPermission(II)Z
    .registers 3

    .line 231
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRetainedImplicitlyQueryable(II)Z
    .registers 3

    .line 223
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .registers 16

    .line 337
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-lt v0, v1, :cond_71

    .line 339
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    if-lt v3, v1, :cond_71

    .line 340
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    if-ne v0, v1, :cond_16

    goto :goto_71

    .line 342
    :cond_16
    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3d

    .line 343
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    .line 344
    invoke-static {p5, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    .line 347
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result p3

    if-nez p3, :cond_3c

    .line 348
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    move-result p0

    if-nez p0, :cond_3c

    .line 349
    invoke-static {p2, p1}, Lcom/android/server/pm/AppsFilterBase;->isQueryableBySdkSandbox(II)Z

    move-result p0

    if-nez p0, :cond_3c

    return v3

    :cond_3c
    return v2

    .line 352
    :cond_3d
    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-eqz v1, :cond_54

    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    if-eqz v1, :cond_54

    .line 354
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    .line 353
    invoke-virtual {p0, p2, p1, p5}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationUsingCache(III)Z

    move-result p1

    if-nez p1, :cond_50

    return v2

    :cond_50
    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    goto :goto_63

    .line 359
    :cond_54
    move-object v5, p1

    check-cast v5, Lcom/android/server/pm/Computer;

    move-object v4, p0

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationInternal(Lcom/android/server/pm/Computer;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result p0

    if-nez p0, :cond_63

    return v2

    .line 364
    :cond_63
    :goto_63
    iget-object p0, v4, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {p0, v0}, Lcom/android/server/pm/FeatureConfig;->isLoggingEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_70

    .line 365
    const-string p0, "BLOCKED"

    invoke-static {v7, v8, p0}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V

    :cond_70
    return v3

    :cond_71
    :goto_71
    return v2
.end method

.method public shouldFilterApplicationInternal(Lcom/android/server/pm/Computer;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .registers 15

    .line 398
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/FeatureConfig;->isGloballyEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x1

    if-nez p3, :cond_24

    .line 406
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No setting found for non system uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppsFilter"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 413
    :cond_24
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 414
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    if-eq v7, v8, :cond_15d

    const/16 v2, 0x2710

    if-lt v7, v2, :cond_15d

    if-ge v8, v2, :cond_36

    goto/16 :goto_15d

    .line 431
    :cond_36
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 433
    instance-of v2, p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v3, 0x0

    if-eqz v2, :cond_5d

    .line 434
    check-cast p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 435
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 438
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result p3

    invoke-interface {p1, p3}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object p3

    if-eqz p3, :cond_5b

    .line 440
    invoke-interface {p3}, Lcom/android/server/pm/pkg/SharedUserApi;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p3

    invoke-virtual {v5, p3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_5b

    :cond_5a
    move-object v3, p3

    :cond_5b
    :goto_5b
    move-object v4, v3

    goto :goto_67

    .line 447
    :cond_5d
    check-cast p3, Lcom/android/server/pm/SharedUserSetting;

    .line 448
    invoke-virtual {p3}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p3

    .line 447
    invoke-virtual {v5, p3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_5b

    :goto_67
    if-eqz v4, :cond_7c

    .line 455
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p3

    if-eqz p3, :cond_9b

    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 456
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p3

    if-nez p3, :cond_9b

    return v1

    .line 463
    :cond_7c
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_81
    if-ltz p3, :cond_9b

    .line 464
    invoke-virtual {v5, p3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-eqz v2, :cond_98

    .line 465
    iget-object v3, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v3, v2}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_98

    return v1

    :cond_98
    add-int/lit8 p3, p3, -0x1

    goto :goto_81

    :cond_9b
    if-eqz v4, :cond_ae

    .line 479
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p3

    if-eqz p3, :cond_cb

    .line 480
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/pm/AppsFilterUtils;->requestsQueryAllPackages(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p3

    if-eqz p3, :cond_cb

    return v1

    .line 484
    :cond_ae
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_b3
    if-ltz p3, :cond_cb

    .line 485
    invoke-virtual {v5, p3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-eqz v2, :cond_c8

    .line 486
    invoke-static {v2}, Lcom/android/server/pm/AppsFilterUtils;->requestsQueryAllPackages(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_c8

    return v1

    :cond_c8
    add-int/lit8 p3, p3, -0x1

    goto :goto_b3

    .line 499
    :cond_cb
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    if-nez v6, :cond_d2

    return v0

    .line 506
    :cond_d2
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result p3

    if-eqz p3, :cond_d9

    return v1

    .line 515
    :cond_d9
    invoke-virtual {p0, v8}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result p3

    if-eqz p3, :cond_e0

    return v1

    .line 530
    :cond_e0
    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaPackage(II)Z

    move-result p3

    if-eqz p3, :cond_e7

    return v1

    .line 545
    :cond_e7
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_f8

    .line 546
    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponent(II)Z

    move-result p1

    if-eqz p1, :cond_f6

    return v1

    :cond_f6
    move-object v2, p0

    goto :goto_104

    .line 553
    :cond_f8
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v3

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;II)Z

    move-result p0

    if-eqz p0, :cond_104

    return v1

    .line 572
    :cond_104
    :goto_104
    invoke-static {p5, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 573
    invoke-virtual {v2, p2, p0}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    move-result p0

    if-eqz p0, :cond_10f

    return v1

    .line 589
    :cond_10f
    invoke-static {p5, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 590
    invoke-virtual {v2, p2, p0}, Lcom/android/server/pm/AppsFilterBase;->isRetainedImplicitlyQueryable(II)Z

    move-result p0

    if-eqz p0, :cond_11a

    return v1

    .line 607
    :cond_11a
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 608
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_141

    .line 609
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result p1

    move p2, v1

    :goto_129
    if-ge p2, p1, :cond_14e

    .line 611
    invoke-virtual {v5, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 612
    iget-object p4, v2, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 613
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 612
    invoke-virtual {p4, p0, p3}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_13e

    return v1

    :cond_13e
    add-int/lit8 p2, p2, 0x1

    goto :goto_129

    .line 623
    :cond_141
    iget-object p1, v2, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 624
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 623
    invoke-virtual {p1, p0, p2}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14e

    return v1

    .line 641
    :cond_14e
    invoke-virtual {v2, v7, v8}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesLibrary(II)Z

    move-result p0

    if-eqz p0, :cond_155

    return v1

    .line 657
    :cond_155
    invoke-virtual {v2, v7, v8}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesPermission(II)Z

    move-result p0

    if-eqz p0, :cond_15c

    return v1

    :cond_15c
    return v0

    :cond_15d
    :goto_15d
    return v1
.end method

.method public shouldFilterApplicationUsingCache(III)Z
    .registers 7

    .line 376
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    .line 377
    const-string v2, "AppsFilter"

    if-gez v0, :cond_20

    .line 378
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Encountered calling uid with no cached rules: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 382
    :cond_20
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 383
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {p3, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result p3

    if-gez p3, :cond_49

    .line 385
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Encountered calling -> target with no cached rules: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 389
    :cond_49
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {p0, v0, p3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAt(II)Z

    move-result p0

    return p0
.end method
